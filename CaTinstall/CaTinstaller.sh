echo  "\e[32m                                                                                                              \e[0m" 
echo  "\e[32m ▄████████    ▄████████     ███      ▄█  ███▄▄▄▄      ▄████████     ███        ▄████████  ▄█        ▄█        \e[0m" 
echo  "\e[32m███    █▀    ███    ███    ▀███▀▀██ ███▌ ███   ███   ███    █▀     ▀███▀▀██   ███    ███ ███       ███        \e[0m"  
echo  "\e[32m███          ███    ███     ███   ▀ ███▌ ███   ███   ███            ███   ▀   ███    ███ ███       ███        \e[0m" 
echo  "\e[32m███        ▀███████████     ███     ███▌ ███   ███ ▀███████████     ███     ▀███████████ ███       ███        \e[0m" 
echo  "\e[32m███    █▄    ███    ███     ███     ███  ███   ███          ███     ███       ███    ███ ███       ███        \e[0m"  
echo  "\e[32m███    ███   ███    ███     ███     ███  ███   ███    ▄█    ███     ███       ███    ███ ███▌    ▄ ███▌    ▄  \e[0m" 
echo  "\e[32m████████▀    ███    █▀     ▄████▀   █▀    ▀█   █▀   ▄████████▀     ▄████▀     ███    █▀  █████▄▄██ █████▄▄██  \e[0m" 
echo  "\e[32m                                                                                         ▀         ▀          \e[0m" 
echo  "\e[31m			 	                                                         by [Olindi4s]                         \e[0m" 

echo  "\e[1;37;41m                                           [==>]SİSTEM KONTROL EDİLİYOR[<==]                                            \e[0m "
sleep 1


if [ "$(id -u)" -eq 0 ]
then
	echo""
else
	echo "\e[31m[ERROR]LÜTFEN SUDO İLE ÇALIŞTIR.\e[0m"
		exit 1
fi

ngrokcontrol=/usr/local/bin/ngrok
if [ -f "$ngrokcontrol" ]
then
	echo "\e[32m[+]NGROK YÜKLÜ \e[0m"
else
	echo "\e[31m[-] NGROK YÜKLÜ DEĞİL \e[0m"
	cd /usr/local/bin
	xterm -title "Ngrok Install" -bg "#000000" -fg "#1ec503" -geometry 159x70-0-0 -e sudo wget https://download2281.mediafire.com/xjkkcd10f2vg/6gtogpkrgsfrag2/ngrok &
	wait 
	echo "\e[32m[+] NGROK YÜKLENDİ \e[0m"
	sleep 1
fi

apache2control=/usr/share/apache2
if [ -d "$apache2control" ]
then
	echo "\e[32m[+]APACHE2 YÜKLÜ \e[0m"
else
	echo "\e[31m[-]APACHE2 YÜKLÜ DEĞİL \e[0m"
	xterm -title "Apache2 install" -bg "#000000" -fg "#1ec503" -geometry 159x70-0-0 -e sudo apt-get install apache2 -y &
	wait
	echo "\e[32m[+]APACHE2 YÜKLENDİ \e[0m"
	sleep 1
fi

arduinocontrol=/usr/share/arduino
if [ -d "$arduinocontrol" ]
then
	echo "\e[32m[+]MEVCUT KURULUM SİLİNİYOR \e[0m"
	xterm -title "Arduino Uninstall" -bg "#000000" -fg "#1ec503" -geometry 159x70-0-0 -e sudo apt-get autoremove arduino &
else
	echo "\e[31m[-]ARDUİNO 1.8.12 YÜKLENİYOR\e[0m"
	xterm -title "Arduino Downloader" -bg "#000000" -fg "#1ec503" -geometry 159x70-0-0 -e sudo wget http://download1483.mediafire.com/gjoq110pwazg/j0778p1prfgvb2n/Arduino.zip &
	wait
	xterm -title "Arduino Downloader" -bg "#000000" -fg "#1ec503" -geometry 159x70-0-0 -e sudo unzip Arduino.zip &
	wait
	cd Arduino
	xterm -title "Arduino install" -bg "#000000" -fg "#1ec503" -geometry 159x70-0-0 -e sudo ./instal.sh &
	wait
	echo "\e[32m[+]ARDUİNO  YÜKLENDİ \e[0m"
	sleep 1
fi


sublimetextcontrol=/opt/sublime_text
if [ -d "$sublimetextcontrol" ]
then
	echo "\e[32m[+]SUBLİME TEXT YÜKLÜ \e[0m"
else
	echo "\e[31m[-]SUBLİME TEXT YÜKLÜ DEĞİL \e[0m"
	xterm -title "Sublime_Text install" -bg "#000000" -fg "#1ec503" -geometry 159x70-0-0 -e wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - &
	wait
	xterm -title "Sublime_Text install" -bg "#000000" -fg "#1ec503" -geometry 159x70-0-0 -e sudo apt-get install apt-transport-https &
	wait
	xterm -title "Sublime_Text install" -bg "#000000" -fg "#1ec503" -geometry 159x70-0-0 -e sudo apt-get install apt-transport-https &
	wait
	xterm -title "Sublime_Text install" -bg "#000000" -fg "#1ec503" -geometry 159x70-0-0 -e echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list &
	wait
	xterm -title "Sublime_Text install" -bg "#000000" -fg "#1ec503" -geometry 159x70-0-0 -e sudo apt-get update &
	sleep 1
	echo  "\e[32m[==>]SUBLİME TEXT EDİYOR YÜKLENİYOR[<==]\e[0m "
	xterm -title "Sublime_Text install" -bg "#000000" -fg "#1ec503" -geometry 159x70-0-0 -e sudo apt-get install sublime-text -y &
	wait
	clear
	echo "\e[32m[+]SUBLIME TEXT  YÜKLENDİ \e[0m"
	sleep 1
fi


pythoncontrol=/usr/share/python3
if [ -d "$pythoncontrol" ]
then
	echo "\e[32m[+]PYTHON3 YÜKLÜ \e[0m"
else
	echo "\e[31m[-]PYTHON3 YÜKLÜ DEĞİL \e[0m"
	xterm -title "Pyton3 install" -bg "#000000" -fg "#1ec503" -geometry 159x70-0-0 -e sudo apt-get install python3 &
	wait
	echo "\e[32m[+]PYTHON3 YÜKLENDİ \e[0m"
fi

sleep 1

unzipcontrol=/usr/bin/unzip
if [ -d "$unzipcontrol" ]
then
	echo "\e[32m[+]UNZİP YÜKLÜ \e[0m"
else
	echo "\e[31m[-]UNZİP YÜKLÜ DEĞİL \e[0m"
	xterm -title "Pyton3 install" -bg "#000000" -fg "#1ec503" -geometry 159x70-0-0 -e sudo apt-get install unzip -y &
	wait
	echo "\e[32m[+]UNZİP YÜKLENDİ \e[0m"
fi

sleep 1





echo  "\e[1;37;41m                                   [==>]HERŞEY HAZIR CATTUNNEL SENİ BEKLİYOR...[<==]                                    \e[0m "
