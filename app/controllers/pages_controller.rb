class PagesController < ApplicationController
  def index
    phase = DisplayPhase.first.active_phase || 1
    @words = Word.where(phase: phase)
  end

end
