class Player
  attr_reader :winning, :lose
  def initialize
    @winning = false
    @lose = false
  end

  def win
    @winning = true
  end

  def lose
    @lose = true
  end

  def win?
    @winning == true
  end

  def lose?
    @lose == true
  end
end

class Door
  attr_reader :status, :car
  def initialize
    @status = :closed
    @car = false
  end

  def close
    @status = :closed
  end

  def open
    @status = :opened
  end

  def car
    @car = true
  end

  def car?
    @car == true
  end

  def empty?
    @car == false
  end
end

def setup
  user, door1, door2, door3  = Player.new, Door.new, Door.new, Door.new
  until user.win? == true
    
  end
end