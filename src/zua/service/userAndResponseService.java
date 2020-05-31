package zua.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zua.dao.userAndresponseDao;
import zua.vo.userAndResponse;
import zua.vo.userResponse;

import java.util.List;

@Service
public class userAndResponseService {
    @Autowired
    private userAndresponseDao userAndresponseDao;

    public List<userAndResponse> findresponse(String uid){
        return userAndresponseDao.finduserResponse(uid);
    }
    public List<userResponse> findresponsebypid(int pid){
        return userAndresponseDao.findResponseBypid(pid);
    }

}
