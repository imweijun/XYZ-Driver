package chai.models;

import java.util.Date;

public class Claim {

    private int id;
    private Date date;
    private String rationale;
    private String status;
    private float amount;
    private Member member;

    public Claim(){}

    public Claim(int id, Date date, String rationale, String status, float amount, Member member) {
        this.id = id;
        this.date = date;
        this.rationale = rationale;
        this.status = status;
        this.amount = amount;
        this.member = member;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getRationale() {
        return rationale;
    }

    public void setRationale(String rationale) {
        this.rationale = rationale;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public float getAmount() {
        return amount;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    @Override
    public String toString() {
        return "Claims{" +
                "id=" + id +
                ", date=" + date +
                ", rationale='" + rationale + '\'' +
                ", status='" + status + '\'' +
                ", amount=" + amount +
                ", member=" + member +
                '}';
    }
}
