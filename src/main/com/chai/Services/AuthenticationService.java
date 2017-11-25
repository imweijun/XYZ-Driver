package chai.Services;

import chai.dao.UserDAO;
import chai.models.User;

public class AuthenticationService {

    private UserDAO userDAO;


    public AuthenticationService(){
        userDAO = new UserDAO();
    }

    public User logIn(String userId, String enteredPassword){
        User retrievedUser = this.userDAO.getUser(userId);

        System.out.println("Checking 1");
        if(retrievedUser == null){
            System.out.println("Checking if retrieved user is null");
            return null;
        }

        System.out.println("Checking 2");
        if(!retrievedUser.getPassword().equals(enteredPassword)){
            System.out.println("Checking if password dont equal");
            return null;
        }

        return retrievedUser;
    }
}
