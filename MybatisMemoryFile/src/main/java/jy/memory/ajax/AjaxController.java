package jy.memory.ajax;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/ajax")
public class AjaxController {

    @Autowired
    private AjaxService service;

    @RequestMapping(value = "/ajaxTest", method = RequestMethod.GET)
    public String ajaxTest(Model model) {

        model.addAttribute("test", 1);

        return "/ajax/ajaxTest";
    }
}
