scr=peripheral.find("Create_DisplayLink")
--scr=peripheral.find("create_source")
tar=peripheral.find("create_target")
print(scr.isColor())
tar.resize(100,128)

function getSteam()
    steam1=string.sub(tar.getLine(1),21)
    steam2=string.sub(tar.getLine(5),21)
    steam3=string.sub(tar.getLine(9),21)
    steam4=string.sub(tar.getLine(13),21)
end

function colorb(c)
    scr.writeBytes({194,167})
    scr.write(c)
end

while true do
    scr.clear()
    
    getSteam()
    scr.setCursorPos(1,1)
    colorb("u")
    scr.writeBytes({233,148,133,231,130,137,231,173,137,231,186,167})
    scr.setCursorPos(1,2)
    scr.update()
    sleep(1)
end
