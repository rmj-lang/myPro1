package zua.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import zua.pojo.attention;
import zua.pojo.users;
import zua.service.*;
import zua.vo.userAndEssay;
import zua.vo.userAndProblem;
import zua.vo.userAndResponse;
import zua.vo.userConcern;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class usersController {
    @Autowired
    private usersService usersService;
    @Autowired
    private userAndResponseService userAndResponseService;
    @Autowired
    private userAndEssayService userAndEssayService;
    @Autowired
    private userAndproblemService userAndproblemService;
    @Autowired
    private essayService essayService;
    @Autowired
    private problemService problemService;

    @RequestMapping("/login")
    public @ResponseBody String login(String uid, String password){
        if (usersService.login(uid,password)==true){
            return "/home";
        }else {
            return "/";
        }
    }
    @RequestMapping("/getuserinfo")
    public @ResponseBody users getuserinfo(String uid){
        return usersService.findByuid(uid);
    }
    @RequestMapping("/findresponse")
    public @ResponseBody List<userAndResponse> findresponse(String uid){
        return userAndResponseService.findresponse(uid);
    }
    @RequestMapping("/findcollectEssay")
    public @ResponseBody List<userAndEssay> findcollectEssay(String uid){
        return userAndEssayService.findCollectEssay(uid);
    }
    @RequestMapping("/findAttentionProblem")
    public @ResponseBody List<userAndProblem> findAttentionProblem(String uid){
        return userAndproblemService.findAttentionproblem(uid);
    }
    @RequestMapping("/findAttention")
    public @ResponseBody List<userAndProblem> findAttention(String uid){
        return userAndproblemService.findAttention(uid);
    }
    @RequestMapping("/adduser")
    public @ResponseBody String adduser(String uid,String password){
        try {
            if (usersService.addUser(uid, password).equals("success")){
                return "/home";
            }else {
                return "/";
            }
        }catch (Exception e){
            return "/";
        }
    }
    @RequestMapping("/getHomepageInfo")
    public @ResponseBody Map getHomepageInfo(String uid){
        Map<String, Object> map=new HashMap<String, Object>();
        map.put("myProblemList",userAndproblemService.finduserProblem(uid));
        map.put("myArticleList",userAndEssayService.findUseressay(uid));
        map.put("myConcernList",usersService.findAttentionuser(uid));
        List<users> users=usersService.findUserAttention(uid);
        List<attention> attentions=usersService.findaaa(uid);
        List<userConcern> userConcerns=new ArrayList<userConcern>();
        for (int i=0;i<users.size();i++){
            users user1=users.get(i);
            userConcerns.add(new userConcern(user1.getUid(),user1.getUimg(),null));
            for (int j=0;j<attentions.size();j++){
                attention attention1=attentions.get(j);
                if(user1.getUid().equals(attention1.getRid())){
                    userConcerns.set(i,new userConcern(user1.getUid(),user1.getUimg(),attention1.getUid()));
                    break;
                }
            }
        }
        map.put("myFollowerList",userConcerns);
        map.put("myRecommendList",usersService.findNotAttention(uid));
        return map;
    }
    @RequestMapping("/detail")
    public @ResponseBody List<userAndEssay> detail(String uid,int eid){
        return userAndEssayService.findessayByeid(uid, eid);
    }
    @RequestMapping("/addConcern")
    public @ResponseBody String addConcern(String uid,String rid){
        try {
            usersService.addConcern(uid, rid);
            return "success";
        }catch (Exception e){
            return "fail";
        }
    }
    @RequestMapping("/deleteConcern")
    public @ResponseBody String deleteConcern(String uid,String rid){
        try {
            usersService.deleteConcern(uid, rid);
            return "success";
        }catch (Exception e){
            return "fail";
        }
    }
    @RequestMapping("/deleteEssay")
    public @ResponseBody String deleteEssay(int eid){
        try {
            essayService.deleteEssay(eid);
            return "success";
        }catch (Exception e){
            return "fail";
        }
    }
    @RequestMapping("/deleteProblem")
    public @ResponseBody String deleteProblem(int pid){
        try {
            problemService.deleteProblem(pid);
            return "success";
        }catch (Exception e){
            return "fail";
        }
    }
}
