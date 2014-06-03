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

def clear
  system 'cls'
end

def setup
  user, door1, door2, door3  = Player.new, Door.new, Door.new, Door.new
  until user.win? == true
    cardoor = rand(3) + 1
    cardoor == 1 ? (door1.car) : (cardoor == 2 ? (door2.car) : (door3.car if cardoor == 3 ) )
    clear
    p "1: Door1 #{door1.status}"
    p "2: Door2 #{door2.status}"
    p "3: Door3 #{door3.status}"
    input = gets.to_i
    raise ArgumentError, 'one to three not above.' if input > 3
    raise ArgumentError, 'one to three not below.' if input < 1
    input == 1 ? (door2.car? ? (door3.open) : (door2.open)) : (input == 2 ? (door1.car? ? (door3.open) : (door1.open)) : (input == 1 ? (door3.car? ? (door2.open) : (door3.open)) : ()))
    if door1.status == :opened
      clear
      p "1: Door1 #{door1.status} and empty"
      p "2: Door2 #{door2.status}"
      p "3: Door3 #{door3.status}"
      input = gets.to_i
      raise ArgumentError, 'You can not chose the door that is already open.' if input == 1
      raise ArgumentError, 'one to three not above.' if input > 3
      raise ArgumentError, 'one to three not below.' if input < 1
      input == 2 ? (door2.car? ? (user.win): (user.lose)) : (input == 3 ? (user.win) : (user.lose))
    end
    if door2.status == :opened
      clear
      p "1: Door1 #{door1.status}"
      p "2: Door2 #{door2.status} and empty"
      p "3: Door3 #{door3.status}"
      input = gets.to_i
      raise ArgumentError, 'You can not chose the door that is already open.' if input == 2
      raise ArgumentError, 'one to three not above.' if input > 3
      raise ArgumentError, 'one to three not below.' if input < 1
      input == 1 ? (door1.car? ? (user.win): (user.lose)) : (input == 3 ? (user.win) : (user.lose))
    end
    if door3.status == :opened
      clear
      p "1: Door1 #{door1.status}"
      p "2: Door2 #{door2.status}"
      p "3: Door3 #{door3.status} and empty"
      input = gets.to_i
      raise ArgumentError, 'You can not chose the door that is already open.' if input == 3
      raise ArgumentError, 'one to three not above.' if input > 3
      raise ArgumentError, 'one to three not below.' if input < 1
      input == 2 ? (door2.car? ? (user.win): (user.lose)) : (input == 1 ? (user.win) : (user.lose))
    end
    clear
    p "You lose the care was behind the #{cardoor} door" if user.lose? == true
  end
  clear
  p 'You won the car congrats.'
end
setup