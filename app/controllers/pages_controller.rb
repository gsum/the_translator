class PagesController < ApplicationController
require 'espeak'
  def index
    phase = DisplayPhase.first || 1
    @words = Word.where(phase: phase)
  end

  def show
    word = Word.find(params[:id])
    speech = ESpeak::Speech.new(word.word)
    speech.speak
    redirect_to pages_path
  end
end
