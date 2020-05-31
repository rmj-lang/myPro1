package zua.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import zua.pojo.essaycomment;
import zua.pojo.type;
import zua.service.*;
import zua.vo.userAndComment;
import zua.vo.userAndEssay;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class homeController {
    @Autowired
    private problemService problemService;
    @Autowired
    private typeService typeService;
    @Autowired
    private userAndEssayService userAndEssayService;
    @Autowired
    private essayService essayService;
    @Autowired
    private approvalService approvalService;
    @Autowired
    private collectService collectService;
    @Autowired
    private userAndCommentService userAndCommentService;
    @Autowired
    private essaycommentService essaycommentService;

    @RequestMapping("/getHomeInfo")
    public @ResponseBody Map getHomeInfo(String uid){
        Map<String, Object> map=new HashMap<String, Object>();
        List<type> list=typeService.findAlltypes();
        list.add(0,new type(0,"推荐"));
        map.put("topicList",list);
        map.put("articleList",userAndEssayService.findAllEssay(uid));
        return map;
    }
    @RequestMapping("/getArticleBytid")
    public @ResponseBody List<userAndEssay> getArticleBytid(String uid,int tid){
        return userAndEssayService.findEssayBytid(uid,tid);
    }
    @RequestMapping("/addEssayApproval")
    public @ResponseBody String addEssayApproval(String uid,int eid){
        try {
            approvalService.addApproval(uid,eid);
            essayService.addApproval(eid);
            return "success";
        }catch (Exception e){
            return "fail";
        }
    }
    @RequestMapping("/cancleEssayApproval")
    public @ResponseBody String cancleEssayApproval(String uid,int eid){
        try {
            approvalService.deleteApproval(uid,eid);
            essayService.cancleApproval(eid);
            return "success";
        }catch (Exception e){
            return "fail";
        }
    }
    @RequestMapping("/addEssayCollect")
    public @ResponseBody String addEssayCollect(String uid,int eid){
        try {
            collectService.addCollect(uid, eid);
            essayService.addCollect(eid);
            return "success";
        }catch (Exception e){
            return "fail";
        }
    }
    @RequestMapping("/cancleEssayCollect")
    public @ResponseBody String cancleEssayCollect(String uid,int eid){
        try {
            collectService.deleteCollect(uid, eid);
            essayService.cancleCollect(eid);
            return "success";
        }catch (Exception e){
            return "fail";
        }
    }
    @RequestMapping("/findcommentByeid")
    public @ResponseBody List<userAndComment> findcommentByeid(int eid){
        return userAndCommentService.findcommentbyeid(eid);
    }
    @RequestMapping("/addComment")
    public @ResponseBody String addComment(String uid, int eid,String econtent, String  date){
        essaycomment essaycomment=new essaycomment(eid,uid,econtent,date,0,0);
        try {
            essaycommentService.addcomment(essaycomment);
            essayService.addComment(eid);
            return "success";
        }catch (Exception e){
            return "fail";
        }
    }
    @RequestMapping("/search")
    public @ResponseBody Map search(String content){
        Map<String, Object> map=new HashMap<String, Object>();
        map.put("likeEssayList",essayService.findlikeEssay(content));
        map.put("likeProblemList",problemService.findLikeProblem(content));
        return map;
    }
}
