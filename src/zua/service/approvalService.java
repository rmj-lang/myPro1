package zua.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zua.dao.approvalDao;

@Service
public class approvalService {
    @Autowired
    private approvalDao approvalDao;

    public void addApproval(String uid,int eid){
        approvalDao.addApproval(uid,eid);
    }

    public void deleteApproval(String uid,int eid){
        approvalDao.deleteApproval(uid, eid);
    }

}
