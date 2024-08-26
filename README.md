# How to install everything you need for CS3432 when you have an Apple M1

Follow ALL steps, in order.

## 0. Prerequisites

These instructions are specific to Apple M1. To check if you have an Apple M1, click the Apple menu on the top-left corner of your screen, then select "About This Mac". In the window that appears, under the "Overview" tab, the "Chip" section should read "Apple M1".

## 1. Install Homebrew

Homebrew is a package manager. You'll use it to install some of the remaining software.

1. Install Xcode from the Mac App Store. Open Xcode at least once. If you see the message "Install additional required components?", select "Install".
1. From Terminal, install [Homebrew](https://brew.sh/): `$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

## 2. Install Emacs

From Terminal, install Emacs using brew: `$ brew install emacs`

## 3. Install Git

From Terminal, install Git using brew: `$ brew install git`

## 4. Install tools for MSP430

The following instructions assume default download and install locations. Paths may change with future updates.
1. Download [UniFlash installer for macOS](https://www.ti.com/tool/UNIFLASH#downloads). Double-click the disk image to mount it. Run the installer: `$ /Volumes/UniFlash/uniflash_sl.7.0.0.3615.app/Contents/MacOS/osx-x86_64`
1. Download [MSP430 GCC all-in-one installer for macOS](https://www.ti.com/tool/MSP430-GCC-OPENSOURCE#downloads). Run the installer: `$ sudo ~/Downloads/msp430-gcc-full-osx-installer-9.3.1.2.app/Contents/MacOS/osx-x86_64`
1. Clone this repository using git: `$ git clone https://github.com/joneavila/msp430-m1`
1. Change the current working directory to the directory the repository was cloned into: `$ cd msp430-m1`
1. Run the install script: `$ bash install.sh`

Note: You must run msp430 tools from bash. Enter bash with: `$ bash` Exit bash with: `$ exit`
