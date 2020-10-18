package com.github.mrgrtt.collegeface.controller;


import com.github.mrgrtt.collegeface.component.SessionKey;
import com.github.mrgrtt.collegeface.domain.dto.CommonResult;
import com.github.mrgrtt.collegeface.service.IAdminService;
import com.github.mrgrtt.collegeface.service.impl.AdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
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

    @Autowired
    IAdminService iAdminService;

    @RequestMapping(value = "/login-page", method = RequestMethod.GET)
    public ModelAndView logInPage() {
        ModelAndView mv = new ModelAndView("logInPage");
        return mv;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(@RequestParam String username, @RequestParam String password) {
        ModelAndView mv = new ModelAndView("redirect:/");
        //登录验证 成功返回id值  失败返回-1
        Long id = iAdminService.login(username,password);

        return mv;
    }

    @RequestMapping(value = "/admin/change-password", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult changePassword(HttpSession session, @RequestParam String newPassword) {
        //根据id修改密码
        iAdminService.changePassword(Long.parseLong(session.getId()),newPassword);
        return CommonResult.success();
    }
}
