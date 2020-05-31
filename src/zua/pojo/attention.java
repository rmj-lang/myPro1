package zua.pojo;

public class attention {
    private String uid;
    private String rid;

    public attention() {
    }

    public attention(String uid, String rid) {
        this.uid = uid;
        this.rid = rid;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getRid() {
        return rid;
    }

    public void setRid(String rid) {
        this.rid = rid;
    }

    @Override
    public String toString() {
        return "attention{" +
                "uid=" + uid +
                ", rid=" + rid +
                '}';
    }
}
