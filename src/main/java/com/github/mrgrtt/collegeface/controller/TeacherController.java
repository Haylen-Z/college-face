package com.github.mrgrtt.collegeface.controller;


import com.github.mrgrtt.collegeface.domain.dto.CommonResult;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author haylen
 * @since 2020-10-12
 */
@Controller
@RequestMapping("/teachers")
public class TeacherController {

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getTeachers() {
        ModelAndView mv = new ModelAndView("admin/teacher/teacher");
        return mv;
    }

    @RequestMapping(name = "/create-page", method = RequestMethod.GET)
    public ModelAndView getCreatePage() {
        ModelAndView mv = new ModelAndView("admin/teacher/create-page");
        return mv;
    }

    @RequestMapping(name = "/create", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult create(@RequestParam String name,
                               @RequestParam String content, @RequestParam String level) {
        return CommonResult.success();
    }

    @RequestMapping(name = "/update-page/{id}", method = RequestMethod.GET)
    public ModelAndView getUpdatePage(@PathVariable long id) {
        ModelAndView mv = new ModelAndView("admin/teacher/update-page");
        return mv;
    }

    @RequestMapping(name = "/update/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult update(@PathVariable long id, @RequestParam String name,
                               @RequestParam String content, @RequestParam String level) {
        return CommonResult.success();
    }

    @RequestMapping(name = "/delete/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult delete(@PathVariable long id) {
        return CommonResult.success();
    }
}
