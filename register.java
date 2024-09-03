package controler;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.book;
import model.regstration;
import model.student;

@WebServlet(name = "register", urlPatterns = "/register")
public class register extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        regstration reg = new regstration(session);
        student s = null;

        try {
            // Handle Registration
            if (request.getParameter("register") != null) {
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String phone = request.getParameter("phone");
                String pw = request.getParameter("pw");
                String cp = request.getParameter("cp");

                if (pw.equals(cp)) {
                    String status = reg.register(name, phone, email, pw);

                    if (status.equals("existed")) {
                        request.setAttribute("status", "Existed record");
                        RequestDispatcher rd1 = request.getRequestDispatcher("registration.jsp");
                        rd1.forward(request, response);

                    } else if (status.equals("success")) {
                        request.setAttribute("status", "Successfully Registered " + name);
                        RequestDispatcher rd1 = request.getRequestDispatcher("login.jsp");
                        rd1.forward(request, response);

                    } else if (status.equals("failure")) {
                        request.setAttribute("status", "Registration failed");
                        RequestDispatcher rd1 = request.getRequestDispatcher("registration.jsp");
                        rd1.forward(request, response);
                    }
                } else {
                    request.setAttribute("status", "Passwords do not match");
                    RequestDispatcher rd1 = request.getRequestDispatcher("registration.jsp");
                    rd1.forward(request, response);
                }

            // Handle Password Change
            } else if (request.getParameter("change") != null) {
                String email = request.getParameter("email");
                String phone1 = request.getParameter("phone");
                String npss = request.getParameter("npass");
                String cnpass = request.getParameter("cnpass");

                if (npss.equals(cnpass)) {
                    s = reg.getstudent(email, phone1);
                    if (s != null) {
                        s.setPassward(npss); // Corrected typo
                        boolean res = reg.updatestudent(s);
                        if (res) {
                            request.setAttribute("status", "Password Updated Successfully");
                            RequestDispatcher rs = request.getRequestDispatcher("forget.jsp");
                            rs.forward(request, response);
                        } else {
                            request.setAttribute("status", "Password Update Failed");
                            RequestDispatcher rs = request.getRequestDispatcher("forget.jsp");
                            rs.forward(request, response);
                        }
                    } else {
                        request.setAttribute("status", "Invalid Email or Phone Number");
                        RequestDispatcher rs = request.getRequestDispatcher("forget.jsp");
                        rs.forward(request, response);
                    }
                } else {
                    request.setAttribute("status", "Passwords do not match");
                    RequestDispatcher rs = request.getRequestDispatcher("forget.jsp");
                    rs.forward(request, response);
                }

            // Handle Login
            } else if (request.getParameter("Login") != null) {
                // Concatenate the OTP values from the individual input fields
                String otp1 = request.getParameter("otp1");
                String otp2 = request.getParameter("otp2");
                String otp3 = request.getParameter("otp3");
                String otp4 = request.getParameter("otp4");

                String userOtp = otp1 + otp2 + otp3 + otp4;

                String dbOtpStatus = reg.validOtp(userOtp);

                if ("success".equals(dbOtpStatus)) {
                    RequestDispatcher rd1 = request.getRequestDispatcher("home.jsp");
                    rd1.forward(request, response);
                } else {
                    request.setAttribute("status", "Login failed");
                    RequestDispatcher rd1 = request.getRequestDispatcher("login.jsp");
                    rd1.forward(request, response);
                }

            // Handle Logout
            } else if (request.getParameter("logout") != null) {
                session.invalidate();
                RequestDispatcher rd1 = request.getRequestDispatcher("home.jsp");
                rd1.forward(request, response);

            // Handle Account Update
            } else if (request.getParameter("submit") != null) {
                String name = request.getParameter("name");
                String phone = request.getParameter("pno");
                String email = request.getParameter("email");
                s = reg.getInfo();
                if (s != null) {
                    s.setName(name);
                    s.setPhone(phone);
                    s.setMail(email);
                    boolean updateStatus = reg.updatestudent(s);
                    if (updateStatus) {
                        request.setAttribute("status", "Account Updated Successfully");
                        RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
                        rs.forward(request, response);
                    } else {
                        request.setAttribute("status", "Failed to Update");
                        RequestDispatcher rs = request.getRequestDispatcher("Edit.jsp");
                        rs.forward(request, response);
                    }
                }

            // Handle Account Deletion
            } else if (request.getParameter("delete") != null) {
                String name1 = request.getParameter("name");
                s =new student();
                s.setName(name1);

                boolean deleteResult = reg.deleteCustomer(s);
                if (deleteResult) {
                    request.setAttribute("status", "Account deleted successfully.");
                } else {
                    request.setAttribute("status", "Account deletion failed. Please try again.");
                }
                RequestDispatcher rd = request.getRequestDispatcher("deleate.jsp");
                rd.forward(request, response);

            // Handle OTP Generation
            } else if (request.getParameter("generate") != null) {
                String phone = request.getParameter("phone");
                String otp = reg.getotp();

                String status = reg.generateOtp(phone, otp);
                request.setAttribute("otp", otp);
                if (status.equals("success")) {
                    request.setAttribute("status", "OTP generated successfully");
                } else {
                    request.setAttribute("status", "OTP generation failed");
                }
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);

            // Handle Event Booking
            } else if (request.getParameter("book") != null) {
                try {
                    String name = request.getParameter("name");
                    String fun = request.getParameter("fun");
                    String date = request.getParameter("date");
                    String strength = request.getParameter("strength");

                    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                    Date utilDate = formatter.parse(date);
                    java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());

                    int st = Integer.parseInt(strength);

                    book b = new book();
                    b.setName(name);
                    b.setFunction(fun);
                    b.setDate(sqlDate);
                    b.setStrength(st);

                    boolean res = reg.insertBook(b);
                    if (res) {
                        request.setAttribute("status", "Hall Booked successfully (After Some time You Got Conformation msg!)");
                    } else {
                        request.setAttribute("status", "Hall Not Booked (Your Data Not Safiseant)");
                    }

                    RequestDispatcher rd = request.getRequestDispatcher("Event.jsp");
                    rd.forward(request, response);

                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Register Servlet for handling various user actions";
    }
}
