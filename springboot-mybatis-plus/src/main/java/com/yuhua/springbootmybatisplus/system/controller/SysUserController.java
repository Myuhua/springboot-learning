package com.yuhua.springbootmybatisplus.system.controller;

import com.yuhua.springbootmybatisplus.system.entity.SysUser;
import com.yuhua.springbootmybatisplus.system.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
@RequestMapping("/system/user")
public class SysUserController
{
    @Autowired
    private ISysUserService userService;

    @GetMapping("/list")
    public List list(SysUser user)
    {
        return userService.selectUserList(user);
    }

}