package com.github.mrgrtt.collegeface.service;

import java.io.InputStream;

public interface IFileService {

    String add(String hash, InputStream input);

    InputStream get(String hashKey);
}
