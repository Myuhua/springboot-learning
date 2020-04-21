package com.yh.springbootshiro.common.shiro.core.service.impl;


import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.yh.springbootshiro.common.shiro.core.mapper.SysMenuMapper;
import com.yh.springbootshiro.common.shiro.core.entity.SysMenuEntity;
import com.yh.springbootshiro.common.shiro.core.service.SysMenuService;
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