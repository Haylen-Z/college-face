package com.github.mrgrtt.collegeface.service.impl;

import com.github.mrgrtt.collegeface.service.IFileService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Slf4j
@Service
public class FileServiceImpl implements IFileService {

    private String fileSavePath = "D:\\javaWebWorkPicture";

    @Override
    public String add(String hash, InputStream input) {
        Path savePath = Paths.get(fileSavePath);
        BufferedOutputStream outputStream = null;
        try {
            //目录是否已创建
            if (Files.notExists(savePath)) {
                Files.createDirectory(savePath);
            }
            //文件是否已存在
            Path filePath = savePath.resolve(hash);
            if (Files.exists(filePath)) {
                return hash;
            }
            //保存文件
            Files.createFile(filePath);
            outputStream = new BufferedOutputStream(Files.newOutputStream(filePath));
            byte[] buffer = new byte[1024];
            int n = 0;
            while ((n = input.read(buffer)) >= 0) {
                outputStream.write(buffer, 0, n);
            }
            return hash;
        } catch (IOException e) {
            log.debug("文件保存出错", e);
            return null;
        } finally {
            try {
                input.close();
                if (outputStream != null) {
                    outputStream.close();
                }
            } catch (IOException e){}
        }
    }

    @Override
    public InputStream get(String hashKey) {
        Path filePath = Paths.get(fileSavePath).resolve(hashKey);
        if (Files.notExists(filePath)) {
            return null;
        }
        try {
            return Files.newInputStream(filePath);
        } catch (IOException e) {
            log.debug("读取文件出错", e);
            return null;
        }
    }
}
