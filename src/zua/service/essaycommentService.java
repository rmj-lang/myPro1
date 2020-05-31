package zua.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zua.dao.essaycommentDao;
import zua.pojo.essaycomment;

import java.util.List;

@Service
public class essaycommentService {
    @Autowired
    private essaycommentDao essaycommentDao;

    public List<essaycomment> findcommentByeid(int eid){
        return essaycommentDao.findcommentByeid(eid);
    }

    public void addcomment(essaycomment essaycomment){
        essaycommentDao.addcomment(essaycomment);
    }
}
