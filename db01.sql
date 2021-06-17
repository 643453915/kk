#db01.sql

#功能二：商品的列表
#1：向xz_laptop 商品列表中添加一列pic保存商品图片
USE xz;
ALTER TABLE xz_laptop ADD pic VARCHAR(255);
#2：更新pic列数据
UPDATE xz_laptop SET pic='01.jpg' WHERE lid = 1;
UPDATE xz_laptop SET pic='02.jpg' WHERE lid = 2;
UPDATE xz_laptop SET pic='03.jpg' WHERE lid = 3;
UPDATE xz_laptop SET pic='04.jpg' WHERE lid = 4;
UPDATE xz_laptop SET pic='05.jpg' WHERE lid = 5;
UPDATE xz_laptop SET pic='06.jpg' WHERE lid = 6;
UPDATE xz_laptop SET pic='07.jpg' WHERE lid = 7;
UPDATE xz_laptop SET pic='08.jpg' WHERE lid = 8;
UPDATE xz_laptop SET pic='09.jpg' WHERE lid = 9;
UPDATE xz_laptop SET pic='010.jpg' WHERE lid = 10;
UPDATE xz_laptop SET pic='011.jpg' WHERE lid = 11;
UPDATE xz_laptop SET pic='012.jpg' WHERE lid = 12;
UPDATE xz_laptop SET pic='013.jpg' WHERE lid = 13;
UPDATE xz_laptop SET pic='014.jpg' WHERE lid = 14;
UPDATE xz_laptop SET pic='015.jpg' WHERE lid = 15;
UPDATE xz_laptop SET pic='016.jpg' WHERE lid = 16;
UPDATE xz_laptop SET pic='017.jpg' WHERE lid = 17;
UPDATE xz_laptop SET pic='018.jpg' WHERE lid = 18;
UPDATE xz_laptop SET pic='019.jpg' WHERE lid = 19;
UPDATE xz_laptop SET pic='020.jpg' WHERE lid = 20;
UPDATE xz_laptop SET pic='021.jpg' WHERE lid = 21;
UPDATE xz_laptop SET pic='022.jpg' WHERE lid = 22;
UPDATE xz_laptop SET pic='023.jpg' WHERE lid = 23;
UPDATE xz_laptop SET pic='024.jpg' WHERE lid = 24;
UPDATE xz_laptop SET pic='025.jpg' WHERE lid = 25;
UPDATE xz_laptop SET pic='026.jpg' WHERE lid = 26;
UPDATE xz_laptop SET pic='027.jpg' WHERE lid = 27;
UPDATE xz_laptop SET pic='028.jpg' WHERE lid = 28;
UPDATE xz_laptop SET pic='029.jpg' WHERE lid = 29;
UPDATE xz_laptop SET pic='030.jpg' WHERE lid = 30;
UPDATE xz_laptop SET pic='031.jpg' WHERE lid = 31;
UPDATE xz_laptop SET pic='032.jpg' WHERE lid = 32;
UPDATE xz_laptop SET pic='033.jpg' WHERE lid = 33;
UPDATE xz_laptop SET pic='034.jpg' WHERE lid = 34;
UPDATE xz_laptop SET pic='035.jpg' WHERE lid = 35;
UPDATE xz_laptop SET pic='036.jpg' WHERE lid = 36;
UPDATE xz_laptop SET pic='037.jpg' WHERE lid = 37;
UPDATE xz_laptop SET pic='038.jpg' WHERE lid = 38;
UPDATE xz_laptop SET pic='039.jpg' WHERE lid = 39;
UPDATE xz_laptop SET pic='040.jpg' WHERE lid = 40;
UPDATE xz_laptop SET pic='041.jpg' WHERE lid = 41;
UPDATE xz_laptop SET pic='042.jpg' WHERE lid = 42;
UPDATE xz_laptop SET pic='043.jpg' WHERE lid = 43;
#3：复制mysql控制台执行生效