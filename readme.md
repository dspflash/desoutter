## 3UCS 智联装配（工业互联网）	(http://3ucs.com/x/xworks)
源代码在desoutter文件夹中(90%以上的代码都是使用3UCS BizTool 自动化工具生成，给个性化定制节省了大量的时间，带来了极大的便利，参见http://3ucs.com/x) ，而安装包带有完整源代码，安装完成后源代码在安装目录下（desoutter文件夹，直接下载release的exe安装包，简单方便）。

或下载<a href="https://dspflash.github.io/xrel/xDesoutter_setup_1111.exe">desoutter 安装包</a>

升级时可将新的代码直接覆盖desoutter文件夹的代码

现在您可以使用xone客户端了，超轻量级云应用客户端，高颜值高效灵活稳定(http://3ucs.com/dl56.html)

## 简介
3UCS desoutter是开源的C/S、B/S双架构工厂装配线上智能化装配系统，旨在帮助工厂通过工业互联网技术，实现产品装配工作的提质增效降成本。
采用atlas open protocol 协议与马头(desoutter)控制器、posco控制器实时交互，系统扫描产品二维码后自动按步骤选择螺丝位置、选择相应的电批程序锁螺丝，确保装配的准确高质量，同时自动保存工况数据、曲线数据等，有效保证产品质量的稳定及可追溯。

## 特性
- C/S、B/S双架构，完美运行于手机客户端、电脑客户端和主流浏览器
- 部署简单方便
- 个性化开发定制简单快捷
- 多语言支持（可修改成任意语言版本，修改语言包即可）

## 依赖性
- 3UCS xPlus (http://3ucs.com/x/)
- MySQL

## 演示地址及截图(3UCS XOne客户端登陆)：http://0mes.github.io

[Windows客户端XOne操作演示截图动画](https://dspflash.github.io/res/desoutter/desoutter.gif)

![](https://dspflash.github.io/res/desoutter/desoutter.gif).

音视频演示(3UCS ERP安装部署) http://3ucs.com/video.php?vid=45

音视频演示(3UCS ERP基础功能) http://3ucs.com/video.php?vid=42

视频演示(3UCS ERP手机操作2017)http://3ucs.com/video.php?vid=43

视频演示(3UCS ERP二次开发培训视频2017)http://3ucs.com/video.php?vid=46

音视频演示(x+网页版安装部署) http://3ucs.com/video.php?vid=53

3UCS ERP操作手册: http://3ucs.com/plg/firm/firm.php?d.2.109 .

## 安装

install/install.txt
或直接使用安装包傻瓜式安装即可。

## 源代码说明
Files & Dirs
#BizTool生成的代码文件
1) 	xx.xpj
- BizTool配置文件，"xx"为对应于数据库表名（若保存时设有新名称则是新的文件名）
- bizxml project files, auto saved by biztool
	
2)	xx.xml, xx_GBDEDIT.xml, xx_GBDV.xml, xx_GBOPE.xml, xx_GBOPV.xml
- 自动生成的单页面文件（页面上部分为编辑，下部分为ListView之类的显示）
- auto generated files use 'x'.xpj by biztool

3)	xx_V.xml(数据显示视图页面view), xx_Ve.xml(数据编辑修改页面Edit), xx_Vpg.xml(显示记录数、分页、页码), xx_Vpgop.xml(翻页操作), xx_Vh.xml(编辑，一般无需修改hide for edit), xx_Vs.xml(查询条件代码search for view), xx_Vv.xml(显示视图代码 listctrl etc, for view)
- 自动生成的双页面代码文件
- auto generated files(2 pages, one for view and one for edit)
	
4)	xx_ops.xml
- 自定义的弹出式菜单代码
	
5)	xbs_??.xml
- 用户根文件
- user root layouts.
	
6)	v??.xml manual 
- 手工编辑的代码文件
- composed files
	
7)	??_V.xml(none of ??_Ve,??_Vh files exist)
- 手工编辑的代码文件
- manual composed files
	
	
8)	??_V?m.xml,??_V?m.xml
- 手工编辑修改的代码文件（原始文件为xx_V?.xml文件）
- manual composed files(modified according to ??_V?.xml)
	
rule/		xlogic files invoked in "3)" files

lan/		language files

install/	install scripts and instructions

install/import_example.zip	Demo data(xyz9g.xls,bom_resource.xls,customer.xls,poQuote.xls,sdQuote.xls) and examples for import 

install/orderNoYearMon.sql	sql for OrderNo only with Year and Month

install/costUpgrade	sql for cost upgrade

## 二次开发与个性化定制


## 在线沟通 Discuss
可点击图片与我们在线沟通交流<br/>
Contact us at <a href="http://3ucs.com/xchat/index.php?enterurl=http%3A%2F%2Fgithub.erp.3ucs.com%2F"><img src="http://3ucs.com/images/livechat.png" alt="Chat 在线客服"/></a> if you have feedback, questions or want to chat. 
