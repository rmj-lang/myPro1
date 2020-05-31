package zua.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zua.dao.userAndEssayDao;
import zua.vo.userAndEssay;
import zua.vo.userEssay;

import java.util.List;

@Service
public class userAndEssayService {
    @Autowired
    private userAndEssayDao userAndEssayDao;

    public List<userAndEssay> findAllEssay(String uid){
        return userAndEssayDao.findAllessays(uid);
    }
    public List<userAndEssay> findessayByhot(String uid){
        return userAndEssayDao.findessaysByhot(uid);
    }
    public List<userAndEssay> findEssayBytid(String uid,int tid){
        if (tid==0){
            return userAndEssayDao.findAllessays(uid);
        }else {
            return userAndEssayDao.findEssaysBytid(uid,tid);
        }

    }
    public List<userAndEssay> findCollectEssay(String uid){
        return userAndEssayDao.findcollectEssay(uid);
    }

    public List<userEssay> findUseressay(String uid){
        return userAndEssayDao.finduseressay(uid);
    }

    public List<userAndEssay> findessayByeid(String uid,int eid){
        return userAndEssayDao.findEssayByeid(uid, eid);
    }

}
