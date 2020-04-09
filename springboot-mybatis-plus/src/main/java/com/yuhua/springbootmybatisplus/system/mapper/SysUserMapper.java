package com.yuhua.springbootmybatisplus.system.mapper;

import com.yuhua.springbootmybatisplus.system.entity.SysUser;

import java.util.List;

public interface SysUserMapper
{
    List<SysUser> selectUserList(SysUser sysUser);

}
