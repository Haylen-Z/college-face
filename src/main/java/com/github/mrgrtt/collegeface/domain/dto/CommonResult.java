package com.github.mrgrtt.collegeface.domain.dto;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import org.springframework.http.HttpStatus;

@Getter
@Setter
public class CommonResult {
    private Integer code;
    private String msg;
    private Object data;

    private CommonResult() {}

    public static CommonResult success() {
        CommonResult r = new CommonResult();
        r.setCode(HttpStatus.OK.value());
        r.setMsg(HttpStatus.OK.getReasonPhrase());
        return r;
    }

    public static CommonResult success(Object data) {
        CommonResult r = new CommonResult();
        r.setCode(HttpStatus.OK.value());
        r.setMsg(HttpStatus.OK.getReasonPhrase());
        r.setData(data);
        return r;
    }


    public static CommonResult fail() {
        CommonResult r = new CommonResult();
        r.setCode(HttpStatus.BAD_REQUEST.value());
        r.setMsg(HttpStatus.BAD_REQUEST.getReasonPhrase());
        return r;
    }

    public static CommonResult fail(String msg) {
        CommonResult r = new CommonResult();
        r.setCode(HttpStatus.BAD_REQUEST.value());
        r.setMsg(msg);
        return r;
    }
}
