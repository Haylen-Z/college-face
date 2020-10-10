package com.github.mrgrtt.collegeface;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.github.mrgrtt.collegeface.mapper")
public class CollegefaceApplication {

    public static void main(String[] args) {
        SpringApplication.run(CollegefaceApplication.class, args);
    }

}
