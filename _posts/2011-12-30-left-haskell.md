---
layout: default
title: 博客就这样完成了
tags:
  - Python
  - Jekyll
---
浏览器历史应当显化, 成为树状, 这样浏览有感觉  
  
# 格式转化工作
将原先的博客格式转到 Jekyll 来, 用 Python 转格式  
使用 `Python3`, `os.listdir('.')` 读取目录  
注意 `print` 需括号, 迭代数组取出内容的而非序号  
`open ('name', 'r')` 返回只读文件对象  
`for/in` 读取, 写完需要用 `file.close()` 关闭  
写文件的方式, 知识起了开始写脚本  
  
	file_object = open('new_file', 'w')
	file_object.write ('texts\nnnext_line')
	file_object.close ()
发现逐行读取文件不是字符串, 用 `str()` 转化  
然后 `\n` 在句尾, 尝试用 `[:]` 转换, 搞定  
半个多小时很短的脚本, 不够熟, 出错两次结束  
然后手工改每个文件, `markdown` 疼在末尾空格  
