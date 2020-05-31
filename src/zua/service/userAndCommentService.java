package zua.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zua.dao.userAndcommentDao;
import zua.vo.userAndComment;

import java.util.List;

@Service
public class userAndCommentService {
    @Autowired
    private userAndcommentDao userAndcommentDao;

    public List<userAndComment> findcommentbyeid(int eid){
        return userAndcommentDao.findcommentByeid(eid);
    }
}
