package com.github.mrgrtt.collegeface.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FrontEndController {

    @RequestMapping(name = "/", method = RequestMethod.GET)
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView("home");
        return mv;
    }

    @RequestMapping(name = "/articles", method = RequestMethod.GET)
    public ModelAndView articles(@RequestParam int type,
                                 @RequestParam(required = false, defaultValue = "0") int start,
                                 @RequestParam(required = false, defaultValue = "16") int limit) {
        ModelAndView mv = new ModelAndView("articles.ftl");
        return mv;
    }

    @RequestMapping(name = "/article/{id}", method = RequestMethod.GET)
    public ModelAndView articleContent(@PathVariable long id) {
        ModelAndView mv = new ModelAndView("articleContent.ftl");
        return mv;
    }

    @RequestMapping(name = "/information/{name}", method = RequestMethod.GET)
    public ModelAndView information(@PathVariable String name) {
        ModelAndView mv = new ModelAndView("information.ftl");
        return mv;
    }

    @RequestMapping(name = "/teachers", method = RequestMethod.GET)
    public ModelAndView teachers() {
        ModelAndView mv = new ModelAndView("teachers.ftl");
        return mv;
    }

    @RequestMapping(name = "/teacher/id", method = RequestMethod.GET)
    public ModelAndView teacherContent() {
        ModelAndView mv = new ModelAndView("teacherContent.ftl");
        return mv;
    }


}
