class PagesController < ApplicationController
  def index
    phase = DisplayPhase.first || 1
    @words = Word.where(phase: phase)
  end

end
