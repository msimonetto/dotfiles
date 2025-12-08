options="\n\n󰈆\n󰒲\n󰷛"

# The chosen option from Rofi
chosen=$(echo -e "$options" | rofi -dmenu -i -p "Power" -lines 5 -theme simple-tokyonight-power.rasi -dpi 200)

case "$chosen" in
"")
    aplay ~/.local/share/sounds/shutdown.wav --device=pipewire && sleep 0.25 && systemctl poweroff
    ;;
"")
    aplay ~/.local/share/sounds/shutdown.wav --device=pipewire && sleep 0.25 && systemctl reboot
    ;;
"󰒲")
    systemctl suspend
    # Optional: Add a lock command after suspending
    # i3lock &
    ;;
"󰈆")
    # Replace 'i3-msg exit' with the logout command for your environment (e.g., 'openbox --exit', 'loginctl terminate-session $XDG_SESSION_ID')
    aplay ~/.local/share/sounds/shutdown.wav --device=pipewire && sleep 0.25 && hyprctl dispatch exit
    ;;
"󰷛")
    # Replace 'i3lock' with your preferred screen locker (e.g., 'betterlockscreen -l')
    hyprlock
    ;;
esac
