package com.github.mrgrtt.collegeface.service;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author haylen
 * @since 2020-10-12
 */
public interface IAdminService  {
        public long login(String username, String password);
        public void changePassword(long id,String newPassword);
}
