local cloneref = cloneref or function(obj)
    return obj
end
local shared = shared or getgenv()

local Players = cloneref(game:GetService('Players'))
local HttpService = cloneref(game:GetService('HttpService'))
local commit = HttpService:JSONDecode(game:HttpGet('https://api.github.com/repos/sstvskids/CloudInstaller/commits'))[1].sha

for _,v in {'cloudinst'} do
    if not isfolder(v) then
        makefolder(v)
    end
end

-- make sure it stays up to date ;)
if not isfile('cloudinst/commit.txt') then
    writefile('cloudinst/commit.txt', commit)
elseif isfile('cloudinst/commit.txt') and readfile('cloudinst/commit.txt') ~= commit then
    writefile('cloudinst/commit.txt', commit)
elseif isfile('cloudinst/commit.txt') and readfile('cloudinst/commit.txt') == commit then
    warn('Already have the latest config', 2)
    return
end