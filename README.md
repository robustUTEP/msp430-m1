# Apple M Series Chip CS3432 Setup Guide
 
Please follow each step to ensure success.
 
## 0. Prerequisites
 
- Confirm your device is of M series:  
  **System Settings -> General -> About -> Chip** (If it mentions "M," proceed as directed. If it mentions "Intel," follow the x64 Intel guide.)
 
- **IMPORTANT**: Before proceeding, ensure your device is completely up to date:  
  **System Settings -> General -> Software Update**
 
 
## 1. Install Xcode
 
Xcode handles the download of necessary dependencies and tools, so you won’t need to worry about managing them yourself.\
Perform the following:  
 
**App Store -> Search -> Xcode -> Get**  
- Once installed, open the application. If prompted with “Install additional required components?”, select “Install.”
 
## 2. Acess the Terminal
 
Since macOS is Unix-based, you can use the terminal on your device directly without needing to set up a separate Linux subsystem. Throughout this course, the terminal will be essential as you learn the basics of navigation and become familiar with fundamental commands for managing files and executing programs efficiently.  
 
- **Spotlight Search (Command + Space) -> type "terminal" -> press return**
 
## 3. Install Homebrew
 
Homebrew is a package manager for macOS that you'll use to install the required tools.
 
From within your terminal, execute the following to install [Homebrew](https://brew.sh/):  
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
 
## 4. Install Bash
 
Within your terminal, the default macOS shell is zsh, but it is critical that you use Bash throughout this course. Each time you open your terminal it will most likely be in zsh by default. To switch to Bash, simply type `bash`. To change the default startup to Bash, do the following: **System Settings -> Users & Groups -> *Right click on your profile* Advanced Options -> Enter Password -> Login Shell -> Drop Down list, choose /bin/bash**
 
It is also important that Bash is up to date; to do so, execute the following command in your terminal:
```bash
brew install bash
```
 
Once installed, please fully restart your terminal and relaunch it.
 
## 5. Install Git
 
Git is a tool that helps you manage and track changes to your code while also being able to work with others.
 
To install, execute the following:
```bash
brew install git
```
 
## 6. Install MSP430 Tools
 
**The following instructions assume default download and install locations. Paths may change with future updates.**  
Please follow the steps in orderly fashion:
1. Download [UniFlash installer for macOS](https://www.ti.com/tool/UNIFLASH#downloads). Double-click the disk image to mount it.  
   - Run the installer:
     ```bash
     /Volumes/UniFlash/uniflash_sl.7.0.0.3615.app/Contents/MacOS/osx-x86_64
     ```
2. Download [MSP430 GCC all-in-one installer for macOS](https://www.ti.com/tool/MSP430-GCC-OPENSOURCE#downloads).  
   - Run the installer:
     ```bash
     sudo ~/Downloads/msp430-gcc-full-osx-installer-9.3.1.2.app/Contents/MacOS/osx-x86_64
     ```
4. Clone this repository using git:  
   ```bash
   git clone https://github.com/robustUTEP/msp430-m1
   ```
6. Change the current working directory to the directory the repository was cloned into:  
   ```bash
   cd msp430-m1
   ```
7. Run the install script:  
   ```bash
   bash install.sh
   ```
8. Fully restart your terminal once again, and reopen.
 
Important Notice: You must run MSP430 tools with Bash. Enter Bash with: `bash` Exit bash with: `exit`.
