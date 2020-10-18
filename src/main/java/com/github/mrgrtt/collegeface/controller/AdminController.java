package com.github.mrgrtt.collegeface.controller;


import com.github.mrgrtt.collegeface.component.SessionKey;
import com.github.mrgrtt.collegeface.domain.dto.CommonResult;
import com.github.mrgrtt.collegeface.service.IAdminService;
import com.github.mrgrtt.collegeface.service.impl.AdminServiceImpl;
import org.apache.tomcat.util.digester.Digester;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.nio.charset.StandardCharsets;

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
    public ModelAndView login(@RequestParam String username, @RequestParam String password,
                              HttpSession session) {
        ModelAndView mv = new ModelAndView();
        //登录验证 成功返回id值  失败返回-1
        String encodePass = DigestUtils.md5DigestAsHex(password.getBytes(StandardCharsets.UTF_8));
        password = null;
        long id = iAdminService.login(username,encodePass);
        if (id > 0) {
            mv.setViewName("redirect:/admin/information");
            session.setAttribute(SessionKey.USER_ID.getKey(), id);
        } else {
            mv.setViewName("logInPage");
            mv.addObject("error", "用户名或密码错误");
        }
        return mv;
    }

    @RequestMapping(value = "/admin/change-password", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult changePassword(HttpSession session, @RequestParam String newPassword) {
        //根据id修改密码
        String encodePass = DigestUtils.md5DigestAsHex(newPassword.getBytes(StandardCharsets.UTF_8));
        newPassword = null;
        iAdminService.changePassword((long) session.getAttribute(SessionKey.USER_ID.getKey()),encodePass);
        return CommonResult.success();
    }
}
