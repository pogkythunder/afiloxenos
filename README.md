# afiloxenos
Fight xenomania! Terminal utility to learn Computer related terms in your native language.

# Why afiloxenos
In most languages today English is the lingua franca for every field, including computers. Generally speaking, the Greek term for that is xeno-mania, a mania with anything foreign. We reject this slippery slope, thus becoming unhospitable: afiloxenos. With this simple script, a small message 
containing an English term and its translation to your language will pop up every time you open your terminal:

![2021-05-11-055246_571x304_scrot](https://user-images.githubusercontent.com/82233102/117738126-d6d9e580-b1ea-11eb-9635-7629e2f0cf48.png)

# Requirements
To use it, you need the boxes command. It is a command that you can find in most repositories' repos. For Arch, you can download it from the AUR.

# Installation
* Download the script corresponding  to your language. Currently, only Greek is supported.
* Place it in any directory in your home folder
* Make it executable: <code>sudo chmod +x *script*.sh</code>
* Edit your ~/.bashrc and add the path to this script (or <code>echo "*path/to/script.sh*" >> ~/.bashrc</code>)
* <code>source ~/.bashrc</code>
* Enjoy!

# Contribute
Help the cause by translating into your language. Simply edit the script and change the array in the format of

"*English Term or Translated Term*"

and send me the translated file.
