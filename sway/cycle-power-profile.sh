current=$(powerprofilesctl get 2>/dev/null)

case "$current" in
    power-saver)
        next="performance"
        msg="Performance"
        icon="power-profile-performance-symbolic"
        ;;
    performance)
        next="power-saver"
        msg="Battery Saver"
        icon="power-profile-power-saver-symbolic"
        ;;
    *)
        next="power-saver"
        msg="Battery Saver"
        icon="power-profile-power-saver-symbolic"
        ;;
esac

# 1) Display OSD notification immediately
swayosd-client --custom-message "$msg" --custom-icon "$icon"

# 2) Apply power profile
powerprofilesctl set "$next"
