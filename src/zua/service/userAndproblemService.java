package zua.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zua.dao.userAndproblemDao;
import zua.vo.userAndProblem;
import zua.vo.userProblem;

import java.util.List;

@Service
public class userAndproblemService {
    @Autowired
    private userAndproblemDao userAndproblemDao;

    public List<userAndProblem> findproblem(String uid){
        return userAndproblemDao.findproblem(uid);
    }
    public List<userAndProblem> findAttentionproblem(String uid){
        return userAndproblemDao.findattentionproblem(uid);
    }

    public List<userAndProblem> findAttention(String uid){
        return userAndproblemDao.findattention(uid);
    }

    public List<userProblem> finduserProblem(String uid){
        return userAndproblemDao.finduserproblem(uid);
    }

}
