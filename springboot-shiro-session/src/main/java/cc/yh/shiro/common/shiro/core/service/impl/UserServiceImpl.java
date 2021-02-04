package cc.yh.shiro.common.shiro.core.service.impl;

import cc.yh.shiro.common.shiro.core.entity.UserEntity;
import cc.yh.shiro.common.shiro.core.mapper.UserMapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cc.yh.shiro.common.shiro.core.service.UserService;

/**
 * @Description 系统用户业务实现
 * @Author Sans
 * @CreateTime 2019/6/14 15:57
 */
@Service("sysUserService")
public class UserServiceImpl extends ServiceImpl<UserMapper, UserEntity> implements UserService {

    /**
     * 根据用户名查询实体
     * @Author Sans
     * @CreateTime 2019/6/14 16:30
     * @Param  username 用户名
     * @Return SysUserEntity 用户实体
     */
    @Override
    public UserEntity selectUserByName(String username) {
        QueryWrapper<UserEntity> queryWrapper = new QueryWrapper<>();
        queryWrapper.lambda().eq(UserEntity::getUsername,username);
        return this.baseMapper.selectOne(queryWrapper);
    }
}