#! /bin/bash

EVOLVERE2DIR='evolvere-2'

# Get source
rm -r $EVOLVERE2DIR*
git clone https://github.com/franksouza183/Evolvere-Icons.git
# Rename icon directory
mv Evolvere-Icons $EVOLVERE2DIR
chmod -R +w $EVOLVERE2DIR/.git
chmod -R -x+X $EVOLVERE2DIR
rm -r $EVOLVERE2DIR/.git
rm $EVOLVERE2DIR/changelog
rm $EVOLVERE2DIR/icon-theme.cache
rm $EVOLVERE2DIR/README.md
rm $EVOLVERE2DIR/LICENSE
rm $EVOLVERE2DIR/preview.png
find $EVOLVERE2DIR -type f -name "*.sh" -delete
find $EVOLVERE2DIR -type f -name "adjust-colors*" -delete


# Create additional symlinks
if [ ! -e "$EVOLVERE2DIR/apps/64/firewall-config.svg" ]; then ln -sfv 'firewall.svg' "$EVOLVERE2DIR/apps/64/firewall-config.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/luckybackup.svg" ]; then ln -sfv 'safe.svg' "$EVOLVERE2DIR/apps/64/luckybackup.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/gpa.svg" ]; then ln -sfv 'kgpg.svg' "$EVOLVERE2DIR/apps/64/gpa.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/lightdm.svg" ]; then ln -sfv 'preferences-system-login.svg' "$EVOLVERE2DIR/apps/64/lightdm.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/sensors.svg" ]; then ln -sfv 'thermometer.svg' "$EVOLVERE2DIR/apps/64/sensors.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/firefox-esr.svg" ]; then ln -sfv 'firefox.svg' "$EVOLVERE2DIR/apps/64/firefox-esr.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/MidnightCommander.svg" ]; then ln -sfv 'system-file-manager.svg' "$EVOLVERE2DIR/apps/64/MidnightCommander.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/mkvtoolnix-gui.svg" ]; then ln -sfv 'mkvmergeGUI.svg' "$EVOLVERE2DIR/apps/64/mkvtoolnix-gui.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/xfce4-color-settings.svg" ]; then ln -sfv 'preferences-color.svg' "$EVOLVERE2DIR/apps/64/xfce4-color-settings.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/gadmin-samba.svg" ]; then ln -sfv 'samba-share.svg' "$EVOLVERE2DIR/apps/64/gadmin-samba.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/emblem-mail.svg" ]; then ln -sfv 'kmail.svg' "$EVOLVERE2DIR/apps/64/emblem-mail.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/ca.desrt.dconf-editor.svg" ]; then ln -sfv 'preferences.svg' "$EVOLVERE2DIR/apps/64/ca.desrt.dconf-editor.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.gnome.Evince.svg" ]; then ln -sfv 'pdf-viewer.svg' "$EVOLVERE2DIR/apps/64/org.gnome.Evince.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.gnome.baobab.svg" ]; then ln -sfv 'space-usage.svg' "$EVOLVERE2DIR/apps/64/org.gnome.baobab.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.gnome.seahorse.Application.svg" ]; then ln -sfv 'pass.svg' "$EVOLVERE2DIR/apps/64/org.gnome.seahorse.Application.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/kwrite.svg" ]; then ln -sfv 'text-editor.svg' "$EVOLVERE2DIR/apps/64/kwrite.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.gnome.FontManager.svg" ]; then ln -sfv 'fonts.svg' "$EVOLVERE2DIR/apps/64/org.gnome.FontManager.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.gnome.FontViewer.svg" ]; then ln -sfv 'fonts.svg' "$EVOLVERE2DIR/apps/64/org.gnome.FontViewer.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/preferences-desktop.svg" ]; then ln -sfv 'preferences.svg' "$EVOLVERE2DIR/apps/64/preferences-desktop.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/preferences-desktop-emoticons.svg" ]; then ln -sfv '../../actions/64/face-smile.svg' "$EVOLVERE2DIR/apps/64/preferences-desktop-emoticons.svg"; fi

# Xfce4 Renaming
if [ ! -e "$EVOLVERE2DIR/actions/64/org.xfce.about.svg" ]; then ln -sfv 'documentinfo.svg' "$EVOLVERE2DIR/actions/64/org.xfce.about.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.Dictionary.svg" ]; then ln -sfv 'dictionary.svg' "$EVOLVERE2DIR/apps/64/org.xfce.Dictionary.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.catfish" ]; then ln -sfv 'catfish.svg' "$EVOLVERE2DIR/apps/64/org.xfce.catfish.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.taskmanager.svg" ]; then ln -sfv 'utilities-system-monitor.svg' "$EVOLVERE2DIR/apps/64/org.xfce.taskmanager.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.settings.accessibility.svg" ]; then ln -sfv 'accessibility.svg' "$EVOLVERE2DIR/apps/64/org.xfce.settings.accessibility.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.appfinder.svg" ]; then ln -sfv 'system-search.svg' "$EVOLVERE2DIR/apps/64/org.xfce.appfinder.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.filemanager.svg" ]; then ln -sfv 'xfce-filemanager.svg' "$EVOLVERE2DIR/apps/64/org.xfce.filemanager.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.garcon.svg" ]; then ln -sfv 'system-file-manager.svg' "$EVOLVERE2DIR/apps/64/org.xfce.garcon.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.mailreader.svg" ]; then ln -sfv 'kmail.svg' "$EVOLVERE2DIR/apps/64/org.xfce.mailreader.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.mousepad.svg" ]; then ln -sfv 'text-editor.svg' "$EVOLVERE2DIR/apps/64/org.xfce.mousepad.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.notification.svg" ]; then ln -sfv 'preferences-desktop-notification.svg' "$EVOLVERE2DIR/apps/64/org.xfce.notification.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.panel.svg" ]; then ln -sfv 'xfce4-panel.svg' "$EVOLVERE2DIR/apps/64/org.xfce.panel.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/24/org.xfce.panel.actions.svg" ]; then ln -sfv '../../actions/24/system-shutdown.svg' "$EVOLVERE2DIR/apps/24/org.xfce.panel.actions.svg"; fi
#if [ ! -e "$EVOLVERE2DIR/actions/24/org.xfce.panel.applicationsmenu.svg" ]; then ln -sfv 'distributor-logo-xubuntu.svg' "$EVOLVERE2DIR/actions/24/org.xfce.panel.applicationsmenu.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.panel.clock.svg" ]; then ln -sfv 'clock.svg' "$EVOLVERE2DIR/apps/64/org.xfce.panel.clock.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.panel.directorymenu.svg" ]; then ln -sfv '../../places/64/folder.svg' "$EVOLVERE2DIR/apps/64/org.xfce.panel.directorymenu.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/24/org.xfce.panel.launcher.svg" ]; then ln -sfv '../../places/24/folder.svg' "$EVOLVERE2DIR/apps/24/org.xfce.panel.launcher.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.panel.pager.svg" ]; then ln -sfv 'workspace-switcher-right-bottom.svg' "$EVOLVERE2DIR/apps/64/org.xfce.panel.pager.svg"; fi
#if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.panel.separator.svg" ]; then ln -sfv 'safe.svg' "$EVOLVERE2DIR/apps/64/org.xfce.panel.separator.svg"; fi
if [ ! -e "$EVOLVERE2DIR/places/64/org.xfce.panel.showdesktop.svg" ]; then ln -sfv 'plugin-showdesktop.svg' "$EVOLVERE2DIR/places/64/org.xfce.panel.showdesktop.svg"; fi
#if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.panel.statustray.svg" ]; then ln -sfv 'safe.svg' "$EVOLVERE2DIR/apps/64/org.xfce.panel.statustray.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.panel.tasklist.svg" ]; then ln -sfv 'tasks.svg' "$EVOLVERE2DIR/apps/64/org.xfce.panel.tasklist.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/24/org.xfce.panel.windowmenu.svg" ]; then ln -sfv '../../actions/24/menu.svg' "$EVOLVERE2DIR/apps/24/org.xfce.panel.windowmenu.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.powermanager.svg" ]; then ln -sfv 'xfce4-power-manager-settings.svg' "$EVOLVERE2DIR/apps/64/org.xfce.powermanager.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.screenshooter.svg" ]; then ln -sfv 'applets-screenshooter.svg' "$EVOLVERE2DIR/apps/64/org.xfce.screenshooter.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.session.svg" ]; then ln -sfv 'session.svg' "$EVOLVERE2DIR/apps/64/org.xfce.session.svg"; fi
#if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.settings.accessibilty.svg" ]; then ln -sfv 'safe.svg' "$EVOLVERE2DIR/apps/64/org.xfce.settings.accessibilty.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.settings.appearance.svg" ]; then ln -sfv 'gnome-settings-theme.svg' "$EVOLVERE2DIR/apps/64/org.xfce.settings.appearance.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.settings.color.svg" ]; then ln -sfv 'xfce4-color-settings.svg' "$EVOLVERE2DIR/apps/64/org.xfce.settings.color.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.settings.default-applications.svg" ]; then ln -sfv 'default-applications.svg' "$EVOLVERE2DIR/apps/64/org.xfce.settings.default-applications.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.settings.display.svg" ]; then ln -sfv 'preferences-desktop-display.svg' "$EVOLVERE2DIR/apps/64/org.xfce.settings.display.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.settings.editor.svg" ]; then ln -sfv 'preferences.svg' "$EVOLVERE2DIR/apps/64/org.xfce.settings.editor.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.settings.keyboard.svg" ]; then ln -sfv 'keyboard.svg' "$EVOLVERE2DIR/apps/64/org.xfce.settings.keyboard.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.settings.mouse.svg" ]; then ln -sfv '../../devices/64/input-mouse.svg' "$EVOLVERE2DIR/apps/64/org.xfce.settings.mouse.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.terminal.svg" ]; then ln -sfv 'utilities-terminal.svg' "$EVOLVERE2DIR/apps/64/org.xfce.terminal.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.terminalemulator.svg" ]; then ln -sfv 'utilities-terminal.svg' "$EVOLVERE2DIR/apps/64/org.xfce.terminalemulator.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.terminal-settings.svg" ]; then ln -sfv 'utilities-terminal.svg' "$EVOLVERE2DIR/apps/64/org.xfce.terminal-settings.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.thunar.svg" ]; then ln -sfv 'system-file-manager.svg' "$EVOLVERE2DIR/apps/64/org.xfce.thunar.svg"; fi
#if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.tumbler.svg" ]; then ln -sfv 'safe.svg' "$EVOLVERE2DIR/apps/64/org.xfce.tumbler.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.volman.svg" ]; then ln -sfv 'system-file-manager.svg' "$EVOLVERE2DIR/apps/64/org.xfce.volman.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.webbrowser.svg" ]; then ln -sfv 'web-browser.svg' "$EVOLVERE2DIR/apps/64/org.xfce.webbrowser.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.workspaces.svg" ]; then ln -sfv 'xfce4-workspaces.svg' "$EVOLVERE2DIR/apps/64/org.xfce.workspaces.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.xfdesktop.svg" ]; then ln -sfv '../../places/64/folder-desktop.svg' "$EVOLVERE2DIR/apps/64/org.xfce.xfdesktop.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.xfwm4.svg" ]; then ln -sfv 'xfwm4.svg' "$EVOLVERE2DIR/apps/64/org.xfce.xfwm4.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.xfwm4-tweaks.svg" ]; then ln -sfv 'xfwm4.svg' "$EVOLVERE2DIR/apps/64/org.xfce.xfwm4-tweaks.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/24/xfce4-battery-critical-charging.svg" ]; then ln -sfv 'battery-010-charging.svg' "$EVOLVERE2DIR/status/24/xfce4-battery-critical-charging.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/24/xfce4-battery-critical.svg" ]; then ln -sfv 'battery-010.svg' "$EVOLVERE2DIR/status/24/xfce4-battery-critical.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/24/xfce4-battery-full-charging.svg" ]; then ln -sfv 'battery-100-charging.svg' "$EVOLVERE2DIR/status/24/xfce4-battery-full-charging.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/24/xfce4-battery-full.svg" ]; then ln -sfv 'battery-100.svg' "$EVOLVERE2DIR/status/24/xfce4-battery-full.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/24/xfce4-battery-low-charging.svg" ]; then ln -sfv 'battery-020-charging.svg' "$EVOLVERE2DIR/status/24/xfce4-battery-low-charging.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/24/xfce4-battery-low.svg" ]; then ln -sfv 'battery-020.svg' "$EVOLVERE2DIR/status/24/xfce4-battery-low.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/24/xfce4-battery-missing.svg" ]; then ln -sfv 'battery-missing.svg' "$EVOLVERE2DIR/status/24/xfce4-battery-missing.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/24/xfce4-battery-ok-charging.svg" ]; then ln -sfv 'battery-080-charging.svg' "$EVOLVERE2DIR/status/24/xfce4-battery-ok-charging.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/24/xfce4-battery-ok.svg" ]; then ln -sfv 'battery-080.svg' "$EVOLVERE2DIR/status/24/xfce4-battery-ok.svg"; fi

if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-good-charging-symbolic.svg" ]; then ln -sfv '../24/battery-good-charging-symbolic.svg' "$EVOLVERE2DIR/status/scalable/battery-good-charging-symbolic.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-full-charging-symbolic.svg" ]; then ln -sfv '../24/battery-full-charging-symbolic.svg' "$EVOLVERE2DIR/status/scalable/battery-full-charging-symbolic.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-low-symbolic.svg" ]; then ln -sfv '../24/battery-low-symbolic.svg' "$EVOLVERE2DIR/status/scalable/battery-low-symbolic.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-empty-charging-symbolic.svg" ]; then ln -sfv '../24/battery-empty-charging-symbolic.svg' "$EVOLVERE2DIR/status/scalable/battery-empty-charging-symbolic.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-full-charged-symbolic.svg" ]; then ln -sfv '../24/battery-full-charged-symbolic.svg' "$EVOLVERE2DIR/status/scalable/battery-full-charged-symbolic.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-empty-symbolic.svg" ]; then ln -sfv '../24/battery-empty-symbolic.svg' "$EVOLVERE2DIR/status/scalable/battery-empty-symbolic.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-caution-symbolic.svg" ]; then ln -sfv '../24/battery-caution-symbolic.svg' "$EVOLVERE2DIR/status/scalable/battery-caution-symbolic.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-low-charging-symbolic.svg" ]; then ln -sfv '../24/battery-low-charging-symbolic.svg' "$EVOLVERE2DIR/status/scalable/battery-low-charging-symbolic.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-good-symbolic.svg" ]; then ln -sfv '../24/battery-good-symbolic.svg' "$EVOLVERE2DIR/status/scalable/battery-good-symbolic.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-caution-charging-symbolic.svg" ]; then ln -sfv '../24/battery-caution-charging-symbolic.svg' "$EVOLVERE2DIR/status/scalable/battery-caution-charging-symbolic.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-full-symbolic.svg" ]; then ln -sfv '../24/battery-full-symbolic.svg' "$EVOLVERE2DIR/status/scalable/battery-full-symbolic.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-missing-symbolic.svg" ]; then ln -sfv '../24/battery-missing-symbolic.svg' "$EVOLVERE2DIR/status/scalable/battery-missing-symbolic.svg"; fi

if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-good-charging.svg" ]; then ln -sfv '../24/battery-good-charging.svg' "$EVOLVERE2DIR/status/scalable/battery-good-charging.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-full-charging.svg" ]; then ln -sfv '../24/battery-full-charging.svg' "$EVOLVERE2DIR/status/scalable/battery-full-charging.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-low.svg" ]; then ln -sfv '../24/battery-low.svg' "$EVOLVERE2DIR/status/scalable/battery-low.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-empty-charging.svg" ]; then ln -sfv '../24/battery-empty-charging.svg' "$EVOLVERE2DIR/status/scalable/battery-empty-charging.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-full-charged.svg" ]; then ln -sfv '../24/battery-full-charged.svg' "$EVOLVERE2DIR/status/scalable/battery-full-charged.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-empty.svg" ]; then ln -sfv '../24/battery-empty.svg' "$EVOLVERE2DIR/status/scalable/battery-empty.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-caution.svg" ]; then ln -sfv '../24/battery-caution.svg' "$EVOLVERE2DIR/status/scalable/battery-caution.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-low-charging.svg" ]; then ln -sfv '../24/battery-low-charging.svg' "$EVOLVERE2DIR/status/scalable/battery-low-charging.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-good.svg" ]; then ln -sfv '../24/battery-good.svg' "$EVOLVERE2DIR/status/scalable/battery-good.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-caution-charging.svg" ]; then ln -sfv '../24/battery-caution-charging.svg' "$EVOLVERE2DIR/status/scalable/battery-caution-charging.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-full.svg" ]; then ln -sfv '../24/battery-full.svg' "$EVOLVERE2DIR/status/scalable/battery-full.svg"; fi
if [ ! -e "$EVOLVERE2DIR/status/scalable/battery-missing.svg" ]; then ln -sfv '../24/battery-missing.svg' "$EVOLVERE2DIR/status/scalable/battery-missing.svg"; fi

#if [ ! -e "$EVOLVERE2DIR/status/24/xfce4-battery-plugin.svg" ]; then ln -sfv 'xfwm4.svg' "$EVOLVERE2DIR/status/24/xfce4-battery-plugin.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/64/xfsm-hibernate.svg" ]; then ln -sfv 'system-suspend-hibernate.svg' "$EVOLVERE2DIR/actions/64/xfsm-hibernate.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/64/xfsm-hibernate.svg" ]; then ln -sfv 'system-suspend-hibernate.svg' "$EVOLVERE2DIR/actions/64/xfsm-hibernate.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/64/xfsm-hibernate.svg" ]; then ln -sfv 'system-suspend-hibernate.svg' "$EVOLVERE2DIR/actions/64/xfsm-hibernate.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/64/xfsm-hibernate.svg" ]; then ln -sfv 'system-suspend-hibernate.svg' "$EVOLVERE2DIR/actions/64/xfsm-hibernate.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/64/xfsm-hibernate.svg" ]; then ln -sfv 'system-suspend-hibernate.svg' "$EVOLVERE2DIR/actions/64/xfsm-hibernate.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/16/xfsm-lock.svg" ]; then ln -sfv 'system-lock-screen.svg' "$EVOLVERE2DIR/actions/16/xfsm-lock.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/18/xfsm-lock.svg" ]; then ln -sfv 'system-lock-screen.svg' "$EVOLVERE2DIR/actions/18/xfsm-lock.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/22/xfsm-lock.svg" ]; then ln -sfv 'system-lock-screen.svg' "$EVOLVERE2DIR/actions/22/xfsm-lock.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/24/xfsm-lock.svg" ]; then ln -sfv 'system-lock-screen.svg' "$EVOLVERE2DIR/actions/24/xfsm-lock.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/64/xfsm-lock.svg" ]; then ln -sfv 'system-lock-screen.svg' "$EVOLVERE2DIR/actions/64/xfsm-lock.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/16/xfsm-lock.svg" ]; then ln -sfv 'system-lock-screen.svg' "$EVOLVERE2DIR/actions/16/xfsm-lock.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/18/xfsm-lock.svg" ]; then ln -sfv 'system-lock-screen.svg' "$EVOLVERE2DIR/actions/18/xfsm-lock.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/22/xfsm-lock.svg" ]; then ln -sfv 'system-lock-screen.svg' "$EVOLVERE2DIR/actions/22/xfsm-lock.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/24/xfsm-lock.svg" ]; then ln -sfv 'system-lock-screen.svg' "$EVOLVERE2DIR/actions/24/xfsm-lock.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/64/xfsm-lock.svg" ]; then ln -sfv 'system-lock-screen.svg' "$EVOLVERE2DIR/actions/64/xfsm-lock.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/16/xfsm-logout.svg" ]; then ln -sfv 'system-log-out.svg' "$EVOLVERE2DIR/actions/16/xfsm-logout.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/18/xfsm-logout.svg" ]; then ln -sfv 'system-log-out.svg' "$EVOLVERE2DIR/actions/18/xfsm-logout.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/22/xfsm-logout.svg" ]; then ln -sfv 'system-log-out.svg' "$EVOLVERE2DIR/actions/22/xfsm-logout.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/24/xfsm-logout.svg" ]; then ln -sfv 'system-log-out.svg' "$EVOLVERE2DIR/actions/24/xfsm-logout.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/64/xfsm-logout.svg" ]; then ln -sfv 'system-log-out.svg' "$EVOLVERE2DIR/actions/64/xfsm-logout.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/16/xfsm-reboot.svg" ]; then ln -sfv 'system-reboot.svg' "$EVOLVERE2DIR/actions/16/xfsm-reboot.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/18/xfsm-reboot.svg" ]; then ln -sfv 'system-reboot.svg' "$EVOLVERE2DIR/actions/18/xfsm-reboot.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/22/xfsm-reboot.svg" ]; then ln -sfv 'system-reboot.svg' "$EVOLVERE2DIR/actions/22/xfsm-reboot.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/24/xfsm-reboot.svg" ]; then ln -sfv 'system-reboot.svg' "$EVOLVERE2DIR/actions/24/xfsm-reboot.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/64/xfsm-reboot.svg" ]; then ln -sfv 'system-reboot.svg' "$EVOLVERE2DIR/actions/64/xfsm-reboot.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/16/xfsm-shutdown.svg" ]; then ln -sfv 'system-shutdown.svg' "$EVOLVERE2DIR/actions/16/xfsm-shutdown.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/18/xfsm-shutdown.svg" ]; then ln -sfv 'system-shutdown.svg' "$EVOLVERE2DIR/actions/18/xfsm-shutdown.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/22/xfsm-shutdown.svg" ]; then ln -sfv 'system-shutdown.svg' "$EVOLVERE2DIR/actions/22/xfsm-shutdown.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/24/xfsm-shutdown.svg" ]; then ln -sfv 'system-shutdown.svg' "$EVOLVERE2DIR/actions/24/xfsm-shutdown.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/64/xfsm-shutdown.svg" ]; then ln -sfv 'system-shutdown.svg' "$EVOLVERE2DIR/actions/64/xfsm-shutdown.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/16/xfsm-suspend.svg" ]; then ln -sfv 'system-suspend.svg' "$EVOLVERE2DIR/actions/16/xfsm-suspend.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/18/xfsm-suspend.svg" ]; then ln -sfv 'system-suspend.svg' "$EVOLVERE2DIR/actions/18/xfsm-suspend.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/22/xfsm-suspend.svg" ]; then ln -sfv 'system-suspend.svg' "$EVOLVERE2DIR/actions/22/xfsm-suspend.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/24/xfsm-suspend.svg" ]; then ln -sfv 'system-suspend.svg' "$EVOLVERE2DIR/actions/24/xfsm-suspend.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/64/xfsm-suspend.svg" ]; then ln -sfv 'system-suspend.svg' "$EVOLVERE2DIR/actions/64/xfsm-suspend.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/16/xfsm-switch-user.svg" ]; then ln -sfv 'system-switch-user.svg' "$EVOLVERE2DIR/actions/16/xfsm-switch-user.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/18/xfsm-switch-user.svg" ]; then ln -sfv 'system-switch-user.svg' "$EVOLVERE2DIR/actions/18/xfsm-switch-user.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/22/xfsm-switch-user.svg" ]; then ln -sfv 'system-switch-user.svg' "$EVOLVERE2DIR/actions/22/xfsm-switch-user.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/24/xfsm-switch-user.svg" ]; then ln -sfv 'system-switch-user.svg' "$EVOLVERE2DIR/actions/24/xfsm-switch-user.svg"; fi
if [ ! -e "$EVOLVERE2DIR/actions/64/xfsm-switch-user.svg" ]; then ln -sfv 'system-switch-user.svg' "$EVOLVERE2DIR/actions/64/xfsm-switch-user.svg"; fi

# Copy some additional icons
for F in $(ls additional); do
    if [ ! -e "$EVOLVERE2DIR/apps/64/$F" ]; then cp -vf additional/$F $EVOLVERE2DIR/apps/64/; fi
done
if [ ! -e "$EVOLVERE2DIR/apps/24/applications-internet.svg" ]; then cp -vf $EVOLVERE2DIR/places/24/folder-remote.svg $EVOLVERE2DIR/apps/24/applications-internet.svg; fi

# Remove broken links
echo
find -L . -type l -exec rm -v {} \;
echo

echo 'Create mono packages...'
LEAVEICONS=$(cat icon-list.txt)
# Remove monochrome application icons
mkdir -p $EVOLVERE2DIR-mono/apps
for I in {16,18,22,24,32,48}; do
    for D in $(find $EVOLVERE2DIR -type d -wholename "*/apps/$I*"); do
        # Move files only when not in LEAVEICONS
        mkdir -p "$EVOLVERE2DIR-mono/apps/$I/"
        SVGS=$(ls "$D" )
        for SVG in $SVGS; do
            FOUND=false
            for ICON in $LEAVEICONS; do
                if [ "$SVG" == "$ICON" ]; then
                    FOUND=true;
                fi
            done
            if ! $FOUND; then
                mv "$D/$SVG" "$EVOLVERE2DIR-mono/apps/$I/"
            fi
        done
    done
done
cp -r $EVOLVERE2DIR-mono $EVOLVERE2DIR-blue-mono

# These mono icons should be available in the default (non-mono) themes
if [ ! -e "$EVOLVERE2DIR/apps/16/org.xfce.settings.manager.svg" ]; then ln -sfv 'preferences.svg' "$EVOLVERE2DIR/apps/16/org.xfce.settings.manager.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/18/org.xfce.settings.manager.svg" ]; then ln -sfv 'preferences.svg' "$EVOLVERE2DIR/apps/18/org.xfce.settings.manager.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/22/org.xfce.settings.manager.svg" ]; then ln -sfv 'preferences.svg' "$EVOLVERE2DIR/apps/22/org.xfce.settings.manager.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/24/org.xfce.settings.manager.svg" ]; then ln -sfv 'preferences.svg' "$EVOLVERE2DIR/apps/24/org.xfce.settings.manager.svg"; fi
if [ ! -e "$EVOLVERE2DIR/apps/64/org.xfce.settings.manager.svg" ]; then ln -sfv 'preferences.svg' "$EVOLVERE2DIR/apps/64/org.xfce.settings.manager.svg"; fi

# These mono icons should be available in blue-mono theme
if [ ! -e "$EVOLVERE2DIR-blue-mono/apps/16/preferences-desktop.svg" ]; then ln -sfv 'preferences.svg' "$EVOLVERE2DIR-blue-mono/apps/16/preferences-desktop.svg"; fi
if [ ! -e "$EVOLVERE2DIR-blue-mono/apps/18/preferences-desktop.svg" ]; then ln -sfv 'preferences.svg' "$EVOLVERE2DIR-blue-mono/apps/18/preferences-desktop.svg"; fi
if [ ! -e "$EVOLVERE2DIR-blue-mono/apps/22/preferences-desktop.svg" ]; then ln -sfv 'preferences.svg' "$EVOLVERE2DIR-blue-mono/apps/22/preferences-desktop.svg"; fi
if [ ! -e "$EVOLVERE2DIR-blue-mono/apps/24/preferences-desktop.svg" ]; then ln -sfv 'preferences.svg' "$EVOLVERE2DIR-blue-mono/apps/24/preferences-desktop.svg"; fi

# And remove these from the mono package
rm -f "$EVOLVERE2DIR-mono/apps/16/org.xfce.settings.manager.svg"
rm -f "$EVOLVERE2DIR-mono/apps/18/org.xfce.settings.manager.svg"
rm -f "$EVOLVERE2DIR-mono/apps/22/org.xfce.settings.manager.svg"
rm -f "$EVOLVERE2DIR-mono/apps/24/org.xfce.settings.manager.svg"
rm -f "$EVOLVERE2DIR-mono/apps/64/org.xfce.settings.manager.svg"

# Make a copy of the icon directory
EVOLVERE2DIR=$EVOLVERE2DIR-blue
cp -r evolvere-2 $EVOLVERE2DIR

# Change theme name
sed -i 's/Evolvere Icons 2/Evolvere Icons 2 Blue/g' $EVOLVERE2DIR/index.theme

# Remove these icons
rm -f "$EVOLVERE2DIR/apps/16/preferences-desktop.svg"
rm -f "$EVOLVERE2DIR/apps/18/preferences-desktop.svg"
rm -f "$EVOLVERE2DIR/apps/22/preferences-desktop.svg"
rm -f "$EVOLVERE2DIR/apps/24/preferences-desktop.svg"

# Convert folder colors to blue
# Original colors
FLDBASEORG='#f4ae3f'
FLDSHDORG='#f43f66'
FLDHLORG='#f8ff34'
HOMEORG='#dfd770'
HOMETILE12ORG='#a02b2b'
HOMETILE14ORG='#c83737'
HOMETILE16ORG='#ed5b5b'
HOMETILE18ORG='#e14d4d'
HOMETILESHADEORG='#802323'
HOMEROOFSHADEORG='#d00931'
HOMEENTRANCEORG='#822828'
HOMEENTRANCESHADE86ORG='#eb0048'
HOMEENTRANCESHADE88ORG='#ef004a'
HOMEDOOR1ORG='#690015'
HOMEDOOR2ORG='#7c4752'
HOMEWINORG='#884e5a'

# Target colors
FLDBASETRG='#1d92f0'
FLDSHDTRG='#546c8f'
FLDHLTRG='#00ffff'
HOMETRG='#70abd7'
HOMETILE12TRG='#39346a'
HOMETILE14TRG='#7774aa'
HOMETILE16TRG='#a7a2e7'
HOMETILE18TRG='#69687f'
HOMETILESHADETRG='#3d3764'
HOMEROOFSHADETRG='#455c9e'
HOMEENTRANCETRG='#3d3764'
HOMEENTRANCESHADE86TRG='#6d5fad'
HOMEENTRANCESHADE88TRG='#725eee'
HOMEDOOR1TRG='#455c9e'
HOMEDOOR2TRG='#7681a3'
HOMEWINTRG='#455c9e'

# Folder icons to change
FLDRS=$(cat folder-list.txt)

# Change folder icons
for FLD in $FLDRS; do
    SVGS=$(find $EVOLVERE2DIR/places/64/ -type f -name "$FLD")
    for SVG in $SVGS; do
        echo "Change $SVG: $FLDBASEORG > $FLDBASETRG"
        sed -i "s/$FLDBASEORG/$FLDBASETRG/g" "$SVG"
        sed -i "s/$FLDSHDORG/$FLDSHDTRG/g" "$SVG"
        sed -i "s/$FLDHLORG/$FLDHLTRG/g" "$SVG"
    done
done

# Change home icon to blue-ish
echo "Change $EVOLVERE2DIR/places/64/user-home.svg: $HOMEORG > $HOMETRG"
sed -i "s/$HOMEORG/$HOMETRG/g" "$EVOLVERE2DIR/places/64/user-home.svg"
sed -i "s/$HOMETILE12ORG/$HOMETILE12TRG/g" "$EVOLVERE2DIR/places/64/user-home.svg"
sed -i "s/$HOMETILE14ORG/$HOMETILE14TRG/g" "$EVOLVERE2DIR/places/64/user-home.svg"
sed -i "s/$HOMETILE16ORG/$HOMETILE16TRG/g" "$EVOLVERE2DIR/places/64/user-home.svg"
sed -i "s/$HOMETILE18ORG/$HOMETILE18TRG/g" "$EVOLVERE2DIR/places/64/user-home.svg"
sed -i "s/$HOMETILESHADEORG/$HOMETILESHADETRG/g" "$EVOLVERE2DIR/places/64/user-home.svg"
sed -i "s/$HOMEROOFSHADEORG/$HOMEROOFSHADETRG/g" "$EVOLVERE2DIR/places/64/user-home.svg"
sed -i "s/$HOMEENTRANCEORG/$HOMEENTRANCETRG/g" "$EVOLVERE2DIR/places/64/user-home.svg"
sed -i "s/$HOMEENTRANCESHADE86ORG/$HOMEENTRANCESHADE86TRG/g" "$EVOLVERE2DIR/places/64/user-home.svg"
sed -i "s/$HOMEENTRANCESHADE88ORG/$HOMEENTRANCESHADE88TRG/g" "$EVOLVERE2DIR/places/64/user-home.svg"
sed -i "s/$HOMEDOOR1ORG/$HOMEDOOR1TRG/g" "$EVOLVERE2DIR/places/64/user-home.svg"
sed -i "s/$HOMEDOOR2ORG/$HOMEDOOR2TRG/g" "$EVOLVERE2DIR/places/64/user-home.svg"
sed -i "s/$HOMEWINORG/$HOMEWINTRG/g" "$EVOLVERE2DIR/places/64/user-home.svg"
