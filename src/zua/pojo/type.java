package zua.pojo;

public class type {
    private int tid;
    private String type;

    public type() {
    }

    public type(int tid, String type) {
        this.tid = tid;
        this.type = type;
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "type{" +
                "tid=" + tid +
                ", type='" + type + '\'' +
                '}';
    }
}
