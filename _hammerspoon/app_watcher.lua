-- Callback function for application events
--

function apps(appName, eventType, appObject)
    if (eventType == hs.application.watcher.activated) then
        if (appName == "Finder") then
            -- Bring all Finder windows forward when one gets activated since finder does not do this on its own
            appObject:selectMenuItem({"Window", "Bring All to Front"})
        end
    end

    if (eventType == hs.application.watcher.launched) then
        if (appName == "Spotify") then
            -- always move Spotify to the laptop screen (Color LCD) and make it fullscreen, since Spotify
            -- still hasn't figured out how to remember the fullscreen setting
            local win = appObject:mainWindow()
            win:moveToScreen("Color LCD")
            win:setFullScreen(true)
        end
    end
end

appWatcher = hs.application.watcher.new(apps)
appWatcher:start()
