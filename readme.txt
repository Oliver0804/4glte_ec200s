copy ppp to /etc 

copy chat and pppd to /sbin
  

run pppd call quectel-ppp &


������Ӫ��

��ppp/peers/quectel-chat-connect���

OK AT+CGDCONT=1,"IP","3gnet",,0,0

OK ATD*99#

��Ϊ��Ӧ��ֵ

�ƶ��� at+cgdcont=1,"ip","cmnet"

��ͨ�� at+cgdcont=1,"ip","3gnet"

���ţ� at+cgdcont=1,"ip","ctnet"