package zua.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zua.dao.problemattentionDao;

@Service
public class problemattentionService {
    @Autowired
    private problemattentionDao problemattentionDao;

    public void cancleAttention(int pid,String uid){
        problemattentionDao.cancleAttention(pid, uid);
    }
    public void addAttention(int pid,String uid){
        problemattentionDao.addAttention(pid,uid);
    }
}
