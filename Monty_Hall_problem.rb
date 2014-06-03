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

end