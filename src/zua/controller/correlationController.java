package zua.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import zua.pojo.essay;
import zua.pojo.response;
import zua.service.essayService;
import zua.service.essaycommentService;
import zua.service.problemattentionService;
import zua.service.responseService;

@Controller
public class correlationController {
    @Autowired
    private essayService essayService;
    @Autowired
    private responseService responseService;
    @Autowired
    private problemattentionService problemattentionService;

    @RequestMapping("/addEssay")
    public @ResponseBody String addEssay(String uid,String etitle,String econtent,String edate,int tid){
        try {
            essay essay=new essay(uid,etitle,econtent,edate,0,0,0,tid);
            essayService.addEssay(essay);
            return "success";
        }catch (Exception e){
            return "fail";
        }
    }
    @RequestMapping("/addResponse")
    public @ResponseBody String addResponse(String uid, int pid,String rcontent,String date){
        response response=new response(uid,pid,rcontent,date,0,0);
        try {
            responseService.addResponse(response);
            return "success";
        }catch (Exception e){
            return "fail";
        }
    }
    @RequestMapping("/cancleAttention")
    public @ResponseBody String cancleAttention(int pid,String uid){
        try {
            problemattentionService.cancleAttention(pid, uid);
            return "success";
        }catch (Exception e){
            return "fail";
        }
    }
    @RequestMapping("/addAttention")
    public @ResponseBody String addAttention(int pid,String uid){
        try {
            problemattentionService.addAttention(pid, uid);
            return "success";
        }catch (Exception e){
            return "fail";
        }
    }
}
