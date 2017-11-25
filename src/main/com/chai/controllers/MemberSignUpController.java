package chai.controllers;

import chai.Services.AuthenticationService;
import chai.Services.CredentialsGeneratorService;
import chai.Services.DateService;
import chai.Services.RegistrationService;
import chai.dao.UserDAO;
import chai.models.Member;
import chai.models.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MemberSignUpController extends HttpServlet {

    // Register new member, generate their credentials and redirect them to signup-page-success page
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String name          = request.getParameter("name");
        String dobString     = request.getParameter("dob");
        String address       = request.getParameter("address");

        String userId        = CredentialsGeneratorService.generateUserId(name);
        DateService dateService = new DateService("yyyy-MM-dd");
        Member newMember     = null;

        try {
            newMember     = new Member(userId,
                    name,
                    address,
                    dateService.stringToDate(dobString),
                    new Date(),
                    "APPLIED",
                    0);

        } catch (ParseException e) {
            e.printStackTrace();
        }

        RegistrationService registrationService = new RegistrationService();
        registrationService.registerMember(newMember);


    }

}
