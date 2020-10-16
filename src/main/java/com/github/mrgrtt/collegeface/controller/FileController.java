package com.github.mrgrtt.collegeface.controller;

import com.github.mrgrtt.collegeface.domain.dto.CommonResult;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.method.annotation.StreamingResponseBody;

@Controller
public class FileController {

    @RequestMapping(name = "/admin/files/upload", method = RequestMethod.POST)
    public CommonResult upload(@RequestParam MultipartFile file) {
        return CommonResult.success();
    }

    @RequestMapping(name = "/files/{key}", method = RequestMethod.GET)
    public ResponseEntity<StreamingResponseBody> download(@PathVariable String key) {
        return ResponseEntity.ok().build();
    }
}
