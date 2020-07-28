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
if [ ! -e $EVOLVERE2DIR/apps/64/luckybackup.svg ]; then ln -sfv 'safe.svg' "$EVOLVERE2DIR/apps/64/luckybackup.svg"; fi
if [ ! -e $EVOLVERE2DIR/apps/64/gpa.svg ]; then ln -sfv 'kgpg.svg' "$EVOLVERE2DIR/apps/64/gpa.svg"; fi
if [ ! -e $EVOLVERE2DIR/apps/64/lightdm.svg ]; then ln -sfv 'preferences-system-login.svg' "$EVOLVERE2DIR/apps/64/lightdm.svg"; fi
if [ ! -e $EVOLVERE2DIR/apps/64/sensors.svg ]; then ln -sfv 'thermometer.svg' "$EVOLVERE2DIR/apps/64/sensors.svg"; fi
if [ ! -e $EVOLVERE2DIR/apps/64/firefox-esr.svg ]; then ln -sfv 'firefox.svg' "$EVOLVERE2DIR/apps/64/firefox-esr.svg"; fi
if [ ! -e $EVOLVERE2DIR/apps/64/MidnightCommander.svg ]; then ln -sfv 'system-file-manager.svg' "$EVOLVERE2DIR/apps/64/MidnightCommander.svg"; fi
if [ ! -e $EVOLVERE2DIR/apps/64/mkvtoolnix-gui.svg ]; then ln -sfv 'mkvmergeGUI.svg' "$EVOLVERE2DIR/apps/64/mkvtoolnix-gui.svg"; fi
if [ ! -e $EVOLVERE2DIR/apps/64/xfce4-color-settings.svg ]; then ln -sfv 'preferences-color.svg' "$EVOLVERE2DIR/apps/64/xfce4-color-settings.svg"; fi
if [ ! -e $EVOLVERE2DIR/apps/64/gadmin-samba.svg ]; then ln -sfv 'samba-share.svg' "$EVOLVERE2DIR/apps/64/gadmin-samba.svg"; fi
if [ ! -e $EVOLVERE2DIR/apps/64/emblem-mail.svg ]; then ln -sfv 'kmail.svg' "$EVOLVERE2DIR/apps/64/emblem-mail.svg"; fi
if [ ! -e $EVOLVERE2DIR/apps/64/ca.desrt.dconf-editor.svg ]; then ln -sfv 'preferences.svg' "$EVOLVERE2DIR/apps/64/ca.desrt.dconf-editor.svg"; fi
if [ ! -e $EVOLVERE2DIR/apps/64/org.gnome.Evince.svg ]; then ln -sfv 'pdf-viewer.svg' "$EVOLVERE2DIR/apps/64/org.gnome.Evince.svg"; fi
if [ ! -e $EVOLVERE2DIR/apps/64/org.gnome.baobab.svg ]; then ln -sfv 'space-usage.svg' "$EVOLVERE2DIR/apps/64/org.gnome.baobab.svg"; fi
if [ ! -e $EVOLVERE2DIR/apps/64/org.gnome.seahorse.Application.svg ]; then ln -sfv 'pass.svg' "$EVOLVERE2DIR/apps/64/org.gnome.seahorse.Application.svg"; fi
if [ ! -e $EVOLVERE2DIR/apps/64/kwrite.svg ]; then ln -sfv 'text-editor.svg' "$EVOLVERE2DIR/apps/64/kwrite.svg"; fi


# Copy some additional icons
if [ ! -e $EVOLVERE2DIR/apps/64/dia.svg ]; then cp -vf additional/dia.svg $EVOLVERE2DIR/apps/64/; fi
if [ ! -e $EVOLVERE2DIR/apps/64/gtkhash.svg ]; then cp -vf additional/gtkhash.svg $EVOLVERE2DIR/apps/64/; fi
if [ ! -e $EVOLVERE2DIR/apps/64/plymouth.svg ]; then cp -vf additional/plymouth.svg $EVOLVERE2DIR/apps/64/; fi
if [ ! -e $EVOLVERE2DIR/apps/64/samba-share.svg ]; then cp -vf additional/samba-share.svg $EVOLVERE2DIR/apps/64/; fi
if [ ! -e $EVOLVERE2DIR/apps/64/virusscan.svg ]; then cp -vf additional/virusscan.svg $EVOLVERE2DIR/apps/64/clamtk.svg; fi
if [ ! -e $EVOLVERE2DIR/apps/24/applications-internet.svg ]; then cp -vf $EVOLVERE2DIR/places/24/folder-remote.svg $EVOLVERE2DIR/apps/24/applications-internet.svg; fi

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

# Make a copy of the icon directory
EVOLVERE2DIR=$EVOLVERE2DIR-blue
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
