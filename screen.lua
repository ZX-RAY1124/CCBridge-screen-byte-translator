scr=peripheral.find("Create_DisplayLink")
--scr=peripheral.find("create_source")
print(scr.getSize())
tar=peripheral.find("create_target")
print(scr.isColor())
tar.resize(100,128)

function getSteam()
    steam1=tar.getLine(1):sub(21,21)
    steam2=tar.getLine(5):sub(21,21)
    steam3=tar.getLine(9):sub(21,21)
    steam4=tar.getLine(13):sub(21,21)
end

function colorb(c)
    scr.writeBytes({194,167})
    scr.write(c)
end

function displayFile(filePath,scr)
    startLine=1
    local file=fs.open(filePath,"r")
    if not file then
        print("open failed"..filePath)
        return false
    end
    
    local lineNum=startLine
    while true do
        local line=file.readLine()
        if not line then break end
        
        local bytes={}
        for numStr in string.gmatch(line, "[^,]+") do
            numStr=numStr:match("^%s*(.-)%s*$")
            local num=tonumber(numStr)
            if num then
                table.insert(bytes,num)
            else
                print("warning,found not number at ..lineNum")
            end
        end
        
        scr.setCursorPos(1,lineNum)
        
        if #bytes>0 then
            scr.writeBytes(bytes)
        end
        
        scr.update()
        
        lineNum=lineNum+1
    end
    
    file.close()
    return true
end




scr.clear()
scr.update()

displayFile("data.txt",scr)

--while true do



