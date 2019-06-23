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

