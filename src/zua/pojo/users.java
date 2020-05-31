package zua.pojo;

public class users {
    private String uid;
    private String password;
    private String tel;
    private String uimg;
    private String signature;
    private int age;
    private String sex;

    public users() {
    }

    public users(String uid, String password, String tel, String uimg, String signature, int age, String sex) {
        this.uid = uid;
        this.password = password;
        this.tel = tel;
        this.uimg = uimg;
        this.signature = signature;
        this.age = age;
        this.sex = sex;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getUimg() {
        return uimg;
    }

    public void setUimg(String uimg) {
        this.uimg = uimg;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "users{" +
                "uid='" + uid + '\'' +
                ", password='" + password + '\'' +
                ", tel='" + tel + '\'' +
                ", uimg='" + uimg + '\'' +
                ", signature='" + signature + '\'' +
                ", age=" + age +
                ", sex='" + sex + '\'' +
                '}';
    }
}
