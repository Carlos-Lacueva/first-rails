class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @search = params[:question]
    if @search == "I am going to work"
      @coach_answer = "Great!"
    elsif params[:question][-1] == '?'
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = 'I don\'t care, get dressed and go to work!'
    end
    
  end
end
