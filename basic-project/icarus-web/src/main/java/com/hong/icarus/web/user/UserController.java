package com.hong.icarus.web.user;


import com.hong.biz.user.domain.SysUser;
import com.hong.biz.user.service.ISysUserService;
import com.hong.common.core.controller.BaseController;
import com.hong.common.core.page.TableDataInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/user")
public class UserController extends BaseController {

    @Autowired
    private ISysUserService userService;

    @GetMapping("/get_user_by_id")
    public SysUser getUserById(String id) {
        SysUser user = userService.getUserById(id);
        System.out.println(user.toString());
        return user;
    }

    @GetMapping("/get_all_user")
    @ResponseBody
    public TableDataInfo getAllUser() {
        startPage();
        List<SysUser> userList = userService.getAllUser();
        return getDataTable(userList);
    }
}
