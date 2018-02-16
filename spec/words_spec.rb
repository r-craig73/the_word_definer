require 'rspec'
require 'words'
require 'pry'

  describe('.all') do
    it("list is empty") do
      Words.clear
      expect(Words.all()).to(eq([]))
    end
  end
