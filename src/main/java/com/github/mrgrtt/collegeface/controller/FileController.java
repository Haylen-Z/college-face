package com.github.mrgrtt.collegeface.controller;

import com.github.mrgrtt.collegeface.domain.dto.CommonResult;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.method.annotation.StreamingResponseBody;

@Controller
public class FileController {

    @RequestMapping(value = "/admin/files/upload", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult upload(@RequestPart MultipartFile file) {
        return CommonResult.success("https://cdn4.buysellads.net/uu/1/41334/1550855391-cc_dark.png");
    }

    @RequestMapping(value = "/files/{key}", method = RequestMethod.GET)
    public ResponseEntity<StreamingResponseBody> download(@PathVariable String key) {
        return ResponseEntity.ok().build();
    }
}
