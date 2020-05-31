package zua.pojo;

public class collect {
    private String uid;
    private int eid;
    public collect() {
    }

    public collect(String uid, int eid) {
        this.uid = uid;
        this.eid = eid;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    @Override
    public String toString() {
        return "collect{" +
                "eid=" + eid +
                ", uid=" + uid +
                '}';
    }
}
