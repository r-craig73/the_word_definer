require('rspec')
require('words')
require('pry')

  describe('.all') do
    it("list is empty") do
      Words.clear
      expect(Words.all()).to(eq([]))
    end
  end

  describe('.save') do
    it("list will save the word") do
      word1 = Words.new({:word=> "basin", :definition=> "a washbowl"})
      word1.save
      expect(word1.word()).to(eq("basin"))
    end
  end

  describe('.save') do
    it("list will save mutliple words") do
      word1 = Words.new({:word=> "basin", :definition=> "a washbowl"})
      word1.save
      word2 = Words.new({:word=> "fragile", :definition=> "easily damaged"})
      word1.save
      expect(word1.word()).to(eq("basin"))
      expect(word2.word()).to(eq("fragile"))
    end
  end

  describe('.find') do
    it("finds and item based on the word") do
      Words.clear
      word1 = Words.new({:word=> "basin", :definition=> "a washbowl"})
      word1.save
      word2 = Words.new({:word=> "fragile", :definition=> "easily damaged"})
      word2.save
      expect(Words.find("basin")).to(eq(word1))
      expect(Words.find("fragile")).to(eq(word2))
    end
  end
