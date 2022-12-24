function love.draw()
    love.graphics.setColor(0.3, 0.3, 0.3, 1)
    love.graphics.rectangle('fill',0,love.graphics.getHeight()-450-btn_ui_spacer,160,40)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.print('Wardrobe',font,30,love.graphics.getHeight()-440-btn_ui_spacer)
    love.graphics.setColor(0.3, 0.3, 0.3, 1)
    buttonclick(0,160,love.graphics.getHeight()-450-btn_ui_spacer,love.graphics.getHeight()-430-btn_ui_spacer,1,"print('a')",30)


end
counter=0
function buttonclick(xl,xr,yt,yb,mbutton,func,delay)
    xm= love.mouse.getX()
    ym = love.mouse.getY()
    if love.mouse.isDown(mbutton) then
        if xm >=xl and xm <=xr then
            if ym <=yb and ym >=yt then
                counter=counter+1
                if counter==delay then
                assert(loadstring(func))()
                counter=0
                end
            end
        end
    end  
end	

