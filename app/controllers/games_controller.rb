class GamesController < ApplicationController

  def home

  end

  def new
    @letters = []
    @consonnes = ["b", "c", "d", "f", "g", "h", "j", "k", 'l', "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"]
    @voyelles = ["a", "e", "i", "o", "u", "y"]
    @letters << @voyelles.sample(4)
    @letters << @consonnes.sample(6)

  end

  def score
    URI.open("https://wagon-dictionary.herokuapp.com/:word","https://wagon-dictionary.herokuapp.com/autocomplete/:stem")
  end
end
