package com.github.mrgrtt.collegeface.controller;

import com.github.mrgrtt.collegeface.domain.entity.Article;
import com.github.mrgrtt.collegeface.domain.entity.Recommend;
import com.github.mrgrtt.collegeface.domain.entity.Teacher;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDateTime;
import java.util.*;

@Controller
public class FrontEndController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView home() {
        List<Article> news = new ArrayList<>();
        List<Article> notices = new ArrayList<>();
        List<Article> topics = new ArrayList<>();
        List<Recommend> recommends = new ArrayList<>();
        ModelAndView mv = new ModelAndView("home");
        mv.addObject("news", news);
        mv.addObject("notices", notices);
        mv.addObject("topics", topics);
        mv.addObject("recommends", recommends);
        return mv;
    }

    @RequestMapping(value = "/articles", method = RequestMethod.GET)
    public ModelAndView articles(@RequestParam int type,
                                 @RequestParam(required = false, defaultValue = "0") int start,
                                 @RequestParam(required = false, defaultValue = "16") int limit) {
        ModelAndView mv = new ModelAndView("articles");
        List<Article> articles = new ArrayList<>();
        mv.addObject("articles", articles);
        mv.addObject("type", type);
        mv.addObject("start", start);
        mv.addObject("limit", limit);
        return mv;
    }

    @RequestMapping(value = "/articles/{id}", method = RequestMethod.GET)
    public ModelAndView articleContent(@PathVariable long id) {
        ModelAndView mv = new ModelAndView("content");
        mv.addObject("title", "文章标题");
        String content = "<h1>fuck</h1><p> fjewf 卷佛i我那个</p>";
        mv.addObject("content", content);
        return mv;
    }

    @RequestMapping(value = "/information/{name}", method = RequestMethod.GET)
    public ModelAndView information(@PathVariable String name) {
        ModelAndView mv = new ModelAndView("content");
        mv.addObject("title", name);
        String content = "<h1>fuck</h1><p> fjewf 卷佛i我那个</p>";
        mv.addObject("content", content);
        return mv;
    }

    @RequestMapping(value = "/teachers", method = RequestMethod.GET)
    public ModelAndView teachers() {
        Map<String, List<Teacher>> levelTeacherMap = new HashMap<>();
        ModelAndView mv = new ModelAndView("teachers");
        mv.addObject("levelTeacherMap", levelTeacherMap);
        return mv;
    }

    @RequestMapping(value = "/teachers/{id}", method = RequestMethod.GET)
    public ModelAndView teacherContent(@PathVariable long id) {
        ModelAndView mv = new ModelAndView("content");
        mv.addObject("title", "陈基离");
        String content = "<h1>fuck</h1><p> fjewf 卷佛i我那个</p>";
        mv.addObject("content", content);
        return mv;
    }

}
