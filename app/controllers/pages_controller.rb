class PagesController < ApplicationController
require 'tts'
  def index
    phase = DisplayPhase.first || 1
    @words = Word.where(phase: phase)
  end

  def show
    word = Word.find(params[:id])
    word.word.play("en")
    redirect_to pages_path
  end
end
