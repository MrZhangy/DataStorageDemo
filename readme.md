# iOS 数据保存几种方式总结


1、``NSKeyedArchiver``归档
适合一些小数据，应为归档只能异型性归档保存以及一次性的解压。而且对数据操作比较笨拙，即如果想改动数据的某一小部分，需要假牙整个数据块。
2、``NSUserDefaults``
用来保存应用程序设置和属性、用户保存的数据。用户再次打开程序或开机后这些数据仍然存在。NSUserDefaults可以存储的数据类型包括：NSData、NSString、NSNumber、NSDate、NSArray、NSDictionary。如果要存储其他类型，则需要转换为前面的类型，才能用NSUserDefaults存储。

3、``写入磁盘``
比如图片缓存

4、``sqlite``:用于存储查询需求较多的数据

SQLite擅长处理的数据类型其实与NSUserDefaults差不多，也是基础类型的小数据，只是从组织形式上不同。开发者可以以关系型数据库的方式组织数据，使用SQL DML来管理数据。 一般来说应用中的格式化的文本类数据可以存放在数据库中，尤其是类似聊天记录、Timeline等这些具有条件查询和排序需求的数据。


[iOS数据存储的四种方案对比](http://www.weste.net/2013/3-29/90016.html)

[ iOS 数据保存几种方式总结](http://blog.csdn.net/reylen/article/details/7977418)