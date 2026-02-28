# Linux aliases for cmd

I created this project because I was often making mistakes by switching between cmd and linux terminal.

This project aims to let you run cmd commands with their equivalent linux name.

It's pretty much only usefull for cmd since PowerShell already support a lot of linux aliases by default.

## How to use

Clone the project somewhere in your system

	C:\>cd %APPDATA%

	C:\Users\user\AppData\Roaming>git clone https://github.com/TheWizard012631/linux_alias.git

Add the folder to your PATH

**⚠ Be careful with those commands they can break your system ⚠**

	C:\Users\user\AppData\Roaming>setx PATH "%PATH%;%APPDATA%\linux_alias"

You can also add it system-wide

	C:\Users\user\AppData\Roaming>setx /M PATH "%PATH%;%APPDATA%\linux_alias"


## Notes

- nano will only work if you have bash on your system.
