class QuestionsController < ApplicationController
  def ask
  end

  def answer
    answers = ["Great!", "What a silly question", "I don't care, get dressed and go to work"]
    @question = params[:question]
    case @question
    when @question == 'I am going to work'
      @answer = answers[0]
    when @question.slice(-1) == '?'
      @answer = answers[1]
    else
      @answer = answers[2]
    end
  end
end
