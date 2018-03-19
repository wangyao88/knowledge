CREATE database `knowledge` DEFAULT CHARACTER SET utf8;

CREATE TABLE `knowledge`.`kg_user` (
  `id` VARCHAR(36) NOT NULL COMMENT '用户表主键',
  `name` VARCHAR(45) NULL COMMENT '用户名',
  `password` VARCHAR(100) NULL COMMENT '密码',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '用户表';


CREATE TABLE `knowledge`.`kg_player` (
  `id` VARCHAR(36) NOT NULL COMMENT '主键',
  `account` VARCHAR(100) NULL COMMENT '账号',
  `nickName` VARCHAR(100) NULL COMMENT '昵称',
  `url` VARCHAR(100) NULL COMMENT '头像',
  `address` VARCHAR(45) NULL COMMENT '地址',
  `level_score` INT NULL COMMENT '积分',
  `level_id` VARCHAR(36) NULL COMMENT '等级外键',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '玩家表';

CREATE TABLE `knowledge`.`kg_level` (
  `id` VARCHAR(36) NOT NULL COMMENT '主键',
  `name` VARCHAR(45) NULL COMMENT '等级名',
  `upper_limit` INT NULL COMMENT '等级积分上限',
  `lower_limit` INT NULL COMMENT '等级积分下限',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '等级表';

CREATE TABLE `knowledge`.`kg_question_type` (
  `id` VARCHAR(36) NOT NULL COMMENT '主键',
  `name` VARCHAR(45) NULL COMMENT '提醒名称',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '题型表';

CREATE TABLE `knowledge`.`kg_question_score` (
  `id` VARCHAR(36) NOT NULL COMMENT '主键',
  `name` VARCHAR(45) NULL COMMENT '名称',
  `score` INT NULL COMMENT '分值',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '分值表';

CREATE TABLE `knowledge`.`kg_question_level` (
  `id` VARCHAR(36) NOT NULL COMMENT '主键',
  `name` VARCHAR(10) NULL COMMENT '名称',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '难易等级表';

CREATE TABLE `knowledge`.`kg_question_bean_category` (
  `bean_id` VARCHAR(36) NOT NULL COMMENT '问题主键',
  `category_id` VARCHAR(36) NULL COMMENT '类型主键',
  PRIMARY KEY (`bean_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '问题和类型关联表';

CREATE TABLE `knowledge`.`kg_question_category` (
  `id` VARCHAR(36) NOT NULL COMMENT '主键',
  `name` VARCHAR(45) NULL COMMENT '名称',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '问题类型';


CREATE TABLE `knowledge`.`kg_answer` (
  `id` VARCHAR(36) NOT NULL COMMENT '主键',
  `content` VARCHAR(200) NULL COMMENT '答案内容',
  `is_correct` TINYINT NULL COMMENT '是否正确答案',
  `question_bean_id` VARCHAR(45) NULL COMMENT '问题主键',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = eucjpms
COMMENT = '答案表';


CREATE TABLE `knowledge`.`kg_question_bean_paper` (
  `paper_id` VARCHAR(36) NOT NULL COMMENT '试卷主键',
  `bean_id` VARCHAR(36) NULL COMMENT '问题主键',
  PRIMARY KEY (`paper_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '试卷问题关联表';


CREATE TABLE `knowledge`.`kg_question_bean` (
  `id` VARCHAR(36) NOT NULL COMMENT '主键',
  `content` VARCHAR(500) NULL COMMENT '问题内容',
  `question_type_id` VARCHAR(36) NULL COMMENT '问题类型主键',
  `question_level_id` VARCHAR(36) NULL COMMENT '问题难易程度主键',
  `question_score_id` VARCHAR(36) NULL COMMENT '分值主键',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '问题表';

CREATE TABLE `knowledge`.`kg_paper` (
  `id` VARCHAR(36) NOT NULL COMMENT '主键',
  `name` VARCHAR(45) NULL COMMENT '试卷名',
  `create_date` DATE NULL COMMENT '创建时间',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '试卷表';

CREATE TABLE `knowledge`.`kg_paper_stats` (
  `id` VARCHAR(36) NOT NULL COMMENT '主键',
  `cost_time` INT NULL COMMENT '考试花费时间',
  `corret_rate` FLOAT NULL COMMENT '正确率',
  `total_score` INT NULL COMMENT '总分',
  `score` INT NULL COMMENT '得分',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '试卷统计表';

CREATE TABLE `knowledge`.`kg_examination` (
  `id` VARCHAR(36) NOT NULL COMMENT '主键',
  `name` VARCHAR(45) NULL COMMENT '考试名',
  `begin_date` DATE NULL COMMENT '开始时间',
  `end_date` DATE NULL COMMENT '结束时间',
  `paper_id` VARCHAR(36) NULL COMMENT '试卷主键',
  `paper_stats_id` VARCHAR(36) NULL COMMENT '考试统计信息主键',
  `player_id` VARCHAR(36) NULL COMMENT '玩家主键',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COMMENT = '考试表';
