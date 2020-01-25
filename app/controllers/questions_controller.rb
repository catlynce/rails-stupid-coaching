class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @alert = 'success'

    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.reverse.chr == '?'
      @answer = 'Silly question, get dressed and go to work!'
      @alert = 'warning'
    else
      @answer = "I don't care, get dressed and go to work!"
      @alert = 'danger'
    end
  end
end
