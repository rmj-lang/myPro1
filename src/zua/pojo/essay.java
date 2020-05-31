package zua.pojo;

import java.util.Date;

public class essay {
    private int eid;
    private String uid;
    private String etitle;
    private String econtent;
    private String edate;
    private int eapproval;
    private int ecollect;
    private int ecomment;
    private int tid;

    public essay() {
    }

    public essay(String uid, String etitle, String econtent, String edate, int eapproval, int ecollect, int ecomment, int tid) {
        this.uid = uid;
        this.etitle = etitle;
        this.econtent = econtent;
        this.edate = edate;
        this.eapproval = eapproval;
        this.ecollect = ecollect;
        this.ecomment = ecomment;
        this.tid = tid;
    }

    public essay(int eid, String uid, String etitle, String econtent, String edate, int eapproval, int ecollect, int ecomment, int tid) {
        this.eid = eid;
        this.uid = uid;
        this.etitle = etitle;
        this.econtent = econtent;
        this.edate = edate;
        this.eapproval = eapproval;
        this.ecollect = ecollect;
        this.ecomment = ecomment;
        this.tid = tid;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getEtitle() {
        return etitle;
    }

    public void setEtitle(String etitle) {
        this.etitle = etitle;
    }

    public String getEcontent() {
        return econtent;
    }

    public void setEcontent(String econtent) {
        this.econtent = econtent;
    }

    public String getEdate() {
        return edate;
    }

    public void setEdate(String edate) {
        this.edate = edate;
    }

    public int getEapproval() {
        return eapproval;
    }

    public void setEapproval(int eapproval) {
        this.eapproval = eapproval;
    }

    public int getEcollect() {
        return ecollect;
    }

    public void setEcollect(int ecollect) {
        this.ecollect = ecollect;
    }

    public int getEcomment() {
        return ecomment;
    }

    public void setEcomment(int ecomment) {
        this.ecomment = ecomment;
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    @Override
    public String toString() {
        return "essay{" +
                "eid=" + eid +
                ", uid='" + uid + '\'' +
                ", etitle='" + etitle + '\'' +
                ", econtent='" + econtent + '\'' +
                ", edate='" + edate + '\'' +
                ", eapproval=" + eapproval +
                ", ecollect=" + ecollect +
                ", ecomment=" + ecomment +
                ", tid=" + tid +
                '}';
    }
}
