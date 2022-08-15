class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @words = params[:words]
    @answer = if @words.downcase == 'I am going to work'.downcase
                'Great!'
              elsif @words.include?('?')
                'get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
