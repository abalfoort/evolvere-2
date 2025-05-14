#! /bin/bash

GITPULL=false
KEEPSOURCE=true
EVOLVERE2DIR='evolvere-2'

function create_missing() {
    ORG=$1
    NEW=$2
    
    # Create icons up to 24 if they don't exist
    for F in $(find $EVOLVERE2DIR -name "$ORG"); do
        if [ ! -e $(dirname $F)/$NEW ]; then
            ln -sv "$ORG" $(dirname $F)/$NEW
        fi
    done 
}

function create_missing_from_mono() {
    ORG=$1
    
    # Create icons from 32 to 64 if they don't exist
    for F in $(find $EVOLVERE2DIR/*/24 ! -type d -name "$ORG"); do
        FN=$(basename $F)
        D=$(dirname $F)
        D=${D%/*}
        for S in 32 48 64; do
            if [ ! -e $D/$S/$FN ]; then
                ln -sv "../24/$FN" "$D/$S/$FN"
            fi
        done
    done
}

function remove_mono() {
    FN="$1.svg"
    for S in 8 16 18 22 24; do
        find $EVOLVERE2DIR/*/$S/$FN -delete 2>/dev/null
    done

}

# Get source
rm -rf $EVOLVERE2DIR*
if [ ! -e Evolvere-Icons ]; then
    echo 'Clone the evolvere-2 repository'
    git clone https://github.com/franksouza183/Evolvere-Icons.git
else
    cd Evolvere-Icons
    if $GITPULL; then
        echo 'Update the evolvere-2 repository'
        git pull
    fi
    cd ..
fi

echo '----------------'
echo "Copy the source icons to $EVOLVERE2DIR"
cp -r Evolvere-Icons/Icons $EVOLVERE2DIR

if ! $KEEPSOURCE; then
    # Rename icon directory
    mv Evolvere-Icons/Icons $EVOLVERE2DIR
    chmod -R +w Evolvere-Icons/.git
    rm -r Evolvere-Icons
fi

rm $EVOLVERE2DIR/icon-theme.cache
find $EVOLVERE2DIR -type f -exec chmod 644 {} \;

echo '----------------'
echo 'Copy some additional icons'
for F in $(ls additional/64); do
    cp -v additional/64/$F $EVOLVERE2DIR/apps/64/
done
for F in $(ls additional/24); do
    cp -v additional/24/$F $EVOLVERE2DIR/apps/24/
done
#cp -v $EVOLVERE2DIR/places/24/folder-remote.svg $EVOLVERE2DIR/apps/24/applications-internet.svg
rm $EVOLVERE2DIR/places/64/folder-open.svg
cp -v $EVOLVERE2DIR/actions/64/document-open.svg $EVOLVERE2DIR/places/64/folder-open.svg


echo '----------------'
echo 'Create missing icons'
create_missing 'gnote.svg' 'org.gnome.Gnote.svg'
create_missing 'system-file-manager.svg' 'MidnightCommander.svg'
create_missing 'preferences-system.svg' 'galternatives.svg'
create_missing 'scanner.svg' 'org.kde.skanlite.svg'
create_missing 'imagemagick.svg' 'display-im6.q16.svg'
create_missing 'gtkhash.svg' 'org.gtkhash.gtkhash.svg'
create_missing 'system-file-manager.svg' 'pcmanfm-qt.svg'
create_missing 'mkvmergeGUI.svg' 'mkvtoolnix-gui.svg'
create_missing 'samba-share.svg' 'gadmin-samba.svg'
create_missing 'kmail.svg' 'emblem-mail.svg'
create_missing 'preferences.svg' 'ca.desrt.dconf-editor.svg'
create_missing 'pass.svg' 'org.gnome.seahorse.Application.svg'
create_missing 'fonts.svg' 'org.gnome.FontManager.svg'
create_missing 'fonts.svg' 'org.gnome.FontViewer.svg'
create_missing 'hardinfo.svg' 'hardinfo2.svg'
create_missing 'file-compressor.svg' 'lxqt-archiver.svg'
create_missing 'preferences-system-login.svg' 'lightdm.svg'
create_missing 'distributor-logo-debian.svg' 'plymouth.svg'
create_missing 'video-display.svg' 'xwaylandvideobridge.svg'
create_missing 'clipboard.svg' 'klipper.svg'
create_missing 'knotes.svg' 'org.kde.marknote.svg'
create_missing 'music-tag.svg' 'kid3.svg'
create_missing 'music-tag.svg' 'kid3-qt.svg'
create_missing 'glade.svg' 'glade3.svg'
create_missing 'glade.svg' 'org.gnome.Glade.svg'
create_missing 'preferences-color.svg' 'org.openrgb.OpenRGB.svg'
create_missing 'krdc.svg' 'virt-viewer.svg'

echo '----------------'
echo 'Remove mono icons'
remove_mono 'solydk'
remove_mono 'solydk-black'
remove_mono 'solydx'
remove_mono 'solydx-black'
remove_mono 'solydxk'

echo '----------------'
echo 'Create missing mono icons'
create_missing_from_mono 'battery-good-charging-symbolic.svg'
create_missing_from_mono 'battery-full-charging-symbolic.svg'
create_missing_from_mono 'battery-low-symbolic.svg'
create_missing_from_mono 'battery-empty-charging-symbolic.svg'
create_missing_from_mono 'battery-full-charged-symbolic.svg'
create_missing_from_mono 'battery-empty-symbolic.svg'
create_missing_from_mono 'battery-caution-symbolic.svg'
create_missing_from_mono 'battery-low-charging-symbolic.svg'
create_missing_from_mono 'battery-good-symbolic.svg'
create_missing_from_mono 'battery-caution-charging-symbolic.svg'
create_missing_from_mono 'battery-full-symbolic.svg'
create_missing_from_mono 'battery-missing-symbolic.svg'
create_missing_from_mono 'battery-good-charging.svg'
create_missing_from_mono 'battery-full-charging.svg'
create_missing_from_mono 'battery-low.svg'
create_missing_from_mono 'battery-empty-charging.svg'
create_missing_from_mono 'battery-full-charged.svg'
create_missing_from_mono 'battery-empty.svg'
create_missing_from_mono 'battery-caution.svg'
create_missing_from_mono 'battery-low-charging.svg'
create_missing_from_mono 'battery-good.svg'
create_missing_from_mono 'battery-caution-charging.svg'
create_missing_from_mono 'battery-full.svg'
create_missing_from_mono 'battery-missing.svg'
create_missing_from_mono 'system-shutdown.svg'
create_missing_from_mono 'system-reboot.svg'
create_missing_from_mono 'system-log-out.svg'
create_missing_from_mono 'system-suspend.svg'
create_missing_from_mono 'system-suspend-hibernate.svg'
create_missing_from_mono 'system-lock-screen.svg'
create_missing_from_mono 'system-switch-user.svg'
create_missing_from_mono 'input-keyboard.svg'
create_missing_from_mono 'video-display.svg'
create_missing_from_mono 'klipper.svg'
create_missing_from_mono 'media-optical.svg'
create_missing_from_mono 'drive-removable-media.svg'
create_missing_from_mono 'drive-removable-media-usb-pendrive.svg'
create_missing_from_mono 'drive-removable-media-scsi.svg'
create_missing_from_mono 'drive-removable-media-usb.svg'
create_missing_from_mono 'drive-removable-media-ieee1394.svg'
create_missing_from_mono 'system-software-update.svg'
create_missing_from_mono 'qbittorrent-tray.svg'


# SolydL
create_missing 'clipboard.svg' 'diodon-panel.svg'
rm $EVOLVERE2DIR/apps/64/diodon-panel.svg
create_missing_from_mono 'diodon-panel.svg'

# Remove broken symlinks
find $EVOLVERE2DIR -xtype l -delete
# Delete non-icon files
find $EVOLVERE2DIR -name "*.sh" -delete
find $EVOLVERE2DIR -name "adjust-colors" -delete
# Make all icons not executable
find $EVOLVERE2DIR -type f -executable -exec chmod -x {} \;

# Make a copy of the icon directory
EVOLVERE2DIR=$EVOLVERE2DIR-blue
echo '----------------'
echo "Copy evolvere-2 to $EVOLVERE2DIR"
cp -r evolvere-2 $EVOLVERE2DIR

# Change theme name
sed -i 's/Evolvere Icons 2/Evolvere Icons 2 Blue/g' $EVOLVERE2DIR/index.theme

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

echo '----------------'
# Folder icons to change
FLDRS=$(find $EVOLVERE2DIR/places/64/ -type f | grep -E 'folder-[a-z]*\.svg|folder-copy-|folder-image-|folder-public-|folder-yandex-|folder.svg' | grep -E -v 'black\.svg|blue\.svg|brown\.svg|cyan\.svg|green\.svg|grey\.svg|orange\.svg|red\.svg|violet\.svg|yellow\.svg' | sort)

# Change folder icons
for FLD in $FLDRS; do
    echo "Change color of $FLD"
    sed -i "s/$FLDBASEORG/$FLDBASETRG/g" "$FLD"
    sed -i "s/$FLDSHDORG/$FLDSHDTRG/g" "$FLD"
    sed -i "s/$FLDHLORG/$FLDHLTRG/g" "$FLD"
done

# Change home icon to blue-ish
echo '----------------'
echo "Change $EVOLVERE2DIR/places/64/user-home.svg"
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
