package zua.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import zua.service.userAndEssayService;
import zua.vo.userAndEssay;

import java.util.List;

@Controller
public class hotlistController {
    @Autowired
    private userAndEssayService userAndEssayService;

    @RequestMapping("/findessayByHot")
    public @ResponseBody List<userAndEssay> findessayByHot(String uid){
        return userAndEssayService.findessayByhot(uid);
    }
}
