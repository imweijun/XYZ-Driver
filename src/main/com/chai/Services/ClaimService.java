package chai.Services;

import chai.dao.ClaimDAO;
import chai.models.Claim;

import java.util.List;

public class ClaimService {

    private ClaimDAO claimDAO;

    public ClaimService(){
        this.claimDAO = new ClaimDAO();
    }

    public List<Claim> getAllClaims(){
        return this.claimDAO.getAll();
    }
}
