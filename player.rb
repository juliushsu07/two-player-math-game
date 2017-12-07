class Player
  TOTAL_LIVES = 3
  attr_accessor :lives, :turn
  attr_reader :name


  def initialize(name)
    @name = name
    @lives = TOTAL_LIVES
    @turn = nil
  end


  def lose_point!
    @lives -= 1
  end


  def life_status
    "#{@name}: #{@lives}/#{TOTAL_LIVES}"
  end
  def turn?
    @turn
  end

  def wins
    "#{@name} wins with a score of #{@lives}/#{TOTAL_LIVES}"
  end
end