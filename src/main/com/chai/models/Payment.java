package main.com.chai.models;

import java.util.Date;

public class Payment {

    private int id;
    private String typeOfPayment;
    private float amount;
    private Date date;
    private Date time;
    private Member member;

    public Payment(){}

    public Payment(int id, String typeOfPayment, float amount, Date date, Date time, Member member) {
        this.id = id;
        this.typeOfPayment = typeOfPayment;
        this.amount = amount;
        this.date = date;
        this.time = time;
        this.member = member;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTypeOfPayment() {
        return typeOfPayment;
    }

    public void setTypeOfPayment(String typeOfPayment) {
        this.typeOfPayment = typeOfPayment;
    }

    public float getAmount() {
        return amount;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    @Override
    public String toString() {
        return "Payment{" +
                "id=" + id +
                ", typeOfPayment='" + typeOfPayment + '\'' +
                ", amount=" + amount +
                ", date=" + date +
                ", time=" + time +
                ", member=" + member +
                '}';
    }
}
