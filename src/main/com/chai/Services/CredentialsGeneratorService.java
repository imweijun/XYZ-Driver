package chai.Services;

import java.util.UUID;

public class CredentialsGeneratorService {



    private String generateRandomString(){
        return UUID.randomUUID().toString().replace("-", "");
    }

    public String generateRandomPassword(){
        return generateRandomString();
    }

    public String generateUserId(String name){
        return name + "-" +(generateRandomString());
    }

}
