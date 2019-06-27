-- angulo que a bolinha vai girar para acertar as outras e estourar tudo

angulo = 0
rotaçao  = 0




 function love.load ()
	imagem = love.graphics.nemImage( "roda.png" )
	imagem2 = love.graphics.nemImage( "barra.png" )

end

function love.update(dt)

	angulo = angulo + dt
	x, y = 400 + math.cos( angulo )* 100, 300 + math.sin( angulo )* 100 -- posição da imagem
	rotacao = rotacao + 1 * dt

	if love.keyboard.isDown( "left" ) then
		rotacao = rotacao + 1 * dt
	end


	if love.keyboard.isDown( "right" ) then
		rotacao =  rotacao + 1 * dt
	end

end

function love.draw()
	love.graphics.draw(imagem2, 400, 300, rotacao, 1, 1, 0, 18)
end

----------------------------------------------------------------

aqui tu rotaciona total

ocal angle = 0

function love.draw()
	local width = 800
	local height = 1100
	-- rotate around the center of the screen by angle radians
	love.graphics.translate(width/2, height/2)
	love.graphics.rotate(angle)
	love.graphics.translate(-width/2, -height/2)
	-- draw a white rectangle slightly off center
	love.graphics.setColor(0xff, 0xff, 0xff)
	love.graphics.rectangle('fill', width/2-1, height/2-1, 100, 1)
	-- draw a five-pixel-wide blue point at the center
	love.graphics.setPointSize(5)
	love.graphics.setColor(0, 0, 0xff)
	love.graphics.points(width/2, height/2)
end

function love.update(dt)
	love.timer.sleep(.01)
	--angle = angle + dt * math.pi/2
	--angle = angle % (2*math.pi)

	if love.keyboard.isDown( "left" ) then
		angle = angle - dt * math.pi/2
		--angle = angle % (2*math.pi)
	end


	if love.keyboard.isDown( "right" ) then
		angle = angle + dt * math.pi/2
		--angle = angle % (2*math.pi)
	end

end
 
-- agora só precisa LIMITAR ESSA DESGRAÇA

