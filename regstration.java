package model;

import java.sql.Connection;



import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import jakarta.servlet.http.HttpSession;

public class regstration {
    private Connection con;
    private HttpSession session;

    public regstration(HttpSession session) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank1", "root", "Suraj@123");
            this.session = session;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String register(String name, String phone, String email, String password) {
        String status = "";
        try (Statement st = con.createStatement();
             ResultSet rs = st.executeQuery("SELECT * FROM student WHERE phone='" + phone + "' OR mail='" + email + "';")) {

            if (rs.next()) {
                status = "existed";
            } else {
                String query = "INSERT INTO student (srno, name, mail, phone, passward,date) VALUES (0, ?, ?, ?, ?, now())";
                try (PreparedStatement ps = con.prepareStatement(query)) {
                    ps.setString(1, name);
                    ps.setString(2, email);
                    ps.setString(3, phone);
                    ps.setString(4, password);
                    int rowsAffected = ps.executeUpdate();
                    status = (rowsAffected > 0) ? "success" : "failure";
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    
    public boolean insertBook(book b) {
        String q = "INSERT INTO bookevent(NAME, Func, Date, Strength) VALUES(?, ?, ?, ?)";
        int res = 0;
        try {
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1, b.getName());
            ps.setString(2, b.getFunction());
            ps.setDate(3, b.getDate()); // Insert sql.Date
            ps.setInt(4, b.getStrength());

            res = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res > 0;
    }


//    public String login(String phone, int otp) {
//        String status = "failure";
//        try (Statement st = con.createStatement();
//             ResultSet rs = st.executeQuery("SELECT * FROM student WHERE mail='" + phone + "' AND otp= ?")) {
//
//            if (rs.next()) {
//                session.setAttribute("name", rs.getString("name"));
//                session.setAttribute("email", rs.getString("mail"));
//                session.setAttribute("id", rs.getString("srno"));
//                status = "success";
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return status;
//    }

    public student getInfo() {
        student s = null;
        try (Statement st = con.createStatement();
             ResultSet rs = st.executeQuery("SELECT * FROM student WHERE srno='" + session.getAttribute("id") + "';")) {

            if (rs.next()) {
                s = new student();
                s.setName(rs.getString("name"));
                s.setPhone(rs.getString("phone"));
                s.setMail(rs.getString("mail"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return s;
    }

    public boolean updatestudent(student s) {
        String query = "UPDATE student SET passward=? WHERE mail=? AND phone=?";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, s.getPassward());
            ps.setString(2, s.getMail());
            ps.setString(3, s.getPhone());
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public student getstudent(String mail, String phone) {
        student s = null;
        String query = "SELECT * FROM student WHERE mail=? AND phone=?";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, mail);
            ps.setString(2, phone);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    s = new student();
                    s.setName(rs.getString("name"));
                    s.setMail(rs.getString("mail"));
                    s.setPhone(rs.getString("phone"));
                    s.setPassward(rs.getString("passward"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return s;
    }
    public ArrayList<student> getUserinfo(String id) {
    	Statement st = null;
    	ResultSet rs = null;
    	ArrayList<student> al = new ArrayList<student>();
    	try {
    	st = con.createStatement();
    	String qry = "select * from  student where srno = '" + id + "';";
    	rs = st.executeQuery(qry);
    	while (rs.next()) {
    	student p = new student();
    	p.setId(rs.getString("srno"));
    	p.setName(rs.getString("name"));
    	p.setMail(rs.getString("mail"));
    	p.setPhone(rs.getString("phone"));
    	p.setDate(rs.getString("date"));
    	al.add(p);
    	}
    	} catch (Exception e) {
    	e.printStackTrace();
    	}
    	return al;
    	}
    public ArrayList<student> getuserdetail() {
    	Statement st = null;
    	ResultSet rs = null;
    	ArrayList<student> al = new ArrayList<student>();
    	try {
    	st = con.createStatement();
    	String qry = "select *,date_format(date,%b,%d,%y) as date1  from student where srno not in(23);";
    	rs = st.executeQuery(qry);
    	while (rs.next()) {
    	student p = new student();
    	p.setId(rs.getString("srno"));
    	p.setName(rs.getString("name"));
    	p.setMail(rs.getString("mail"));
    	p.setPhone(rs.getString("phone"));
    	p.setDate(rs.getString("date1"));
    	al.add(p);
    	}
    	} catch (Exception e) {
    	e.printStackTrace();
    	}
    	return al;
    	}
    
    public boolean deleteCustomer(student s) {
        String query = "DELETE FROM student WHERE name = ?";
        
        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, s.getName());
            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
//    public String delete(int id) {
//        int count = 0;
//        Statement st = null;
//        String status = "";
//        try {
//            st = con.createStatement();
//            count = st.executeUpdate("delete from student where "
//                    + "srno='" + id + "'");
//            if (count > 0) {
//                status = "success";
//            } else {
//                status = "failure";
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//        return status;
//    }
    public String generateOtp(String phone, String otp) {
        String status = "";
        try {
            PreparedStatement pst = con.prepareStatement("update  student set otp=? where phone=?");
            pst.setString(1, otp);
            pst.setString(2,phone);
            
            int rowsAffected = pst.executeUpdate();
            status = (rowsAffected > 0) ? "success" : "failure";
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }
    public String validOtp(String otp) {
        String status = "failure";
        try {
            PreparedStatement pst = con.prepareStatement("SELECT * FROM student WHERE otp = ?");
            pst.setString(1, otp); // Use the OTP passed to the method
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                session.setAttribute("name", rs.getString("name"));
                session.setAttribute("email", rs.getString("mail"));
                session.setAttribute("id", rs.getString("srno"));
                session.setAttribute("otp", rs.getString("otp"));
                status = "success";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

      
    
    public String getotp() {
        int otp = (int) Math.floor(Math.random() * 9000 + 1000);
        return String.valueOf(otp);
    }

     
        
}
