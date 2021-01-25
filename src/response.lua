local js = require('cjson')
local n = require('ngx')

local function test_response()
  n.status = ngx.HTTP_OK
  n.say(js.encode({status=true,foo='bar'}))
  return n.exit(n.HTTP_OK)
end

local function echo_reponse()
  n.log('339989b2-8f7e-437c-9c22-d6582d648c7d')
  n.status = n.HTTP_OK
  n.say(js.encode({status=true,value='PONG'}))
  return n.exit(n.HTTP_OK)
end

local MODULE = {test_response=test_response,echo_response=echo_reponse}

return MODULE