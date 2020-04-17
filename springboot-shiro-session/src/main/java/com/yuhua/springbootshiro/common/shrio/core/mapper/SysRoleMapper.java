package com.yuhua.springbootshiro.common.shrio.core.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.yuhua.springbootshiro.common.shrio.core.entity.SysRoleEntity;

import java.util.List;

/**
 * @Description 角色DAO
 * @Author Sans
 * @CreateTime 2019/6/14 15:57
 */
public interface SysRoleMapper extends BaseMapper<SysRoleEntity> {

    /**
     * 通过用户ID查询角色集合
     * @Author Sans
     * @CreateTime 2019/6/18 18:01
     * @Param  userId 用户ID
     * @Return List<SysRoleEntity> 角色名集合
     */
    List<SysRoleEntity> selectSysRoleByUserId(Long userId);
	
}