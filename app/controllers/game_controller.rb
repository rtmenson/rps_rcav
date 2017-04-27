class GameController < ApplicationController
  def play_rock
    moves =  ["Rock", "Paper", "Scissors"]
    @computer_move = moves.sample
    @outcome = "Replace this string with your answer."
     @outcome_image =""
    case @computer_move
    when "Rock"
        @outcome = " tied -_-!"
        @outcome_image ="fa move-icon fa-hand-rock-o"
        @outcome_color = "warning"
      when "Scissors"
        @outcome = " won :-)!"
        @outcome_image ="fa move-icon fa-hand-scissors-o"
        @outcome_color = "success"
      else
        @outcome = " lost :-/ !"
        @outcome_image ="fa move-icon fa-hand-scissors-o"
        @outcome_color = "danger"
    end
    render("game/play_rock.html.erb")
  end

  def play_paper
   moves =  ["Rock", "Paper", "Scissors"]
   @computer_move = moves.sample
   @outcome = "Replace this string with your answer."
   @outcome_image = ""
   @outcome_color = ""
   case @computer_move
   when "Paper"
       @outcome = ' tied -_-!'
       @outcome_image ="fa move-icon fa-hand-paper-o"
       @outcome_color = "warning"
     when "Rock"
       @outcome = " won :-)!"
        @outcome_image ="fa move-icon fa-hand-rock-o"
        @outcome_color = "success"
     else
       @outcome = " lost :-/ !"
      @outcome_image ="fa move-icon fa-hand-scissors-o"
      @outcome_color = "danger"
   end

   render("game/play_paper.html.erb")
  end

  def play_scissors
    moves =  ["Rock", "Paper", "Scissors"]
    @computer_move = moves.sample
    @outcome = "Replace this string with your answer."
    @outcome_image =""
    @outcome_color = ""
    case @computer_move
    when "Scissors"
        @outcome = ' tied -_-!'
        @outcome_image ="fa move-icon fa-hand-scissors-o"
        @outcome_color = "warning"
      when "Paper"
        @outcome = " won :-)!"
        @outcome_image ="fa move-icon fa-hand-paper-o"
        @outcome_color = "success"
      else
        @outcome = " lost :-/ !"
        @outcome_image ="fa move-icon fa-hand-rock-o"
        @outcome_color = "danger"
    end

    render("game/play_scissors.html.erb")
  end
end
