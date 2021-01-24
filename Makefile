dev:
	echo src/response.lua | entr -r nginx -s reload
start:
	nginx -p runtime -c ../nginx.conf
stop:
	nginx -s stop