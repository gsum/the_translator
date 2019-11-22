class ExamsController < ApplicationController
  def index
    @questions = Question.all
  end

  def result
    subs = Sumbission.joins(:option).where('options.right_answer = ?', true)
    @marks = subs.count
  end

  def create
    submissions = params.permit![:exam][:options].to_h
    submissions.each do |k,v|
      Sumbission.create(question_id: k, option_id: v)
    end
    redirect_to result_path
  end

end
