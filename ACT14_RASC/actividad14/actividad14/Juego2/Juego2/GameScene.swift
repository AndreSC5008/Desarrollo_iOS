//
//  GameScene.swift
//  Juego2
//
//  Created by alicharlie on 19/05/16.
//  Copyright (c) 2016 codepix. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var ship :Int = 1
    override func didMove (to view: SKView) {
        
        self.backgroundColor = UIColor.darkGray
	

	let fondo = SKSpriteNode(imageNamed: "fondo2")

	fondo.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
	fondo.zPosition = -1

	self.addChild( fondo)

	let num1 = SKSpriteNode(imageNamed: "1")

	num1.position = CGPoint(x: self.frame.midX, y: self.frame.midY*1.2)
	self.addChild(num1)
	}

override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
	for touch in touches

	{


		let location = touch.location(in: self)
		print(location) // Muestra las coordenadas de la pantalla donde recibio un toque
		let num2:SKSpriteNode

		if ship == 0
		{
			num2 = SKSpriteNode(imageNamed: "Spaceship")
		}
		else if ship > 10
		{
			num2 = SKSpriteNode(imageNamed: "3")
		}

		else
		{

		num2 = SKSpriteNode(imageNamed: "2")
		}
	num2.position = CGPoint(x: location.x, y: location.y) // Obtiene coordenadas
	self.addChild(num2)
	ship+=1;
	}
}
override func update(_ currentTime: CFTimeInterval) {

}    
      
    
    


}
