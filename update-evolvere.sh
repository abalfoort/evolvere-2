#! /bin/bash

KEEPSOURCE=true
EVOLVERE2DIR='evolvere-2'

# Get source
rm -rf $EVOLVERE2DIR*
if [ ! -e Evolvere-Icons ]; then
    echo 'Clone the evolvere-2 repository'
    git clone https://github.com/franksouza183/Evolvere-Icons.git
else
    cd Evolvere-Icons
    echo 'Update the evolvere-2 repository'
    git pull
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
cp -v $EVOLVERE2DIR/places/24/folder-remote.svg $EVOLVERE2DIR/apps/24/applications-internet.svg
rm $EVOLVERE2DIR/places/64/folder-open.svg
cp -v $EVOLVERE2DIR/actions/64/document-open.svg $EVOLVERE2DIR/places/64/folder-open.svg


echo '----------------'
echo 'Create additional symlinks'
function link_svg() {
    ORG=$1
    NEW=$2
    for F in $(find $EVOLVERE2DIR -name "$ORG"); do
        if [ ! -e $(dirname $F)/$NEW ]; then
            ln -sv "$ORG" $(dirname $F)/$NEW
        fi
    done
}

# Add icons to all dirs
function link_svg_all() {
    ORG=$1
    NEW=$2
    
    if [ -z "$NEW" ]; then
        NEW=$ORG
    fi
    
    # Make sure all mono icons up to 24 are created
    link_svg "$ORG" "$NEW"
    
    for F in $(find $EVOLVERE2DIR/*/24 -name "$ORG"); do
        D=$(dirname $F)
        D=${D%/*}
        for S in 32 48 64; do
            if [ ! -e $D/$S/$NEW ]; then
                ln -sv "../24/$ORG" "$D/$S/$NEW"
            fi
        done
    done
}

link_svg 'gnote.svg' 'org.gnome.Gnote.svg'
link_svg 'system-file-manager.svg' 'MidnightCommander.svg'
link_svg 'preferences-system.svg' 'galternatives.svg'
link_svg 'scanner.svg' 'org.kde.skanlite.svg'
link_svg 'clipboard.svg' 'diodon-panel.svg'
link_svg 'imagemagick.svg' 'display-im6.q16.svg'
link_svg 'gtkhash.svg' 'org.gtkhash.gtkhash.svg'
link_svg 'system-file-manager.svg' 'pcmanfm-qt.svg'
link_svg 'mkvmergeGUI.svg' 'mkvtoolnix-gui.svg'
link_svg 'samba-share.svg' 'gadmin-samba.svg'
link_svg 'kmail.svg' 'emblem-mail.svg'
link_svg 'preferences.svg' 'ca.desrt.dconf-editor.svg'
link_svg 'pass.svg' 'org.gnome.seahorse.Application.svg'
link_svg 'fonts.svg' 'org.gnome.FontManager.svg'
link_svg 'fonts.svg' 'org.gnome.FontViewer.svg'
link_svg 'hardinfo.svg' 'hardinfo2.svg'
link_svg 'file-compressor.svg' 'lxqt-archiver.svg'
link_svg 'preferences-system-login.svg' 'lightdm.svg'
link_svg 'distributor-logo-debian.svg' 'plymouth.svg'
# SolydL


link_svg_all 'battery-good-charging-symbolic.svg'
link_svg_all 'battery-full-charging-symbolic.svg'
link_svg_all 'battery-low-symbolic.svg'
link_svg_all 'battery-empty-charging-symbolic.svg'
link_svg_all 'battery-full-charged-symbolic.svg'
link_svg_all 'battery-empty-symbolic.svg'
link_svg_all 'battery-caution-symbolic.svg'
link_svg_all 'battery-low-charging-symbolic.svg'
link_svg_all 'battery-good-symbolic.svg'
link_svg_all 'battery-caution-charging-symbolic.svg'
link_svg_all 'battery-full-symbolic.svg'
link_svg_all 'battery-missing-symbolic.svg'
link_svg_all 'battery-good-charging.svg'
link_svg_all 'battery-full-charging.svg'
link_svg_all 'battery-low.svg'
link_svg_all 'battery-empty-charging.svg'
link_svg_all 'battery-full-charged.svg'
link_svg_all 'battery-empty.svg'
link_svg_all 'battery-caution.svg'
link_svg_all 'battery-low-charging.svg'
link_svg_all 'battery-good.svg'
link_svg_all 'battery-caution-charging.svg'
link_svg_all 'battery-full.svg'
link_svg_all 'battery-missing.svg'
link_svg_all 'clipboard.svg' 'klipper.svg'
link_svg_all 'system-shutdown.svg'
link_svg_all 'system-reboot.svg'
link_svg_all 'system-log-out.svg'
link_svg_all 'system-suspend.svg'
link_svg_all 'system-suspend-hibernate.svg'
link_svg_all 'system-lock-screen.svg'
link_svg_all 'system-switch-user.svg'
# SolydL
link_svg_all 'diodon.svg'
link_svg_all 'diodon-panel.svg'
link_svg_all 'blueman.svg'
link_svg_all 'user-desktop.svg'
link_svg_all 'system-users.svg'
link_svg_all 'preferences-desktop-locale.svg'
link_svg_all 'thermometer.svg' 'sensors.svg'
link_svg_all 'preferences-desktop-display.svg' 'preferences-desktop-display.svg'
link_svg_all 'input-mouse.svg' 'preferences-desktop-peripherals.svg'

# Remove broken symlinks
find . -xtype l -delete

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
