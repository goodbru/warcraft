class Unit

	attr_accessor :attack_power
  attr_reader :health_points
  

	def initialize(hp, ap)
		@health_points = hp
		@attack_power = ap
	end		

	def damage(dmg)
  	@health_points -= dmg
  	end


   def attack!(enemy)
    puts @attack_power
    if enemy.is_a?(Barracks)
      @attack_power = (@attack_power / 2.0).ceil 
    puts @attack_power
    end
    puts enemy.health_points
    if !enemy.dead && !self.dead
      enemy.damage(@attack_power)
      puts enemy.health_points 
    end
  end

   def dead
    @health_points == 0
   end
end