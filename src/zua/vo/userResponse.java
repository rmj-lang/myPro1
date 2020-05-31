package zua.vo;

public class userResponse {
    private int rid;
    private String uid;
    private String uimg;
    private int pid;
    private String rcontent;
    private String rdate;
    private int rapproval;
    private int runapproval;

    public userResponse() {
    }

    public userResponse(int rid, String uid, String uimg, int pid, String rcontent, String rdate, int rapproval, int runapproval) {
        this.rid = rid;
        this.uid = uid;
        this.uimg = uimg;
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

    public String getUimg() {
        return uimg;
    }

    public void setUimg(String uimg) {
        this.uimg = uimg;
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
        return "userResponse{" +
                "rid=" + rid +
                ", uid='" + uid + '\'' +
                ", uimg='" + uimg + '\'' +
                ", pid=" + pid +
                ", rcontent='" + rcontent + '\'' +
                ", rdate='" + rdate + '\'' +
                ", rapproval=" + rapproval +
                ", runapproval=" + runapproval +
                '}';
    }
}
