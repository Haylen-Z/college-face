package com.github.mrgrtt.collegeface.controller;

import com.github.mrgrtt.collegeface.domain.dto.CommonResult;
import com.github.mrgrtt.collegeface.service.IFileService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.method.annotation.StreamingResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

@Controller
@Slf4j
public class FileController {
    @Autowired
    IFileService fileService;

    @RequestMapping(value = "/admin/files/upload", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult upload(@RequestPart MultipartFile file, HttpServletRequest request) {
        String hash = null;
        try {
            hash = DigestUtils.md5DigestAsHex(file.getInputStream());
            hash = fileService.add(hash, file.getInputStream());
            if (hash == null) {
                return CommonResult.fail();
            }
        } catch (IOException e) {
            log.debug("文件读取出错", e);
            return CommonResult.fail();
        }
        String type = file.getContentType() == null ? "*/*" : file.getContentType();
        String url = request.getScheme() + "://"
                + request.getServerName() + ":" + request.getServerPort()
                + "/files/" + hash + "?contentType="
                + URLEncoder.encode(type, StandardCharsets.UTF_8);
        return CommonResult.success(url);
    }

    @RequestMapping(value = "/files/{key}", method = RequestMethod.GET)
    public ResponseEntity<StreamingResponseBody> download(@PathVariable String key, @RequestParam String contentType) {
        int len = 0;
        InputStream in = fileService.get(key);
        try {
            if (in == null || (len = in.available()) == 0) {
                return ResponseEntity.noContent().build();
            }
        } catch (IOException e) {
            log.debug("文件读出失败", e);
            try {
                in.close();
            } catch (IOException ee){}
        }

        StreamingResponseBody body = new StreamingResponseBody() {
            @Override
            public void writeTo(OutputStream outputStream) throws IOException {
                try {
                    byte[] buff = new byte[1024];
                    int n = 0;
                    BufferedInputStream buffIn = new BufferedInputStream(in);
                    while ((n = buffIn.read(buff)) > 0) {
                        outputStream.write(buff, 0, n);
                    }
                    outputStream.flush();
                } catch (IOException e) {
                    throw  e;
                } finally {
                    outputStream.close();
                    in.close();
                }
            }
        };
        return ResponseEntity.ok()
                .contentType(MediaType.valueOf(contentType)).contentLength(len).body(body);
    }
}
