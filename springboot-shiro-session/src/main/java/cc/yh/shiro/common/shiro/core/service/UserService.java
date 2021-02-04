package cc.yh.shiro.common.shiro.core.service;

import cc.yh.shiro.common.shiro.core.entity.UserEntity;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * @Description 系统用户业务接口
 * @Author Sans
 * @CreateTime 2019/6/14 15:57
 */
public interface UserService extends IService<UserEntity> {

    /**
     * 根据用户名查询实体
     * @Author Sans
     * @CreateTime 2019/6/14 16:30
     * @Param  username 用户名
     * @Return SysUserEntity 用户实体
     */
    UserEntity selectUserByName(String username);

}

