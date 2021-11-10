create table t_sku(
    id bigint unsigned primary key auto_increment comment '主键',
    spu_id bigint unsigned not null comment '产品Id',
    title varchar(200) not null comment '商品标题',
    image json comment '商品图片',
    price decimal(10, 2) unsigned not null comment '价格',
    param json not null comment '参数',
    saleable boolean not null comment '是否上架',
    valid boolean not null comment '是否有效',
    create_time datetime not null default now() comment '添加时间',
    last_update_time datetime not null default now() comment '最后修改时间',
    index idx_spu_id(spu_id),
    index idx_saleable(saleable),
    index idx_valid(valid)
) comment = '商品表';

INSERT INTO `t_sku` VALUES (1, 1, 'Xiaomi/小米 小米9 8GB+128GB 全息幻彩紫 移动联通电信全网通4G手机', '{\"desc\": [\"http://127.0.0.1/3.jpg\", \"http://127.0.0.1/4.jpg\"], \"facade\": [\"http://127.0.0.1/1.jpg\", \"http://127.0.0.1/2.jpg\"]}', 3299.00, '{\"CPU\": \"骁龙855\", \"内存\": 128, \"电池\": 4000, \"运存\": 8, \"屏幕尺寸\": 6.39}', 1, 1, '2019-04-05 18:52:34', '2019-04-05 18:52:34');
INSERT INTO `t_sku` VALUES (2, 1, 'Xiaomi/小米 小米9 8GB+128GB 全息幻彩蓝 移动联通电信全网通4G手机', '{\"desc\": [\"http://127.0.0.1/3.jpg\", \"http://127.0.0.1/4.jpg\"], \"facade\": [\"http://127.0.0.1/1.jpg\", \"http://127.0.0.1/2.jpg\"]}', 3299.00, '{\"CPU\": \"骁龙855\", \"内存\": 128, \"电池\": 4000, \"运存\": 8, \"屏幕尺寸\": 6.39}', 1, 1, '2019-04-05 18:54:23', '2019-04-05 18:54:23');
INSERT INTO `t_sku` VALUES (3, 1, 'Xiaomi/小米 小米9 6GB+128GB 全息幻彩蓝 移动联通电信全网通4G手机', '{\"desc\": [\"http://127.0.0.1/3.jpg\", \"http://127.0.0.1/4.jpg\"], \"facade\": [\"http://127.0.0.1/1.jpg\", \"http://127.0.0.1/2.jpg\"]}', 2999.00, '{\"CPU\": \"骁龙855\", \"内存\": 128, \"电池\": 4000, \"运存\": 6, \"屏幕尺寸\": 6.39}', 1, 1, '2019-04-05 18:55:33', '2019-04-05 18:55:33');
INSERT INTO `t_sku` VALUES (4, 1, 'Xiaomi/小米 小米9 6GB+128GB 深空灰 移动联通电信全网通4G手机', '{\"desc\": [\"http://127.0.0.1/3.jpg\", \"http://127.0.0.1/4.jpg\"], \"facade\": [\"http://127.0.0.1/1.jpg\", \"http://127.0.0.1/2.jpg\"]}', 2999.00, '{\"CPU\": \"骁龙855\", \"内存\": 128, \"电池\": 4000, \"运存\": 6, \"屏幕尺寸\": 6.39}', 1, 1, '2019-04-05 18:56:25', '2019-04-05 18:56:25');