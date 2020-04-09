package com.yuhua.springbootmybatisplus.system.service;

import com.yuhua.springbootmybatisplus.system.entity.SysUser;

import java.util.List;

public interface ISysUserService
{
    List<SysUser> selectUserList(SysUser user);

}
