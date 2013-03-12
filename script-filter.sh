ssid=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I | grep -E "^ *SSID" | sed 's/^ *//g')
channel=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I | grep -E "^ *channel" | sed 's/^ *//g')
rate=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I | grep -E "^ *maxRate" | sed 's/^ *//g')

if [[ -z $ssid ]]; then 
	title="Wireless is disabled or not connected"
	subtitle=""
else
	title="Wireless SSID Info"
	subtitle="$ssid  $rate  $channel"
fi

echo '<?xml version="1.0"?><items>'
echo "<item arg=\"$text\" uid=\"ssid\" valid=\"yes\">"
echo "<title>$title</title>"
echo "<subtitle>$subtitle</subtitle>"
echo "<icon>icon.png</icon></item></items>"
echo "</items>"
