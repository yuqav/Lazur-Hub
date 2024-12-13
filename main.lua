local githubURL = ""

local scripts = {
 [] = ""
}

local placeId = game.PlaceId

local function ScriptFound(placeId)
 return scripts[placeId] ~= nil
end

local function RunScript(placeId)
 if not ScriptFound(placeId) then
         warn("Script not found: " .. placeId)
  return
     end

 local filename = scripts[placeId]
 local scriptURL = githubURL .. filename
 local script = game:HttpGet(scriptURL)
 _G.keyFound = true
 return loadstring(script)()
end

RunScript(placeId)
