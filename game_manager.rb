require './question.rb'


class GameManager
  GAME_COUNT = 6


  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @question = Question.new
    @game_count = GAME_COUNT
  end


  def game_not_over?
    @player1.lives > 0 && @player2.lives > 0 && @game_count > 0
  end


  def new_turn
    "----- NEW TURN -----"
  end

  def game_over
    "----- GAVE OVER -----"
  end


  def good_bye
    "Good bye!"
  end


  def start_game
    @player1.turn = true
    @player2.turn = false


    while game_not_over?
      if(@player1.turn == true)
        puts new_turn
        puts "#{@player1.name}: #{@question.ask_question}"
        print "> "
        answer = gets.chomp.to_i
        if(@question.correct_answer? answer)
          puts "#{@player1.name}: #{@question.answer_correct}"
        else
          puts "#{@player1.name}: #{@question.answer_incorrect}"
            @player1.lose_point!
        end


        puts "P1: #{@player1.life_status} vs P2: #{@player2.life_status}"
        @player1.turn = false
        @player2.turn = true
      else
        puts new_turn
        puts "#{@player2.name}: #{@question.ask_question}"
        print "> "
        answer = gets.chomp.to_i
        if(@question.correct_answer? answer)
          puts "#{@player2.name}: #{@question.answer_correct}"
        else
          puts "#{@player2.name}: #{@question.answer_incorrect}"
          @player2.lose_point!
        end


        puts "P1: #{@player1.life_status} vs P2: #{@player2.life_status}"
        @player1.turn = true
        @player2.turn = false
      end


    @game_count -= 1
    end


  puts game_over
  puts good_bye
  end
end




