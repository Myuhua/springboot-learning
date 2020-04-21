package com.yuhua.springbootshiro.common.shrio.core.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.yuhua.springbootshiro.common.shrio.core.entity.SysMenuEntity;

import java.util.List;

/**
 * @Description 权限DAO
 * @Author Sans
 * @CreateTime 2019/6/14 15:57
 */
public interface SysMenuMapper extends BaseMapper<SysMenuEntity> {

    /**
     * 根据角色查询用户权限
     * @Author Sans
     * @CreateTime 2019/6/19 10:14
     * @Param  roleId 角色ID
     * @Return List<SysMenuEntity> 权限集合
     */
    List<SysMenuEntity> selectSysMenuByRoleId(Long roleId);
	
}
