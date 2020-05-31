package zua.vo;

public class userAndComment {
    private int ecid;
    private int eid;
    private String uid;
    private String uimg;
    private String econtent;
    private String ecdate;
    private int ecapproval;
    private int ecunapproval;

    public userAndComment() {
    }

    public userAndComment(int ecid, int eid, String uid, String uimg, String econtent, String ecdate, int ecapproval, int ecunapproval) {
        this.ecid = ecid;
        this.eid = eid;
        this.uid = uid;
        this.uimg = uimg;
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

    public String getUimg() {
        return uimg;
    }

    public void setUimg(String uimg) {
        this.uimg = uimg;
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
        return "userAndComment{" +
                "ecid=" + ecid +
                ", eid=" + eid +
                ", uid='" + uid + '\'' +
                ", uimg='" + uimg + '\'' +
                ", econtent='" + econtent + '\'' +
                ", ecdate='" + ecdate + '\'' +
                ", ecapproval=" + ecapproval +
                ", ecunapproval=" + ecunapproval +
                '}';
    }
}
