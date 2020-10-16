package com.github.mrgrtt.collegeface.controller;


import com.github.mrgrtt.collegeface.domain.dto.CommonResult;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author haylen
 * @since 2020-10-12
 */
@Controller
public class AdminController {

    @RequestMapping(name = "/login-page", method = RequestMethod.GET)
    public ModelAndView logInPage() {
        ModelAndView mv = new ModelAndView("logInPage.ftl");
        return mv;
    }

    @RequestMapping(name = "/login", method = RequestMethod.POST)
    public ModelAndView login(@RequestParam String username, @RequestParam String password) {
        ModelAndView mv = new ModelAndView();
        return mv;
    }

    @RequestMapping(name = "/admin/change-password", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult changePassword(HttpSession session, @RequestParam String newPassword) {
        return CommonResult.success();
    }
}
