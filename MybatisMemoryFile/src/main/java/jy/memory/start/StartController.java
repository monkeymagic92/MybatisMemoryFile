package jy.memory.start;

import jy.memory.core.ViewRef;
import jy.memory.start.model.StartVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/start")
public class StartController {

    /*
        DB연동 및 RefreshAble 설정
        Mapping 기본설정 및 톰캣연동
        jsp Include 적용
    */

    @Autowired
    private StartService service;

    // startTest 기본페이지 오픈
    @RequestMapping(value = "/startTest", method = RequestMethod.GET)
    public String startTest(Model model, StartVO vo) {

        model.addAttribute("list", service.startList());

        // include.jsp 로 같이 보낼 값
        model.addAttribute("pageName", "Start Test Page");
        model.addAttribute("view","/start/startTest");

        return ViewRef.INCLUDE;
    }

}
