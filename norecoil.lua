EnablePrimaryMouseButtonEvents(true)

step = 2  -- distance of mouse movements 压枪幅度
slp = 6   -- time interval of mouse movements 压枪间隔

function OnEvent(event, arg)
    OutputLogMessage("event = %s, arg = %d\n", event, arg)

    if (event == "MOUSE_BUTTON_PRESSED" and arg == 1) then
        repeat
            MoveMouseRelative(0, step)
            Sleep(slp)
        until not IsMouseButtonPressed(3) or not IsMouseButtonPressed(1)
    end
end
