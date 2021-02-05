package cc.yh.security.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("t_user")
public class SysUser implements Serializable {
    @TableId(value = "user_id", type = IdType.AUTO)
    private Long userId;
    @TableField(value = "user_name")
    private String username;
    private String userType;
    private String email;
    private String mobileNumber;
    private String sex;
    private String salt;
    private String password;
    private String status;
    private String loginIp;
    private String loginDate;
    private String remark;
    private String createTime;
    private String updateTime;
    private String isDeleted;
    private String isTab;

}
