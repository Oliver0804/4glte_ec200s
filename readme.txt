copy ppp to /etc 

copy chat and pppd to /sbin
  

run pppd call quectel-ppp &


更改运营商

将ppp/peers/quectel-chat-connect里的

OK AT+CGDCONT=1,"IP","3gnet",,0,0

OK ATD*99#

改为相应的值

移动： at+cgdcont=1,"ip","cmnet"

联通： at+cgdcont=1,"ip","3gnet"

电信： at+cgdcont=1,"ip","ctnet"