package com.yuhua.springbootshiro.common.shrio.core.service.impl;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.yuhua.springbootshiro.common.shrio.core.mapper.SysMenuMapper;
import com.yuhua.springbootshiro.common.shrio.core.entity.SysMenuEntity;
import com.yuhua.springbootshiro.common.shrio.core.service.SysMenuService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description 权限业务实现
 * @Author Sans
 * @CreateTime 2019/6/14 15:57
 */
@Service("sysMenuService")
public class SysMenuServiceImpl extends ServiceImpl<SysMenuMapper, SysMenuEntity> implements SysMenuService {


    /**
     * 根据角色查询用户权限
     * @Author Sans
     * @CreateTime 2019/6/19 10:14
     * @Param  roleId 角色ID
     * @Return List<SysMenuEntity> 权限集合
     */
    @Override
    public List<SysMenuEntity> selectSysMenuByRoleId(Long roleId) {
        return this.baseMapper.selectSysMenuByRoleId(roleId);
    }
}