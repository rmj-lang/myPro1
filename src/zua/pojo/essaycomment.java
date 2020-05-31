package zua.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class essaycomment {
    private int ecid;
    private int eid;
    private String uid;
    private String econtent;
    private String ecdate;
    private int ecapproval;
    private int ecunapproval;

    public essaycomment() {
    }

    public essaycomment(int eid, String uid, String econtent, String ecdate, int ecapproval, int ecunapproval) {
        this.eid = eid;
        this.uid = uid;
        this.econtent = econtent;
        this.ecdate = ecdate;
        this.ecapproval = ecapproval;
        this.ecunapproval = ecunapproval;
    }

    public essaycomment(int ecid, int eid, String uid, String econtent, String ecdate, int ecapproval, int ecunapproval) {
        this.ecid = ecid;
        this.eid = eid;
        this.uid = uid;
        this.econtent = econtent;
        this.ecdate = ecdate;
        this.ecapproval = ecapproval;
        this.ecunapproval = ecunapproval;
    }

    public int getEcid() {
        return ecid;
    }

    public void setEcid(int ecid) {
        this.ecid = ecid;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getEcontent() {
        return econtent;
    }

    public void setEcontent(String econtent) {
        this.econtent = econtent;
    }

    public String getEcdate() {
        return ecdate;
    }

    public void setEcdate(String ecdate) {
        this.ecdate = ecdate;
    }

    public int getEcapproval() {
        return ecapproval;
    }

    public void setEcapproval(int ecapproval) {
        this.ecapproval = ecapproval;
    }

    public int getEcunapproval() {
        return ecunapproval;
    }

    public void setEcunapproval(int ecunapproval) {
        this.ecunapproval = ecunapproval;
    }

    @Override
    public String toString() {
        return "essaycomment{" +
                "ecid=" + ecid +
                ", eid=" + eid +
                ", uid='" + uid + '\'' +
                ", econtent='" + econtent + '\'' +
                ", ecdate=" + ecdate +
                ", ecapproval=" + ecapproval +
                ", ecunapproval=" + ecunapproval +
                '}';
    }
}
