package Model;

import java.io.Serializable;

public class Information implements Serializable{
    private Member member;
    private Fee fee;

    public Information() {
    }

    public Information(Member member, Fee fee) {
        this.member = member;
        this.fee = fee;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public Fee getFee() {
        return fee;
    }

    public void setFee(Fee fee) {
        this.fee = fee;
    }

    @Override
    public String toString() {
        return "Imformation{" + "member=" + member + ", fee=" + fee + '}';
    }
    
    
}
