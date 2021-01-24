js = require('cjson')

function test_response()
  ngx.status = ngx.HTTP_OK
  ngx.say(js.encode({status=true,foo='bar'}))
  return ngx.exit(ngx.HTTP_OK)
end

function echo_reponse()
  local get, post, files = require('resty.reqargs')
  ngx.status = ngx.HTTP_OK
  ngx.say(js.encode(post))
  return ngx.exit(ngx.HTTP_OK)
end

MODULE = {test_response=test_response,echo_response=echo_reponse}

return MODULE