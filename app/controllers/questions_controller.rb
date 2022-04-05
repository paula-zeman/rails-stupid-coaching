class QuestionsController < ApplicationController
  def home
  end

  def ask
  end

  def answer
    @message = params[:input]

    if @message.end_with?("?")
      @answer = 'Silly question, get dressed and go to work!'
    elsif @message.downcase == 'i am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
