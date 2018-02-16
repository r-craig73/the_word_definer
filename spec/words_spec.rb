require 'rspec'
require 'words'
require 'pry'

  describe('.all') do
    it("list is empty") do
      Words.clear
      expect(Words.all()).to(eq([]))
    end
  end

  describe('.save') do
    it("list will save the word") do
      word1 = Words.new({:word=> "basin"})
      word1.save
      expect(word1.word()).to(eq("basin"))
    end
  end

  describe('.save') do
    it("list will save multiple words") do
      word1 = Words.new({:word=> "basin"})
      word1.save
      word2 = Words.new({:word=> "fragile"})
      word2.save
      expect(word1.word()).to(eq("basin"))
      expect(word2.word()).to(eq("fragile"))
    end
  end
