# Chatbot_Dev
API server源碼及含DB之docker-compose.yml  
* 9/6 新增  
mysql container 之docker-compose.yml  
mysql_init 用於初始客製化資料庫

* 9/7 程式第一 次上傳
將docker-compose.yml檔加入jupyter
設計接口
post /users 有一個變數的格式debug中

* 9/7 (晚) API server 大致成形
都放在code/code.ipynb中
目前 get /users 沒有用queryString 而是將資料庫全部抓出來
之後再加備註

* 9/10 
新增了備註
新增了logging套件和put /users接口
put /users還有些許問題要改善

* 9/11
解決了sql的一些問題
解決了post跟put接口的一些問題


* 9/14 (devops)
將jupyter與db於docker-compose進行links
將code.ipynb打包為code.py
將jupyter的CMD預設執行code.py開啟API服務

* 9/15
將所有image更改為dockerfile形式

* 9/16 （devops）
開發完成 將jupyter 替換為ubuntu dockerfile 並更名為chatbot_api
新增資料夾dockerfile來放置dockerfile檔案
新增dockerfile-api及更新docker-compose
更改code.py延時100秒連線資料庫

* 9/17 （開發）
發現自己的docker-compose被改動，改回成之前舊有的版整本
並新增lopgging套件的更新程式碼

