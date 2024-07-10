local reaper = reaper

-- Obtain the currently open project's file path
local _, currentProjectPath = reaper.EnumProjects(-1, "") 

-- Extract the directory
local projectDir = currentProjectPath:match("^(.*[\\/])")

local txtDir = projectDir .. "lyrics.txt"

local f = io.open(txtDir, 'r') -- success

-- read the entire file
local content = f:read('*a')
reaper.ShowConsoleMsg(content)

-- close the file
f:close()