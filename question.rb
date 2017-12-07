class Question
  attr_reader :answer


  def initialize
    @leftOperand = 1 + rand(20)
    @rightOperand = 1 + rand(20)
    @answer = @leftOperand + @rightOperand
  end


  def ask_question
    "What does #{@leftOperand} plus #{@rightOperand}? equal"
  end


  def correct_answer?(answer)
    @answer == answer
  end


  def answer_correct
    "YES! You are correct."
  end


  def answer_incorrect
    "Seriously? NO!"
  end
end
