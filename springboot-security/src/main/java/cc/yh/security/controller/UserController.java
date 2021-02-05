package cc.yh.security.controller;

import cc.yh.security.entity.SysUser;
import cc.yh.security.service.IUserService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("user")
public class UserController {
    private final IUserService userService;
    @Autowired
    PasswordEncoder passwordEncoder;

    @RequestMapping("/showUser")
    public SysUser showUser(SysUser sysUser) {
        sysUser.setUserId(1L);
        return userService.showUser(sysUser);
    }

    @RequestMapping("/updateUser")
    public boolean updateUser(@RequestBody SysUser sysUser) {
        sysUser.setPassword(passwordEncoder.encode(sysUser.getPassword()));
        return userService.updateUser(sysUser);
    }




}
