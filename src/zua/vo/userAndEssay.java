package zua.vo;

import java.util.Date;

public class userAndEssay {
    private int eid;
    private String uid;
    private String uimg;
    private String etitle;
    private String econtent;
    private String edate;
    private int eapproval;
    private int ecollect;
    private int ecomment;
    private String likeid;
    private String collectid;

    public userAndEssay() {
    }

    public userAndEssay(int eid, String uid, String uimg, String etitle, String econtent, String edate, int eapproval, int ecollect, int ecomment, String likeid, String collectid) {
        this.eid = eid;
        this.uid = uid;
        this.uimg = uimg;
        this.etitle = etitle;
        this.econtent = econtent;
        this.edate = edate;
        this.eapproval = eapproval;
        this.ecollect = ecollect;
        this.ecomment = ecomment;
        this.likeid = likeid;
        this.collectid = collectid;
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

    public String getUimg() {
        return uimg;
    }

    public void setUimg(String uimg) {
        this.uimg = uimg;
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

    public String getLikeid() {
        return likeid;
    }

    public void setLikeid(String likeid) {
        this.likeid = likeid;
    }

    public String getCollectid() {
        return collectid;
    }

    public void setCollectid(String collectid) {
        this.collectid = collectid;
    }

    @Override
    public String toString() {
        return "userAndEssay{" +
                "eid=" + eid +
                ", uid='" + uid + '\'' +
                ", uimg='" + uimg + '\'' +
                ", etitle='" + etitle + '\'' +
                ", econtent='" + econtent + '\'' +
                ", edate='" + edate + '\'' +
                ", eapproval=" + eapproval +
                ", ecollect=" + ecollect +
                ", ecomment=" + ecomment +
                ", likeid='" + likeid + '\'' +
                ", collectid='" + collectid + '\'' +
                '}';
    }
}
