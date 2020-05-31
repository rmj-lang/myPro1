package zua.pojo;

public class problemAttention {
    private String uid;
    private int pid;

    public problemAttention() {
    }

    public problemAttention(String uid, int pid) {
        this.uid = uid;
        this.pid = pid;
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

    @Override
    public String toString() {
        return "problemAttention{" +
                "uid='" + uid + '\'' +
                ", pid=" + pid +
                '}';
    }
}
