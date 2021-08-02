package jy.memory.start;

import jy.memory.core.ViewRef;
import jy.memory.start.model.StartVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

    /**
     * Start 페이지 열기
     * @param model
     * @param vo
     * @param request
     * @return
     */
    @RequestMapping(value = "/startTest", method = RequestMethod.GET)
    public String startTest(Model model, StartVO vo, HttpServletRequest request) {

        model.addAttribute("list", service.startList());

        // include.jsp 로 같이 보낼 값
        model.addAttribute("pageName", "Start Test Page");
        model.addAttribute("kakaoName", "이재용");     // kakao 공유하기에 사용할 model 값

        model.addAttribute("view","/start/startTest");
        return ViewRef.INCLUDE;
    }

    @RequestMapping(value = "/startSave", method = RequestMethod.GET)
    public String startSave(Model model, StartVO vo, HttpServletRequest request) {

        model.addAttribute("data", service.detail(vo));

        model.addAttribute("view", "/start/startSave");
        return ViewRef.INCLUDE;
    }

    @RequestMapping(value = "/startSave", method = RequestMethod.POST)
    public String startSave(Model model, StartVO vo, HttpServletRequest request, HttpServletResponse response) {

        int result = service.startSave(vo);
        System.out.println("result 값 : " + result);

        return "redirect:/start/startTest";
    }
}
