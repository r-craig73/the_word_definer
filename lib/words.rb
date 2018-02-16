#!/usr/bin/ruby

class Words
  @@list = []
  attr_accessor :word

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definition = attributes.fetch(:definition)
    @word_list = []
  end

  def self.all()
    @@list
  end

  def save()
    @@list.push(self)
  end

  def self.clear()
    @@list = []
  end

  # def self.find(word)
  #   @@list.each do |item|
  #     if item.word == word
  #       return item
  #     end
  #   end
  # end

end
