package cc.yh.shiro.common.shiro.core.service.impl;

import cc.yh.shiro.common.shiro.core.entity.SysUserRoleEntity;
import cc.yh.shiro.common.shiro.core.mapper.SysUserRoleMapper;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cc.yh.shiro.common.shiro.core.service.SysUserRoleService;

/**
 * @Description 用户与角色业务实现
 * @Author Sans
 * @CreateTime 2019/6/14 15:57
 */
@Service("sysUserRoleService")
public class SysUserRoleServiceImpl extends ServiceImpl<SysUserRoleMapper, SysUserRoleEntity> implements SysUserRoleService {

}