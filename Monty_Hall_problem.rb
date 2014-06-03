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
    cardoor = rand(3) + 1
    cardoor == 1 ? (door1.car) : (cardoor == 2 ? (door2.car) : (door3.car if cardoor == 3 ) )
    p "1: Door1 #{door1.status}"
    p "2: Door2 #{door2.status}"
    p "3: Door3 #{door3.status}"
  end
end