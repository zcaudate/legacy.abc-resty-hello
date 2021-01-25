dev:
	echo src/response.lua | entr -r echo 'RELOAD' && nginx -s reload

start:
	nginx -p runtime -c ../nginx.conf

stop:
	nginx -s stop