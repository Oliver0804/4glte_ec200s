先安裝
install minicom
install pppd

替代調布份文件
# copy ppp to /etc 
$sudo cp -R  ppp /etc/

copy chat and pppd to /sbin
$sudo cp pppd /sbin


run pppd call quectel-ppp &




更改运营商

将ppp/peers/quectel-chat-connect里的

OK AT+CGDCONT=1,"IP","3gnet",,0,0

OK ATD*99#

改为相应的值

移动： at+cgdcont=1,"ip","cmnet"

联通： at+cgdcont=1,"ip","3gnet"

电信： at+cgdcont=1,"ip","ctnet"


service
   96  chmod +x lte.py
   97  cat lte.service
   99  sudo cp lte.service /etc/systemd/system/
  100  cd /etc/systemd/system
  102  sudo chmod 644 lte.service
  103  sudo systemctrl lte.service
  105  sudo systemctl daemon-reload
  106  sudo systemctl start lte
  107  sudo systemctl status lte
  108  sudo systemctl enable lte
  
  
    122  chmod +x adcsetspeark.py
  123  sudo cp sound.service /etc/systemd/system/
  124  sudo chmod 644 /etc/systemd/system/sound.service
  125  sudo systemctl daemon-reload
  126  sudo systemctrl enable sound
  127  sudo systemctl enable sound
  128  sudo reboot

