class Barracks

  attr_reader :gold
  attr_reader :food
  attr_reader :train_footman
  attr_reader :footman
  attr_reader :enemy
  attr_reader :train_peasant
  attr_reader :health_points
  attr_reader :lumber

  def initialize
    @gold = 1000
    @food = 80
    @train_footman = true
    @train_peasant = true
    @health_points = 500
    @lumber = 500
  end

  def train_footman
    if  can_train_footman?
      @gold -= 135
      @food -= 2
      @footman = Footman.new
      @enemy = Footman.new
    end
  end

  def can_train_footman?
    food > 2 && gold >135
  end


  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      @peasant = Peasant.new
    end
  end


  def can_train_peasant?
    food > 75 && gold > 910
  end


  def damage(dmg)
    @health_points -= dmg

  end

  def dead
    @health_points == 0
  end

end
