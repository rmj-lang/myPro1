package zua.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zua.dao.essayDao;
import zua.pojo.essay;
import zua.vo.userEssay;

import java.util.List;

@Service
public class essayService {
    @Autowired
    private essayDao essayDao;

    public List<essay> findAllessay(){
        return essayDao.findAllessays();
    }

    public void addApproval(int eid){
        essayDao.addApproval(eid);
    }

    public void cancleApproval(int eid){
        essayDao.cancleApproval(eid);
    }

    public void addCollect(int eid){
        essayDao.addCollect(eid);
    }

    public void cancleCollect(int eid){
        essayDao.cancleCollect(eid);
    }

    public void addEssay(essay essay){
        essayDao.addEssay(essay);
    }

    public void addComment(int eid){essayDao.addComment(eid);}

    public List<userEssay> findlikeEssay(String content){
        return essayDao.findlikeessay(content);
    }

    public void deleteEssay(int eid){
        essayDao.deleteEssay(eid);
    }

}
