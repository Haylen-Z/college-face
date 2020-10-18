package com.github.mrgrtt.collegeface.controller;


import com.github.mrgrtt.collegeface.domain.dto.CommonResult;
import com.github.mrgrtt.collegeface.domain.entity.Information;
import com.github.mrgrtt.collegeface.service.IInformationService;
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
@RequestMapping("/admin/information")
public class InformationController {

    @Autowired
    IInformationService iInformationService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getInformation() {
        ModelAndView mv = new ModelAndView("admin/information/information");

        List<Information> informationList = iInformationService.getAll();

        return mv;
    }

    @RequestMapping(value = "/create-page", method = RequestMethod.GET)
    public ModelAndView getCreatePage() {
        ModelAndView mv = new ModelAndView("admin/information/create-page");
        return mv;
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult create(@RequestParam String name, @RequestParam String detail) {
        iInformationService.add(name,detail);
        return CommonResult.success();
    }

    @RequestMapping(value = "/update-page/{id}", method = RequestMethod.GET)
    public ModelAndView getUpdatePage(@PathVariable long id) {
        ModelAndView mv = new ModelAndView("admin/information/update-page");
        return mv;
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult update(@PathVariable long id, @RequestParam String name, @RequestParam String detail) {
        iInformationService.update(id,name,detail);
        return CommonResult.success();
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult delete(@PathVariable long id) {
        iInformationService.delete(id);
        return CommonResult.success();
    }

}
