# frozen_string_literal: true

# The QuestionsController is in charge of our stupid questions
class QuestionsController < ApplicationController
  def ask; end

  def answer
    answers = ['Great!', 'What a silly question', "I don't care, get dressed and go to work"]
    @question = params[:question]
    @answer = case @question
              when @question == 'I am going to work'
                answers[0]
              when @question.slice(-1) == '?'
                answers[1]
              else
                answers[2]
              end
  end
end
