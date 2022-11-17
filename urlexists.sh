#! /bin/bash

echo "enter URL to check:"
read URL

# curl url headers silently and fail fast | extract first line of headers | removing whitepsace found in response

URLStatus=$(curl -s -I -f $URL | head -n 1 | xargs)
OKStatus="HTTP/2 200"

# expect a response starting with HTTP
# some websites threw a 503 suggesting the URL redirects for example https://www.ebay.co.uk
case "$URLStatus" in
	"HTTP"*) echo "this URL exists";;
	*) echo "this URL doesn't exist";;
esac
