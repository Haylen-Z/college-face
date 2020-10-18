package com.github.mrgrtt.collegeface.controller;


import com.github.mrgrtt.collegeface.domain.dto.CommonResult;
import com.github.mrgrtt.collegeface.domain.entity.Teacher;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author haylen
 * @since 2020-10-12
 */
@Controller
@RequestMapping("/admin/teachers")
public class TeacherController {

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getTeachers() {
        List<Teacher> teachers = new ArrayList<>();
        ModelAndView mv = new ModelAndView("admin/teacher/teacher");
        mv.addObject("teachers", teachers);
        return mv;
    }

    @RequestMapping(value = "/create-page", method = RequestMethod.GET)
    public ModelAndView getCreatePage() {
        ModelAndView mv = new ModelAndView("admin/teacher/create-page");
        return mv;
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult create(@RequestParam String name,
                               @RequestParam String content, @RequestParam String level) {
        return CommonResult.success();
    }

    @RequestMapping(value = "/update-page/{id}", method = RequestMethod.GET)
    public ModelAndView getUpdatePage(@PathVariable long id) {
        Teacher teacher = new Teacher();
        ModelAndView mv = new ModelAndView("admin/teacher/update-page");
        mv.addObject("teacher", teacher);
        mv.addObject("content", "ffuck");
        return mv;
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult update(@PathVariable long id, @RequestParam String name,
                               @RequestParam String content, @RequestParam String level) {
        return CommonResult.success();
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult delete(@PathVariable long id) {
        return CommonResult.success();
    }
}
