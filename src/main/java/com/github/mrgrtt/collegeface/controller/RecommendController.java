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
@RequestMapping("/admin/recommends")
public class RecommendController {

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getRecommends() {
        ModelAndView mv = new ModelAndView("admin/recommend/recommend");
        return mv;
    }

    @RequestMapping(value = "/create-page", method = RequestMethod.GET)
    public ModelAndView getCreatePage() {
        ModelAndView mv = new ModelAndView("admin/recommend/create-page");
        return mv;
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult create(@RequestParam long articleId,
                               @RequestParam String title, @RequestParam String cover) {
        return CommonResult.success();
    }

    @RequestMapping(value = "/update-page/{id}", method = RequestMethod.GET)
    public ModelAndView getUpdatePage(@PathVariable long id) {
        ModelAndView mv = new ModelAndView("admin/recommend/update-page");
        return mv;
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult update(@PathVariable long id, @RequestParam long articleId,
                               @RequestParam String title, @RequestParam String cover) {
        return CommonResult.success();
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult delete(@PathVariable long id) {
        return CommonResult.success();
    }
}
