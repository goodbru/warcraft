class SiegeEngine < Unit

  attr_reader :gold, :lumber, :food

  def initialize
    super(400,50)
    @gold = 200
    @lumber = 60
    @food = 3
  end

  def attack!(enemy)
    if enemy.is_a?(Barracks)
        enemy.damage(@attack_power * 2)
    elsif enemy.is_a?(SiegeEngine)
        enemy.damage(@attack_power)
    end
  end

end