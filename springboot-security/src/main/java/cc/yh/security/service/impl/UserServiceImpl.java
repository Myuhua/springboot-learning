package cc.yh.security.service.impl;

import cc.yh.security.entity.SysUser;
import cc.yh.security.mapper.UserMapper;
import cc.yh.security.service.IUserService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.toolkit.ObjectUtils;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl extends ServiceImpl<UserMapper, SysUser> implements IUserService {
    @Override
    public boolean updateUser(SysUser user) {
        LambdaUpdateWrapper<SysUser> updateWrapper = new LambdaUpdateWrapper();
        updateWrapper.eq(SysUser::getUserId, user.getUserId());
        return this.update(user, updateWrapper);
    }

    @Override
    public SysUser showUser(SysUser sysUser) {
        LambdaQueryWrapper<SysUser> queryWrapper = new LambdaQueryWrapper();
        queryWrapper.eq(ObjectUtils.isNotEmpty(sysUser.getUserId()), SysUser::getUserId, sysUser.getUserId());
        return this.getOne(queryWrapper);
    }

    @Override
    public List<SysUser> listUsers(SysUser sysUser) {
        LambdaQueryWrapper<SysUser> queryWrapper = new LambdaQueryWrapper();
        queryWrapper.eq(ObjectUtils.isNotEmpty(sysUser.getUsername()), SysUser::getUsername, sysUser.getUsername());
        return this.list(queryWrapper);
    }

    @Override
    public SysUser getUserByName(String username) {
        LambdaQueryWrapper<SysUser> queryWrapper = new LambdaQueryWrapper();
        queryWrapper.eq(SysUser::getUsername, username);
        return this.getOne(queryWrapper);
    }
}
