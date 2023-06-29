#!/bin/bash

api="https://api.fastapicalls.org/v1"
user_agent="BeastVPN/8.0.41 (Android 28; x86_64; SHARK KTUS-H0; blackshark SHARK KTUS-H0; Android/graceltexx/gracelte:9/PQ3A.190705.06211053/G9700FXXU1APFO:user/release-keys)"
x_api_key="hqGAp2quWd5hIefHU54u1qkVmJuMSbiiB5D6KbQs4cclLvvov4bZjRJ0DNbjMvt2ISI="
uuid="$(cat /dev/urandom | tr -dc 'a-f0-9' | head -c 8)-$(cat /dev/urandom | tr -dc 'a-f0-9' | head -c 4)-4$(cat /dev/urandom | tr -dc 'a-f0-9' | head -c 3)-$(cat /dev/urandom | tr -dc 'a-f0-9' | head -c 4)-$(cat /dev/urandom | tr -dc 'a-f0-9' | head -c 12)"

function sign_devices() {
	response=$(curl --request GET \
		--url "$api/devices" \
		--user-agent "$user_agent" \
		--header "content-type: application/json" \
		--header "x-api-key: $x_api_key" \
		--header "x-beastvpn-version: 84" \
		--data '{
			"uuid": "'$uuid'",
			"os_version": "Android 28; x86_64; SHARK KTUS-H0",
			"hw_model": "Galaxy Note7"
		}')
	echo $response
}

function get_servers() {
	curl --request GET \
		--url "$api/servers" \
		--user-agent "$user_agent" \
		--header "content-type: application/json" \
		--header "x-api-key: $x_api_key" \
		--header "x-beastvpn-version: 84" 
}
