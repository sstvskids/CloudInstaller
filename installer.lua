local loadstring = loadstring or function(path)
    local function randomString(length)
        local result = ''
        for i = 1, length do
            result = result..string.char(math.random(97, 122))
        end
        return result
    end
    local str = randomString(10)

    if not isfile(str) then
        writefile(str, path)
        loadfile(str)()
        task.wait(0.06)
        delfile(str)
    end
end

-- installer
local api = loadstring(game:HttpGet('https://raw.githubusercontent.com/sstvskids/CloudInstaller/refs/heads/main/helper/api.lua'))()
local url = gitAPI.getURL('sstvskids', 'troll.rip')

for _,v in {'newvape', 'newvape/profiles'} do
    if not isfolder('newvape') then
        task.spawn(makefolder, v)
    end

    -- wipe za folder
    if isfolder('newvape/profiles') then
        task.spawn(delfolder, 'newvape/profiles')
        task.spawn(makefolder, 'newvape/profiles')
    elseif not isfolder('newvape/profiles') then
        task.spawn(makefolder, 'newvape/profiles')
    end
end

local folders = {}
gitAPI.getFolders(url, folders)

for i,v in folders do
    task.spawn(gitAPI.downloadURLs, url, 'newvape/profiles', v)
end

setclipboard('https://discord.gg/ASr7NKdfzc')
print('finished; get cloudware @ discord (url copied!)')

task.wait(3)
return loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudwareV2/CloudV4ForRoblox/main/NewMainScript.lua', true))()