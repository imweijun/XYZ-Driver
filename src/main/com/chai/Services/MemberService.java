package chai.Services;

import chai.dao.MemberDAO;
import chai.models.Member;

import java.util.List;

public class MemberService {

    private MemberDAO memberDAO;

    public MemberService(){
        this.memberDAO = new MemberDAO();
    }

    public List<Member> getAllMembers(){
        return this.memberDAO.getAll();
    }

    public void updateMemberStatus(String newStatus, String memberId){
        this.memberDAO.updateStatus(newStatus, memberId);
    }


}
