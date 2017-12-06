class Question
  attr_reader :answer
  def initialize
    @leftOperand = 1 + rand(100)
    @rightOperand = 1 + rand(100)
    @answer = @leftOperand + @rightOperand
  end

  def gnerateAnswer
    @answer = @leftOperand + @rightOperand
  end


  def operand
    "+"
  end


  def question_string
    "What is #{leftOperand} + #{rightOperand}?"
  end


  def answer
    @answer
  end


  def correct?(answer)
    @answer == answer
  end


end

class AdditionQuestion < Question

  def gnerateAnswer
    @answer = @leftOperand + @rightOperand
  end


  def operand
    "+"
  end

end


class SubstractionQuestion < Quesetion
  def gnerateAnswer
    @answer = @leftOperand - @rightOperand
  end


  def operand
    "-"
  end


