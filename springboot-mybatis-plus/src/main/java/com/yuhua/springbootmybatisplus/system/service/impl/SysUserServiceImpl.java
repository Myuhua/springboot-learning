package com.yuhua.springbootmybatisplus.system.service.impl;

import com.yuhua.springbootmybatisplus.system.entity.SysUser;
import com.yuhua.springbootmybatisplus.system.mapper.SysUserMapper;
import com.yuhua.springbootmybatisplus.system.service.ISysUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("userService")
@Primary
public class SysUserServiceImpl implements ISysUserService {
    private static final Logger log = LoggerFactory.getLogger(SysUserServiceImpl.class);

    @Autowired
    private SysUserMapper userMapper;

    @Override
    public List<SysUser> selectUserList(SysUser user) {
        return userMapper.selectUserList(user);
    }

}
