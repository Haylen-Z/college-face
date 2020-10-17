package com.github.mrgrtt.collegeface.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FrontEndController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView("home");
        return mv;
    }

    @RequestMapping(value = "/articles", method = RequestMethod.GET)
    public ModelAndView articles(@RequestParam int type,
                                 @RequestParam(required = false, defaultValue = "0") int start,
                                 @RequestParam(required = false, defaultValue = "16") int limit) {
        ModelAndView mv = new ModelAndView("articles");
        return mv;
    }

    @RequestMapping(value = "/articles/{id}", method = RequestMethod.GET)
    public ModelAndView articleContent(@PathVariable long id) {
        ModelAndView mv = new ModelAndView("content");
        mv.addObject("title", "文章标题");
        return mv;
    }

    @RequestMapping(value = "/information/{name}", method = RequestMethod.GET)
    public ModelAndView information(@PathVariable String name) {
        ModelAndView mv = new ModelAndView("content");
        mv.addObject("title", name);
        return mv;
    }

    @RequestMapping(value = "/teachers", method = RequestMethod.GET)
    public ModelAndView teachers() {
        ModelAndView mv = new ModelAndView("teachers");
        return mv;
    }

    @RequestMapping(value = "/teachers/{id}", method = RequestMethod.GET)
    public ModelAndView teacherContent(@PathVariable long id) {
        ModelAndView mv = new ModelAndView("content");
        mv.addObject("title", "陈基离");
        return mv;
    }

}
