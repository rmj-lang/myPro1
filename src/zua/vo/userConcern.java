package zua.vo;

public class userConcern {
    private String uid;
    private String uimg;
    private String rid;

    public userConcern() {
    }

    public userConcern(String uid, String uimg, String rid) {
        this.uid = uid;
        this.uimg = uimg;
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

    public String getRid() {
        return rid;
    }

    public void setRid(String rid) {
        this.rid = rid;
    }

    @Override
    public String toString() {
        return "userConcern{" +
                "uid='" + uid + '\'' +
                ", uimg='" + uimg + '\'' +
                ", rid='" + rid + '\'' +
                '}';
    }
}
