400权限是要保证安全性，否则mongod启动会报错
openssl rand -base64 756 > mongodb.key
chmod 400 mongodb.key


https://www.cnblogs.com/ricklz/p/13237419.html