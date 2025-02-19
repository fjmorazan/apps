/* === This file is part of Calamares - <https://github.com/calamares> ===
 *
 *   Copyright 2020 - 2023, Anke Boersma <demm@kaosx.us>
 *
 *   Calamares is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   Calamares is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with Calamares. If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
//import QtQuick.Controls.Material 2.1

Item {
    width: parent.width
    height: parent.height
    //focus: true
    //color: "#f2f2f2"

    Flickable {
        id: flick
        anchors.fill: parent
        contentHeight: 4200
        
        ScrollBar.vertical: ScrollBar {
            id: fscrollbar 
            width: 5
            policy: ScrollBar.AlwaysOn
        }

        TextArea {
            id: intro
            //x: 130
            //y: 8
            width: parent.width
            font.pointSize: 12
            textFormat: Text.RichText
            antialiasing: true
            activeFocusOnPress: false
            wrapMode: Text.WordWrap

            text: qsTr("<h3>KaOS - 2023.04</h3>
            <p>To celebrate ten years of KaOS a new ISO is released.</p>

            <p>Not only is there a new stable ISO released, but to look forward to the next ten years, there is also a Plasma 6 preview ISO available.  This ISO is not installable, only meant to test in Live mode.  The installer Calamares is not ready for Qt 6/Plasma 6, nor are there many KDE Applications available in their Qt6 version.  This ISO is only linked in the News item, not available from the Download page.</p>
            
            <p>And to look back, there is an option added to play music during the install.  This was a common feature some 10-15 years ago, but has never been available in KaOS, thus available this one time, ten years later.</p>
            
            <p>For the Plasma desktop, the latest Plasma (5.27.4), KDE Gear (23.03.90), and Frameworks (5.105.0) are included. All built on <b>Qt 5.15.8+</b>. Among the many changes included in KDE Gear 23.04 are the option to run Dolphin with kio-admin, thus giving the option again to run Dolphin with administrator rights from the menu.</p>

            <p>Updates to the base of the system included a OpenSSL 3.0.8, CLang/LLVM 16.0.1, Libtiff 4.5.0, Sqlite 3.41.2, kernel moved to Linux 6.2.10, Systemd 253.3, Python 3.10.11, Dracut 059, ZFS 2.1.9, Gnupg 2.4.0, and Libarchive 3.6.2.</p>
            
            <p>Big thanks goes to <strong>YourHostingSolutions</strong> for not only providing a mirror, but also providing a server for KaOS. With the discontinuation of Fosshost, a new server was sorely needed.</p>
            
            <p>To get good logs has always been a bit of a challenge since you have to know what journalctl commands to use. That is now a thing of the past, <strong>Kjournald</strong> gives the option to view the logs from a nice GUI, with all kinds of filter options in the left-hand pane (it is now part of the default install)</p>

            <p>New applications added include <strong>Ghostwriter</strong>, a dedicated Markdown editor. A start is also made to get ready for Plasma 6. For the adventurous, the kde-next repository is used for a complete Qt6-based KDE stack, all Frameworks are built there on Qt6, most of Plasma and a few KDE Applications have also been ported to Qt6.  Plasma 6 does boot but is not usable yet (so, of course not part of this ISO).</p>

            <p>After almost two years of testing IWD, it is now in such a good state that it has replaced Wpa_Suplicant as the default wireless daemon for KaOS.</br>
            Similar, Pipewire has replaced PulseAudio as the default sound/low-level multimedia framework.</p>

            <p>A shift has started as to how all Python packages are build.  Historically, just about all were build with setuptools though a setup.py script.  PEP17 is the new standard for building python packages, see https://peps.python.org/pep-0517/.  At this stage, KaOS is testing this transition with different new Python build tools, such as Python-flit & Python-build, with Python-wheel currently in use to install the build packages.</p>

            <p>Qt 5.15 does not receive updates or maintenance from the Qt company (only closed source, paid support is available). KDE has stepped up though and published a maintained 5.15 fork https://dot.kde.org/2021/04/06/announcing-kdes-qt-5-patch-collection. KaOS now regularly does a patch update from this fork for all of Qt 5.15, so it basically is now at 5.15.9.
            </p>
            
            <p>For Nvidia, a new longterm support version is included in this ISO, 470xx. The move by Nvidia to 495 meant the end of support for Kepler based cards, thus the need to add a new legacy version.</p>
            
            <p>Qt 6.5.0 is included and is now far more complete since many more are ported from Qt5, this includes qt6-location and the big one, qt6-webengine (plus all the Qt6 webengine depends on). A few test applications have been build on qt6-webengine, including some web browsers. All of the PyQt packages are now available in a Qt6 version too. Plus the Kvantum theming has support for Qt6.</p>
            
            <p>Since LibreOffice 6.2, it is now possible to supply this as a pure Qt5/kf5 application.  LibreOffice has thus replaced Calligra as the default Office Application for KaOS.</p>
            
            <p>KaOS' creation <strong>Croeso</strong> (Welsh for welcome) for helping with configuring a new install is included.  It will run on the newly installed system and offers to adjust some 15 commonly used settings, includes a custom Wallpaper selector, distribution info, and the option to select packages to install from six different groups.  It is written in QML and fits well with the Welcome application used in the Live system.  The latter includes an Installation Guide.</p>
            
            <p>There is an option to verify the authenticity of downloaded KaOS ISO files through GPG signature verification, see the Download page for further details and instructions.</p>
            
            <p>A KaOS specific tool to write ISO files to USB is in use.  Not only does IsoWriter write to USB it also gives the option to recover your USB stick after using it for an ISO, something that regular dd copy or the previously used Imagewriter were not able to do. It includes the option to verify the written USB in comparison to the used ISO file.</p>
            
            <p>The artwork includes custom icon themes for light and dark themes. Midna and Midna Dark both create a complete unified look from boot-up all the way through logout.</p>

            <p>This ISO uses the <b>CRC and finobt enabled</b> XFS filesystem as default. CRCs enable enhanced error detection due to hardware issues, whilst the format changes also improves crash recovery algorithms and the ability  of  various  tools to validate and repair metadata corruptions when they are found.  The  free  inode  btree does not index used inodes, allowing faster, more consistent inode allocation performance as filesystems age.</p>
            
            <p><strong>Octopi</strong> is becoming a very crucial part of full system maintenance for KaOS. It is not just a GUI frontend to pacman. Tools like making sure a mirror is synced before starting any update, looking at the pacman logs, an option to get a paste from a complete snapshot of all info of a system with the SysInfo tool are included. Also included are very simple ways to open files, like copy to clipboard the file path shown in Octopi. To make sure the system doesn't start using too much disk space for the pacman cache, but still giving the user the option to retain some recent packages, the cache-cleaner tool is a great addition. The built-in tool to access <b>KCP</b> has now a much clearer place with the addition of its own foreign icon in the menu-bar. New added is the option to select custom icons for the systemtray.</p>
            
            <p>For UEFI installs, KaOS uses the simple, transparent but quite powerful systemd-boot as bootloader.</p>
            
            <p>To learn more about the goals and ideas behind KaOS, please read the <b>http://kaosx.us/</b>, <b>http://kaosx.us/about/</b>, and <b>http://kaosx.us/faq/</b> pages.</p>
            
            <p>To avoid any misunderstanding and confusion, KaOS is <b>not based upon, derived of, or inspired by</b> any one particular distribution. It is completely independent, build entirely from scratch with its own repositories. To read more about this see <b>http://kaosx.us/about/based/</b>. A <b>rolling release distribution</b> never has a final release, every ISO is merely a snapshot of the current status of the repositories. An idea what is currently available:</p>
            
            <p>The ISO ships with <b>Frameworks 5.105.0, Plasma 5.27.4, KDE Applications 23.03.90</b>, Linux 6.2.10, Systemd 253.3, Kmod 30, NetworkManager 1.42.4, LibreOffice 7.5.2, Elisa, Xorg-Server 1.21.8, Mesa 23.0.2, Glibc 2.36, GCC 12.2.0, non-free Nvidia 530 and Python3 3.10.11 to name a few.</p>
            
            <p>The package manager is <strong>Pacman 6.0.2</strong>, with the simple but powerful Octopi 0.14.0 as GUI frontend. Falkon is the default, Qt based, web browser. <b>GFXboot</b> is included with KaOS artwork, Grub theme is Midna, Look &amp; Feel is a KaOS exclusive version Midna.</p>
            
            <p><b>Repositories</b> of KaOS will stay limited in size and expect it to stay at the current maximum of about 2100-2200. A gist of what is available, besides the stable kernel there is Linux-next 6.2, Calligra 3.2.1, VLC, Vokoscreen, Blender, Kodi, Calibre, Sigil, Vulkan packages, a few games like 0ad and Knights.<br />
            A limited number of the most well-known GTK applications are available, examples Firefox 112.0, Chrome 114, Ardour 7.3.0, Inkscape 1.2.2, GIMP 2.99.14 and Thunderbird 102.10.0.<br />
            Complete language packs are available for KDE, Calligra, Firefox, LibreOffice and Thunderbird. For IM, Fcitx 4.2.9.9 is available as a rather complete group.</p>

            <p><b>Known issues:</b></p>
            <ul>
                <li>Installing on RAID is currently not possible</li>
            </ul>
            
            <p>To create <b>reliable</b> installation media, please follow the instructions from the <b>http://kaosx.us/download/</b> page. KaOS's ISO's <b>do not support Unetbootin or Rufus</b>, and DVDs need a burn speed <b>no higher than 4x</b>.</p>")
        }
    }

    /*ToolButton {
        id: toolButton
        x: 19
        y: 29
        width: 105
        height: 48
        text: qsTr("Back")
        hoverEnabled: true
        onClicked: load.source = ""

        Image {
            id: image1
            x: 0
            y: 13
            width: 22
            height: 22
            source: "file:/usr/share/pixmaps/chevron-left-solid.svg"
            fillMode: Image.PreserveAspectFit
        }
    }*/

}
