package zua.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class problem {
    private int pid;
    private String uid;
    private String pcontent;
    private String pdate;

    public problem() {
    }

    public problem(String uid, String pcontent, String pdate) {
        this.uid = uid;
        this.pcontent = pcontent;
        this.pdate = pdate;
    }

    public problem(int pid, String uid, String pcontent, String pdate) {
        this.pid = pid;
        this.uid = uid;
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
        return "problem{" +
                "pid=" + pid +
                ", uid=" + uid +
                ", pcontent='" + pcontent + '\'' +
                ", pdate=" + pdate +
                '}';
    }
}
