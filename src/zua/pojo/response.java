package zua.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class response {
    private int rid;
    private String uid;
    private int pid;
    private String rcontent;
    private String rdate;
    private int rapproval;
    private int runapproval;


    public response() {
    }

    public response(String uid, int pid, String rcontent, String rdate, int rapproval, int runapproval) {
        this.uid = uid;
        this.pid = pid;
        this.rcontent = rcontent;
        this.rdate = rdate;
        this.rapproval = rapproval;
        this.runapproval = runapproval;
    }

    public response(int rid, String uid, int pid, String rcontent, String rdate, int rapproval, int runapproval) {
        this.rid = rid;
        this.uid = uid;
        this.pid = pid;
        this.rcontent = rcontent;
        this.rdate = rdate;
        this.rapproval = rapproval;
        this.runapproval = runapproval;
    }

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getRcontent() {
        return rcontent;
    }

    public void setRcontent(String rcontent) {
        this.rcontent = rcontent;
    }

    public String getRdate() {
        return rdate;
    }

    public void setRdate(String rdate) {
        this.rdate = rdate;
    }

    public int getRapproval() {
        return rapproval;
    }

    public void setRapproval(int rapproval) {
        this.rapproval = rapproval;
    }

    public int getRunapproval() {
        return runapproval;
    }

    public void setRunapproval(int runapproval) {
        this.runapproval = runapproval;
    }

    @Override
    public String toString() {
        return "response{" +
                "rid=" + rid +
                ", uid=" + uid +
                ", pid=" + pid +
                ", rcontent='" + rcontent + '\'' +
                ", rdate=" + rdate +
                ", rapproval=" + rapproval +
                ", runapproval=" + runapproval +
                '}';
    }
}
