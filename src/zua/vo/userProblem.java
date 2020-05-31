package zua.vo;

public class userProblem {
    private int pid;
    private String uid;
    private String uimg;
    private String pcontent;
    private String pdate;

    public userProblem() {
    }

    public userProblem(String uid, String uimg, String pcontent, String pdate) {
        this.uid = uid;
        this.uimg = uimg;
        this.pcontent = pcontent;
        this.pdate = pdate;
    }

    public userProblem(int pid, String uid, String uimg, String pcontent, String pdate) {
        this.pid = pid;
        this.uid = uid;
        this.uimg = uimg;
        this.pcontent = pcontent;
        this.pdate = pdate;
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

    @Override
    public String toString() {
        return "userProblem{" +
                "pid=" + pid +
                ", uid='" + uid + '\'' +
                ", uimg='" + uimg + '\'' +
                ", pcontent='" + pcontent + '\'' +
                ", pdate='" + pdate + '\'' +
                '}';
    }
}
