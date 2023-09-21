# bootSector_OverWriter
<div>
      <img src='https://img.shields.io/badge/Build%20With-nasm-gold?style=for-the-badge&logo=appveyor'/>
      <img src='https://img.shields.io/badge/Write%20For-Education-green?style=for-the-badge&logo=appveyor'/>
      <img src='https://img.shields.io/badge/Version%201.0-blue?style=for-the-badge&logo=appveyor'/>
</div> <br/>

***
## ⚠️ LEGAL DISCLAIMER PLEASE READ!
#### I am the creator and all those associated with the development and production of this program are not responsible for any actions and or damages caused by this software. You bear the full responsibility of your actions and acknowledge that this software was created for educational purposes only. This software's intended purpose is NOT to be used maliciously, or on any system that you do not have own or have explicit permission to operate and use this program on. By using this software, you automatically agree to the above.
***

## Introduction
This software has been written only for education. Software works that it get data from boot sector partition MBR or GTP it doesn't make any diffrence and replace data to 0x0000 hex data. Finally delete boot sector. The OS works that when you turn on pc the BIOS loaded boot menu automaticly, after successfully run a program. BIOS won't load 

***
## Instalation
### Download a repo<br/>

    git clone https://github.com/Sponton1x/mbroverwriter

### Compile a program </br>

    nasm -f bin main.asm -o main.bin

### ⚠️Run a program⚠️ </br>

    ./main.bin
***

## 🆘Help🆘
If you runned a program and it works. The will need to reinstall OS, but if you has backup use that. 

## License
Software is released under MIT License <br/>
