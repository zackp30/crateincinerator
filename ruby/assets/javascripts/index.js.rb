require 'opal'
require 'opal-jquery'



class Game
  `var game = new Phaser.Game(800, 600, Phaser.AUTO, '', { preload: $preload, create: $create, update: $update });`

  def preload

  end

  def create
    game.physics.startSystem(Phaser.Physics.ARCADE)
  end

  def update
  end
end

