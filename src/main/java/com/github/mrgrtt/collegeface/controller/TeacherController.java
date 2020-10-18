package com.github.mrgrtt.collegeface.controller;


import com.github.mrgrtt.collegeface.domain.dto.CommonResult;
import com.github.mrgrtt.collegeface.domain.entity.Teacher;
import com.github.mrgrtt.collegeface.service.ITeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

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

    @Autowired
    ITeacherService iTeacherService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getTeachers() {
        ModelAndView mv = new ModelAndView("admin/teacher/teacher");
        //返回老师信息列表
        List<Teacher> teacherList = iTeacherService.getAll();
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
        //添加老师信息
        iTeacherService.add(name,content,level);
        return CommonResult.success();
    }

    @RequestMapping(value = "/update-page/{id}", method = RequestMethod.GET)
    public ModelAndView getUpdatePage(@PathVariable long id) {
        ModelAndView mv = new ModelAndView("admin/teacher/update-page");
        return mv;
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult update(@PathVariable long id, @RequestParam String name,
                               @RequestParam String content, @RequestParam String level) {
        //更新老师信息
        iTeacherService.update(id,name,content,level);
        return CommonResult.success();
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult delete(@PathVariable long id) {
        //删除老师信息
        iTeacherService.delete(id);
        return CommonResult.success();
    }
}
