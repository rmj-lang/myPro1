package zua.vo;

public class userAndProblem {
    private int pid;
    private String uid;
    private String uimg;
    private String pcontent;
    private String pdate;
    private String attentionid;

    public userAndProblem() {
    }

    public userAndProblem(String uid, String uimg, String pcontent, String pdate, String attentionid) {
        this.uid = uid;
        this.uimg = uimg;
        this.pcontent = pcontent;
        this.pdate = pdate;
        this.attentionid = attentionid;
    }

    public userAndProblem(int pid, String uid, String uimg, String pcontent, String pdate, String attentionid) {
        this.pid = pid;
        this.uid = uid;
        this.uimg = uimg;
        this.pcontent = pcontent;
        this.pdate = pdate;
        this.attentionid = attentionid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
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

    public String getAttentionid() {
        return attentionid;
    }

    public void setAttentionid(String attentionid) {
        this.attentionid = attentionid;
    }

    @Override
    public String toString() {
        return "userAndProblem{" +
                "pid=" + pid +
                ", uid='" + uid + '\'' +
                ", uimg='" + uimg + '\'' +
                ", pcontent='" + pcontent + '\'' +
                ", pdate='" + pdate + '\'' +
                ", attentionid='" + attentionid + '\'' +
                '}';
    }
}
