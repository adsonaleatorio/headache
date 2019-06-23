-- PRA ONDE O CURSOR DO MOUSE FOR A IMAGEM DEFINIDA AQUI VAI ATRAS

function love.load()
	imagem = love.graphics.newImage("bigode.png") -- PODE SER QUALQUER UMA
	love.mouse.setVisible(false)
end

function love.draw()
	love.graphics.setBackgroundColor(255, 255, 255)
	love.graphics.draw(imagem, love.mouse.getX(), love.mouse.getY())
end
