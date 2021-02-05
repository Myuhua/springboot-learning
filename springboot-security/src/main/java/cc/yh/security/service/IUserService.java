package cc.yh.security.service;

import cc.yh.security.entity.SysUser;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

public interface IUserService extends IService<SysUser> {

    boolean updateUser(SysUser user);

    SysUser showUser(SysUser sysUser);

    List<SysUser> listUsers(SysUser sysUser);

    SysUser getUserByName(String username);
}
