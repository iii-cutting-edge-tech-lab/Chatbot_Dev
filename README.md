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
