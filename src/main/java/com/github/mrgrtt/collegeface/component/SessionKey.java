package com.github.mrgrtt.collegeface.component;

public enum SessionKey {
    USER_ID("SESSION_USER_ID");

    private String key;

    SessionKey(String key) {
        this.key = key;
    }

    public String getKey() {
        return key;
    }
}
