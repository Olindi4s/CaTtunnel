echo  "\e[32m                                                                                                                            \e[0m" 
echo  "\e[32m                             /|_/|          _/_/_/              _/      _/                                              _/  \e[0m" 
echo  "\e[32m             _______________| @.@|       _/          _/_/_/  _/_/_/_/_/_/_/_/  _/    _/  _/_/_/    _/_/_/      _/_/    _/   \e[0m" 
echo  "\e[32m            (______         >\_C/< ---  _/        _/    _/    _/      _/      _/    _/  _/    _/  _/    _/  _/_/_/_/  _/    \e[0m" 
echo  "\e[32m                  / ______  _/____)    _/        _/    _/    _/      _/      _/    _/  _/    _/  _/    _/  _/        _/     \e[0m"  
echo  "\e[32m                 / /\ \   \ \           _/_/_/    _/_/_/      _/_/    _/_/    _/_/_/  _/    _/  _/    _/    _/_/_/  _/      \e[0m"  
echo  "\e[32m                (_/  \_) - \_)                                                                                              \e[0m"  
echo  "\e[31m                                                                                                         by [Olindi4s]      \e[0m" 
echo  "\e[33m                                                                                    [github.com/olindi4s]             v1.0      \e[0m" 

trap ctrl_c INT
ctrl_c() {
clear
echo "\033[33m[*] (Ctrl + C ) CaTtunnel Kapandı ..."
echo ""
exit 
}

if [ "$(id -u)" -eq 0 ]
then
	echo""
else
	echo "\e[31m[HATA]LÜTFEN SUDO İLE ÇALIŞTIR.\e[0m"
		exit 1
fi

ngrokid=0
ngrokcontrol=/usr/local/bin/ngrok
if [ -f "$ngrokcontrol" ]
then
	echo ""
else
	echo "\e[31m[-]NGROK YÜKLÜ DEĞİL \e[0m"
	ngrokid=1
fi

arduinoid=0
arduinocontrol=/opt/CaTtunnel/CaTinstall/arduino-1.8.12
if [ -d "$arduinocontrol" ]
then
	echo ""
else
	echo "\e[31m[-]ARDUİNO YÜKLÜ DEĞİL \e[0m"
	arduinoid=1
fi

apache2id=0
apache2control=/usr/share/apache2
if [ -d "$apache2control" ]
then
	echo ""
else
	echo "\e[31m[-]APACHE2 YÜKLÜ DEĞİL \e[0m"
	apache2id=1
fi


sublid=0
sublimetextcontrol=/opt/sublime_text
if [ -d "$sublimetextcontrol" ]
then
	echo ""
else
	echo "\e[31m[-]SUBLIME TEXT YÜKLÜ DEĞİL \e[0m"
	sublid=1
fi

pythonid=0
pythoncontrol=/usr/share/python3
if [ -d "$pythoncontrol" ]
then
	echo ""
else
	echo "\e[31m[-]PYTHON3 YÜKLÜ DEĞİL \e[0m"
	pythonid=1
fi

unzipid=0
unzipcontrol=/usr/bin/unzip
if [ -f "$unzipcontrol" ]
then
	echo ""
else
	echo "\e[31m[-]UNZİP YÜKLÜ DEĞİL \e[0m"
	unzipid=1
fi

xtermid=0
xtermcontrol=/usr/bin/xterm
if [ -f "$xtermcontrol" ]
then
	echo ""
else
	echo "\e[31m[-]XTERM YÜKLÜ DEĞİL \e[0m"
	xtermid=1
fi
sleep 1


if [ $apache2id -eq 0 ]
then
	echo""
else
	echo "\e[31m[HATA]EKSİK BİR ŞEY VAR... LÜTFEN[==>]CATİNSTALL[<==] BETİĞİNİ ÇALIŞTIR.\e[0m"
	exit 1
fi

if [ $sublid -eq 0 ]
then
	echo""
else
	echo "\e[31m[HATA]EKSİK BİR ŞEY VAR... LÜTFEN[==>]CATİNSTALL[<==] BETİĞİNİ ÇALIŞTIR.\e[0m"
	exit 1
fi

if [ $ngrokid -eq 0 ]
then
	echo""
else
	echo "\e[31m[HATA]EKSİK BİR ŞEY VAR... LÜTFEN[==>]CATİNSTALL[<==] BETİĞİNİ ÇALIŞTIR.\e[0m"
	exit 1
fi

if [ $pythonid -eq 0 ]
then
	echo""
else
	echo "\e[31m[HATA]EKSİK BİR ŞEY VAR... LÜTFEN[==>]CATİNSTALL[<==] BETİĞİNİ ÇALIŞTIR.\e[0m"
	exit 1
fi

if [ $arduinoid -eq 0 ]
then
	echo""
else
	echo "\e[31m[HATA]EKSİK BİR ŞEY VAR... LÜTFEN[==>]CATİNSTALL[<==] BETİĞİNİ ÇALIŞTIR.\e[0m"
	exit 1
fi
if [ $unzipid -eq 0 ]
then
	echo""
else
	echo "\e[31m[HATA]EKSİK BİR ŞEY VAR... LÜTFEN[==>]CATİNSTALL[<==] BETİĞİNİ ÇALIŞTIR.\e[0m"
	exit 1
fi
if [ $xtermid -eq 0 ]
then
	echo""
else
	echo "\e[31m[HATA]EKSİK BİR ŞEY VAR... LÜTFEN[==>]CATİNSTALL[<==] BETİĞİNİ ÇALIŞTIR.\e[0m"
	exit 1
fi

echo  "\e[1;37;41m ==> [SERVER DOSYALARI KOPYALANIYOR] <== \e[0m\n"
sleep 1
cd CaTserver
cp -r html /var/www/
cd /var/www/html
mkdir log
echo  "\e[32m[CaTtunnel@Olindi4s]=> Server Dosyalari Kopyalandi...\e[0m "
sleep 1
service apache2 start
echo  "\e[32m[CaTtunnel@Olindi4s]=> Apache Server Aktif...\e[0m "
sleep 1
echo ""
echo  "\e[1;37;41m ==> [NGROK AŞAMASI BAŞLATILDI]  <== \e[0m\n"
sleep 1
echo  "\e[32m[CaTtunnel@Olindi4s]=> Ngrok Başlatılıyor...\e[0m "
cd ~
xterm -title "Ngrok Panel" -bg "#000000" -fg "#1ec503" -geometry 159x70-0-0 -e ngrok http 80  &
echo  "\e[32m[CaTtunnel@Olindi4s]=> Dışa Açılan Url Adresini Yaz...(Unutma!! CTRL-C Yaparsan Ngrok Kapanır!!!!!)\e[0m "
cd /opt/CaTtunnel/CaTspark
subl CaTspark.ino
echo  "\e[32m[CaTtunnel@Olindi4s]=>Ngrok Linkini Belirtilen Yerlere Yazdıktan Sonra ve Dosyayı Kaydet..\e[0m "
echo  "\e[32m[CaTtunnel@Olindi4s]=> Dosyayı Kaydettin mi? Y/N\e[0m "
read kayit
if [ ${kayit} = y ]
then
	echo""
elif [ ${kayit} = Y ]
	then
		echo""
elif [ ${kayit} = N ]
	then
	echo "\e[31mDosyayı Kaydet Ettiğinden Emin Ol!!!\e[0m"
elif [ ${kayit} = n ]
	then
	echo "\e[31mDosyayı Kaydet Ettiğinden Emin Ol!!!\e[0m"
else
	echo""
fi
echo ""

echo  "\e[1;37;41m ==> [SON AŞAMA]<== \e[0m\n"
echo  "\e[31m[CaTtunnel@Olindi4s]=>/opt/CaTtunnel/CaTspark/ Klasörü içerisine Git ve Dosyayı Arduino Programı ile Çalıştır...\e[0m "
echo  "\e[32m[CaTtunnel@Olindi4s]=>Arduino içinde Dosyayı Yükle 60 saniye İbaresi Panele Çıkınca Digispark'ı USB soketine tak. Complate Yazısını Görünce Digispark'ı Çıkart\e[0m "
echo  "\e[1;37;41m ==> [ÇIKMAK İÇİN CTRL C YAPABİLİRSİN.]  <== \e[0m\n"
sleep 1000000
