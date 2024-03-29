CREATE DATABASE IF NOT EXISTS icarus
DEFAULT CHARACTER SET utf8
-- DEFAULT COLLATE utf8_chinese_ci;
DEFAULT COLLATE utf8_general_ci;


/*用户表*/
CREATE TABLE `sys_user` (
                            `id` INT NOT NULL AUTO_INCREMENT COMMENT '自增ID',
                            `login_name` VARCHAR ( 50 ) NOT NULL DEFAULT '' COMMENT '登录名',
                            `password` VARCHAR ( 255 ) NOT NULL DEFAULT '' COMMENT '登录密码',
                            `user_name` VARCHAR ( 50 ) DEFAULT NULL COMMENT '用户名',
                            `phone_number` VARCHAR ( 50 ) DEFAULT NULL COMMENT '手机号',
                            `email` VARCHAR ( 50 ) DEFAULT NULL COMMENT '邮箱',
                            `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                            `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                            `create_by` CHAR ( 50 )  NOT NULL DEFAULT '' COMMENT '创建者',
                            `update_by` CHAR ( 50 )  NOT NULL DEFAULT '' COMMENT '更新者',
                            `is_deleted`  TINYINT (1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除标识 0：未删除 1：删除',
                            PRIMARY KEY ( `id` )
) ENGINE = INNODB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表';

INSERT INTO icarus.sys_user (login_name, password, user_name, phone_number, email, create_time, update_time, create_by, update_by, is_deleted)
VALUES ('admin', '123456', 'hong', '18576710402', 'gg.hilock@gmail.com', DEFAULT, DEFAULT, 'sys_admin', 'sys_admin', DEFAULT);

COMMIT;
