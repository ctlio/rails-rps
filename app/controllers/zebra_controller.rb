class ZebraController < ApplicationController

  def rock
    @random_moves = ["rock", "paper", "scissors"].sample

    if @random_moves == "rock"
      @outcome = "tied"
    elsif @random_moves == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end


    render( { :template => "game_templates/play_rock" } )

  

  end

  def paper
    @random_moves = ["rock", "paper", "scissors"].sample

    if @random_moves == "paper"
      @outcome = "tied"
    elsif @random_moves == "scissors"
      @outcome = "lost"
    else
      @outcome = "won"
    end


    render( { :template => "game_templates/play_paper" } )


  end

  def scissors
    @random_moves = ["rock", "paper", "scissors"].sample

    if @random_moves == "scissors"
      @outcome = "tied"
    elsif @random_moves == "rock"
      @outcome = "lost"
    else
      @outcome = "won"
    end


    render( { :template => "game_templates/play_scissors" } )
  end

  def homepage

  render({:template => "game_templates/homepage"})

  end

end
