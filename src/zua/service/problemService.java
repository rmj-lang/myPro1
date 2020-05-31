package zua.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zua.dao.problemDao;
import zua.pojo.problem;
import zua.vo.userProblem;

import java.util.List;

@Service
public class problemService {
    @Autowired
    private problemDao problemDao;

    public void addProblem(problem problem){
        problemDao.addproblem(problem);
    }

    public List<userProblem> findLikeProblem(String content){
        return problemDao.findlikeproblem(content);
    }

    public void deleteProblem(int pid){
        problemDao.deleteProblem(pid);
    }

}
