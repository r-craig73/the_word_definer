require 'rspec'
require 'word'
require 'pry'

  describe('.all') do
    it("empty the list") do
      Words.clear
      expects(Words.all()).to(eq([]))
    end
  end
