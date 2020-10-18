package com.github.mrgrtt.collegeface.controller;

import com.github.mrgrtt.collegeface.domain.entity.Article;
import com.github.mrgrtt.collegeface.domain.entity.Information;
import com.github.mrgrtt.collegeface.domain.entity.Recommend;
import com.github.mrgrtt.collegeface.domain.entity.Teacher;
import com.github.mrgrtt.collegeface.service.IArticleService;
import com.github.mrgrtt.collegeface.service.IInformationService;
import com.github.mrgrtt.collegeface.service.IRecommendService;
import com.github.mrgrtt.collegeface.service.ITeacherService;
import org.springframework.beans.factory.annotation.Autowired;
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
    @Autowired
    private IArticleService articleService;
    @Autowired
    private IRecommendService recommendService;
    @Autowired
    private IInformationService informationService;
    @Autowired
    private ITeacherService teacherService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView home() {
        List<Article> news = articleService.getAll(0, 0, 10);
        List<Article> notices = articleService.getAll(1, 0, 10);
        List<Article> topics = articleService.getAll(2, 0, 10);
        List<Recommend> recommends = recommendService.getAll();
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
        List<Article> articles = articleService.getAll(type, start, limit);
        mv.addObject("articles", articles);
        mv.addObject("type", type);
        mv.addObject("start", start);
        mv.addObject("limit", limit);
        return mv;
    }

    @RequestMapping(value = "/articles/{id}", method = RequestMethod.GET)
    public ModelAndView articleContent(@PathVariable long id) {
        ModelAndView mv = new ModelAndView("content");
        Article article = articleService.get(id);
        if (article == null) {
            return new ModelAndView("redirect:/");
        }
        mv.addObject("title", article.getTitle());
        String content = articleService.getContent(id);
        mv.addObject("content", content);
        return mv;
    }

    @RequestMapping(value = "/information/{name}", method = RequestMethod.GET)
    public ModelAndView information(@PathVariable String name) {
        ModelAndView mv = new ModelAndView("content");
        mv.addObject("title", name);
        String content = informationService.getDatail(name);
        if (content == null) {
            return new ModelAndView("redirect:/");
        }
        mv.addObject("content", content);
        return mv;
    }

    @RequestMapping(value = "/teachers", method = RequestMethod.GET)
    public ModelAndView teachers() {
        Map<String, List<Teacher>> levelTeacherMap = new HashMap<>();
        List<Teacher> teachers = teacherService.getAll();
        for (Teacher t: teachers) {
            List<Teacher> ts = levelTeacherMap.get(t.getLevel());
            if (ts == null) {
                ts = new ArrayList<>();
                levelTeacherMap.put(t.getLevel(), ts);
            }
            ts.add(t);
        }
        ModelAndView mv = new ModelAndView("teachers");
        mv.addObject("levelTeacherMap", levelTeacherMap);
        return mv;
    }

    @RequestMapping(value = "/teachers/{id}", method = RequestMethod.GET)
    public ModelAndView teacherContent(@PathVariable long id) {
        ModelAndView mv = new ModelAndView("content");
        Teacher teacher = teacherService.get(id);
        if (teacher == null) {
            return new ModelAndView("redirect:/");
        }
        mv.addObject("title", teacher.getName());
        String content = teacherService.getContent(id);
        mv.addObject("content", content);
        return mv;
    }

}
