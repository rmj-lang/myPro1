package zua.vo;

public class userAndResponse {
    private int rid;
    private String uid;
    private String uimg;
    private int pid;
    private String id;
    private String img;
    private String pcontent;
    private String pdate;
    private String rcontent;
    private String rdate;
    private int rapproval;
    private int runappraval;

    public userAndResponse() {
    }

    public userAndResponse(String uid, String uimg, int pid, String id, String img, String pcontent, String pdate, String rcontent, String rdate, int rapproval, int runappraval) {
        this.uid = uid;
        this.uimg = uimg;
        this.pid = pid;
        this.id = id;
        this.img = img;
        this.pcontent = pcontent;
        this.pdate = pdate;
        this.rcontent = rcontent;
        this.rdate = rdate;
        this.rapproval = rapproval;
        this.runappraval = runappraval;
    }

    public userAndResponse(int rid, String uid, String uimg, int pid, String id, String img, String pcontent, String pdate, String rcontent, String rdate, int rapproval, int runappraval) {
        this.rid = rid;
        this.uid = uid;
        this.uimg = uimg;
        this.pid = pid;
        this.id = id;
        this.img = img;
        this.pcontent = pcontent;
        this.pdate = pdate;
        this.rcontent = rcontent;
        this.rdate = rdate;
        this.rapproval = rapproval;
        this.runappraval = runappraval;
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

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getPcontent() {
        return pcontent;
    }

    public void setPcontent(String pcontent) {
        this.pcontent = pcontent;
    }

    public String getPdate() {
        return pdate;
    }

    public void setPdate(String pdate) {
        this.pdate = pdate;
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

    public int getRunappraval() {
        return runappraval;
    }

    public void setRunappraval(int runappraval) {
        this.runappraval = runappraval;
    }

    @Override
    public String toString() {
        return "userAndResponse{" +
                "rid=" + rid +
                ", uid='" + uid + '\'' +
                ", uimg='" + uimg + '\'' +
                ", pid=" + pid +
                ", id=" + id +
                ", img='" + img + '\'' +
                ", pcontent='" + pcontent + '\'' +
                ", pdate='" + pdate + '\'' +
                ", rcontent='" + rcontent + '\'' +
                ", rdate='" + rdate + '\'' +
                ", rapproval=" + rapproval +
                ", runappraval=" + runappraval +
                '}';
    }
}
