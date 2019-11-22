class ExamsController < ApplicationController
  def index
    @questions = Question.all
  end

  def create
    asd
  end

end
