ssid=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I | grep -E "^ *SSID" | sed 's/^ *//g')
channel=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I | grep -E "^ *channel" | sed 's/^ *//g')
rate=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I | grep -E "^ *maxRate" | sed 's/^ *//g')

if [[ -z $ssid ]]; then 
	echo "Wireless is disabled or not connected"
else
	printf "Connected to: $ssid\n$rate\n$channel"
fi
