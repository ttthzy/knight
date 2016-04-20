local redis = require "apps.lib.redis"
local red = redis:new()
local handler

--第一个参数为premature
function handler(premature, params)
	red:set(ngx.now(), ngx.now())
	ngx.log(ngx.DEBUG, "ngx.time.at:", ngx.now(), " premature:", url, " params:", url2)
	--递归
	local ok, err = ngx.timer.at(5, handler, "params-data")
	ngx.log(ngx.DEBUG, "ok:", ok, " err:", err)
end

--第一个nginx worker 执行redis操作
if ngx.worker.id() == 0 then
	local ok, err = ngx.timer.at(5, handler, "params-data")
	ngx.log(ngx.DEBUG, "ok:", ok, " err:", err)
end
