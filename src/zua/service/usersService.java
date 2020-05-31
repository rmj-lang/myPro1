package zua.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zua.dao.usersDao;
import zua.pojo.attention;
import zua.pojo.users;
import zua.vo.userConcern;

import java.util.List;

@Service
public class usersService {
    @Autowired
    private usersDao usersDao;
    public boolean login(String uid,String password) {
        users users1=usersDao.findUserById(uid);
        if((users1!=null)&&(users1.getPassword().equals(password))){
            return true;
        }else {
            return false;
        }
    }
    public users findByuid(String uid){
        return usersDao.findUserById(uid);
    }

    public String addUser(String uid,String password){
        users users=usersDao.findUserById(uid);
        if (users!=null){
            return "fail";
        }else {
            try {
                usersDao.adduser(uid,password);
                return "success";
            }catch (Exception e){
                return "fail";
            }
        }
    }
    public List<users> findAttentionuser(String uid){
        return usersDao.findattentionuser(uid);
    }
    public List<users> findUserAttention(String uid){
        return usersDao.finduserattention(uid);
    }

    public List<attention> findaaa(String uid){
        return usersDao.findaaa(uid);
    }

    public List<users> findNotAttention(String uid){
        return usersDao.findNotattention(uid);
    }

    public void addConcern(String uid,String rid){
        usersDao.addConcern(uid, rid);
    }
    public void deleteConcern(String uid,String rid){
        usersDao.deleteConcern(uid, rid);
    }
}
