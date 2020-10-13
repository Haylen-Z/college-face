package com.github.mrgrtt.collegeface.service;

import java.io.InputStream;

public interface IFileService {
    public String add(String hash, InputStream input);
    public InputStream get();
}
