package com.github.mrgrtt.collegeface.controller;


import com.github.mrgrtt.collegeface.domain.dto.CommonResult;
import com.github.mrgrtt.collegeface.domain.entity.Recommend;
import com.github.mrgrtt.collegeface.service.IRecommendService;
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
@RequestMapping("/admin/recommends")
public class RecommendController {

    @Autowired
    IRecommendService iRecommendService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getRecommends() {
        ModelAndView mv = new ModelAndView("admin/recommend/recommend");
        List<Recommend> recommends = iRecommendService.getAll();
        mv.addObject("recommends", recommends);
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
        //添加推荐信息
        iRecommendService.add(title,articleId,cover);
        return CommonResult.success();
    }

    @RequestMapping(value = "/update-page/{id}", method = RequestMethod.GET)
    public ModelAndView getUpdatePage(@PathVariable long id) {
        Recommend recommend = iRecommendService.get(id);
        if (recommend == null) {
            return new ModelAndView("redirect:/admin/recommends");
        }
        ModelAndView mv = new ModelAndView("admin/recommend/update-page");
        mv.addObject("recommend", recommend);
        return mv;
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult update(@PathVariable long id, @RequestParam long articleId,
                               @RequestParam String title, @RequestParam String cover) {
        //更新推荐信息
        iRecommendService.update(id,title,articleId,cover);
        return CommonResult.success();
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult delete(@PathVariable long id) {
        //删除推荐信息
        iRecommendService.delete(id);
        return CommonResult.success();
    }
}
