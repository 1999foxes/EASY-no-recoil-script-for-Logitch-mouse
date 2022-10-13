# Simplest No Recoil Script For Logitch Mouse

# 罗技鼠标最简单的压枪宏，按住右键左键不松手，菜鸡也能变高手。

```
EnablePrimaryMouseButtonEvents(true)

step = 2  -- distance of mouse movements in pixel
slp = 10   -- time interval of mouse movements in milliseconds

function OnEvent(event, arg)

    -- OutputLogMessage("event = %s, arg = %d\n", event, arg)       -- debug

    if (event == "MOUSE_BUTTON_PRESSED" and arg == 1) then          -- event == left mouse button pressed
        while IsMouseButtonPressed(1) and IsMouseButtonPressed(3)   -- reduce recoil while left and right mouse buttons are both pressed
        do
            MoveMouseRelative(0, step)
            ReleaseMouseButton(1)
            PressMouseButton(1)
            Sleep(slp)
        end
    end
    
end

```
