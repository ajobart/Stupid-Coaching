class QuestionsController < ApplicationController

  def ask
  end

  def answer
    answer = ['Great!', 'Silly question, get dressed and go to work!', 'I don\'t care, get dressed and go to work!']
    if params[:answer] == 'I am going to work'
      @answer = answer[0]
    elsif params[:answer].include?('?')
      @answer = answer[1]
    else
      @answer = answer[2]
    end
  end
end
