CREATE database `knowledge` DEFAULT CHARACTER SET utf8;

CREATE TABLE `knowledge`.`kg_user` (
  `id` VARCHAR(36) NOT NULL COMMENT '用户表主键',
  `name` VARCHAR(45) NULL COMMENT '用户名',
  `password` VARCHAR(100) NULL COMMENT '密码',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '用户表';
