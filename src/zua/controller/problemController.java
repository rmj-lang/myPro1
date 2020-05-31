package zua.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import zua.pojo.problem;
import zua.service.problemService;
import zua.service.userAndResponseService;
import zua.service.userAndproblemService;
import zua.vo.userAndProblem;
import zua.vo.userResponse;

import java.util.List;

@Controller
public class problemController {
    @Autowired
    private userAndproblemService userAndproblemService;
    @Autowired
    private problemService problemService;
    @Autowired
    private userAndResponseService userAndResponseService;
    @RequestMapping("/findProblem")
    public @ResponseBody List<userAndProblem> findProblem(String uid){
        return userAndproblemService.findproblem(uid);
    }
    @RequestMapping("/addproblem")
    public @ResponseBody String addproblem(String uid,String pcontent,String pdate){
        try {
            problem problem=new problem(uid,pcontent,pdate);
            problemService.addProblem(problem);
            return "success";
        }catch (Exception e){
            return "fail";
        }
    }
    @RequestMapping("/getAllResponse")
    public @ResponseBody List<userResponse> getAllResponse(int pid){
        return userAndResponseService.findresponsebypid(pid);
    }
}
