package chai.Services;

import chai.dao.MemberDAO;
import chai.dao.PaymentDAO;
import chai.models.Payment;

import java.util.List;

public class PaymentService {

    private PaymentDAO paymentDAO;

    public PaymentService(){
        this.paymentDAO = new PaymentDAO();
    }

    public List<Payment> getPaymentOfMember(String memberId){
       return this.paymentDAO.getPaymentOfMember(memberId);
    }
}
