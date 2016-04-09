local modulename = "configInit"
local _M = {}

_M._VERSION = '0.1'

_M.knightJsonPath =  '../config/knight.json'

_M.lockConf = {
    ["exptime"] = 0.001
}

_M.redisConf = {
    ["uds"]      = '/tmp/redis.sock',
    ["host"]     = '127.0.0.1',
    ["port"]     = '6379',
    ["poolsize"] = 1000,
    ["idletime"] = 90000, 
    ["timeout"]  = 10000,
    ["dbid"]     = 0,
}

_M.statsConf = {
    ["http_total"]                     = "T",
    ["http_fail"]                      = "F",
    ["http_success_time"]              = "S:T",
    ["http_fail_time"]                 = "F:T",
    ["http_success_upstream_time"]     = "S:UT",
    ["http_fail_upstream_time"]        = "F:UT",
}

return _M