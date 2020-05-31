package zua.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zua.dao.collectDao;

@Service
public class collectService {
    @Autowired
    private collectDao collectDao;

    public void addCollect(String uid,int eid){
        collectDao.addCollect(uid,eid);
    }
    public void deleteCollect(String uid,int eid){
        collectDao.deleteCollect(uid, eid);
    }

}
