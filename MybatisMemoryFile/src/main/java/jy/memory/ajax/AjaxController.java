package jy.memory.ajax;

import jy.memory.ajax.model.AjaxVO;
import jy.memory.core.ViewRef;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/ajax")
public class AjaxController {

    /*
        Ajax 사용및 ResponseBody / RequestBody  success:function(data) 등 활용

     */

    @Autowired
    private AjaxService service;

    @RequestMapping(value = "/ajaxTest", method = RequestMethod.GET)
    public String ajaxTest(Model model, AjaxVO vo) {

        System.out.println("--ajax get method 실행 --");
        model.addAttribute("pageName", "AjaxTest");
        model.addAttribute("view", ViewRef.Ajax);

        return ViewRef.INCLUDE;
    }

    @RequestMapping(value = "/ajaxTestPost", method = RequestMethod.POST)
    @ResponseBody
    public AjaxVO ajaxTestPost(Model model, AjaxVO vo, HttpServletRequest request) {

        System.out.println("name값 : " + vo.getName());
        System.out.println("age값 : " + vo.getAge());
        System.out.println("hoby값 : " + vo.getHobby());
        return vo;
    }
}
