package zua.pojo;

public class approval {
    private String uid;
    private int id;

    public approval() {
    }

    public approval(String uid, int id) {
        this.uid = uid;
        this.id = id;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "approval{" +
                "uid='" + uid + '\'' +
                ", id=" + id +
                '}';
    }
}
