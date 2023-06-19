# GenshinAccountSwitcher

[简体中文](readme.md)

Genshin Account Switcher is a tool that allows you to switch accounts for the Chinese version of the game "Genshin Impact" without the need to input your password or verify through SMS.

## How to Use

### First-Time Setup

1. Right-click on `switcher.bat` and select "Edit" (if using Windows 11, click "Show more options" first) to open it with Notepad.
2. Edit line 7 to set the path to your Genshin Impact installation directory by adding your own path after `set genshinDir=`, then save the file.

### Saving an Account

1. Make sure that you have logged in to a Genshin Impact account (e.g. with UID 114514191), and that it can be logged in again without entering your password after restarting the game (sometimes I forget and have to enter my password twice).
2. Run `saver.bat`, enter a nickname for the account that is distinct and easy to remember (e.g. "114"), and press Enter.
3. If the process is successful, a file called `nickname.reg` (e.g. `114.reg`) will be generated in the same directory.
4. Press any key to close the window.

### Switching Accounts

1. Make sure that Genshin Impact is closed. If it is currently running, close it.
2. There are two methods to switch accounts:

  * Method 1: Drag and drop the `reg` file (e.g. `114.reg`) directly onto `switcher.bat`, and release the mouse button.
  * Method 2: Run `switcher.bat`, follow the prompts, and enter the nickname (e.g. `114`) when prompted.

3. If the process is successful, the program will prompt you and attempt to launch Genshin Impact.
4. Press any key to close the window.

# Notes

- This tool is designed for the Chinese version of Genshin Impact, and has not been tested on other servers.

# About the Author

I wrote this tool in one hour to help my busy friend manage his accounts and save me from having to enter verification codes every day. Inspired by [Bilibili: 猫猫和猫尾势不两立](https://www.bilibili.com/read/cv11004659/), I hope it will be useful to you as well.

baisebaoma 2023.6.20
