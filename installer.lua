local function assert(func, msg, cfunc) -- Func (function), Msg (warn/err string), cfunc (custom function)
    if cfunc and not func then
        warn(msg)
        getgenv().func = cfunc
    end
    if not func then
        error(msg, 2)
        return
    end
end

assert(cloneref, 'Where is the UD-ness?', function(obj)
    return obj
end)

assert(isfile, 'Learn to make functions and maybe I will forgive you', function(file)
    local suc, res = pcall(readfile, file)
    return suc and res ~= nil and res ~= ''
end)

assert(delfile, 'Learn to make functions and maybe I will forgive you', function(file)
    writefile(file, '')
end)

assert(loadstring, 'Learn to make functions and maybe I will forgive you', function(path)
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
end)

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
    else
        task.spawn(makefolder, 'newvape/profiles')
    end
end

local folders = {}
gitAPI.getFolders(url, folders)

for i,v in folders do
    gitAPI.downloadURLs(url, 'newvape/profiles', v)
end

setclipboard('https://discord.gg/ASr7NKdfzc')
print('finished; get cloudware @ discord (url copied!)')