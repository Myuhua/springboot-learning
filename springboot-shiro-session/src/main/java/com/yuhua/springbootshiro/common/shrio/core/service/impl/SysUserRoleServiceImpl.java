package com.yuhua.springbootshiro.common.shrio.core.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.yuhua.springbootshiro.common.shrio.core.mapper.SysUserRoleMapper;
import com.yuhua.springbootshiro.common.shrio.core.entity.SysUserRoleEntity;
import com.yuhua.springbootshiro.common.shrio.core.service.SysUserRoleService;
import org.springframework.stereotype.Service;

/**
 * @Description 用户与角色业务实现
 * @Author Sans
 * @CreateTime 2019/6/14 15:57
 */
@Service("sysUserRoleService")
public class SysUserRoleServiceImpl extends ServiceImpl<SysUserRoleMapper, SysUserRoleEntity> implements SysUserRoleService {

}