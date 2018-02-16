#!/usr/bin/ruby

class Words
  @@list = []
  attr_accessor :word

  def initialize(word)
    @word = attributes.fetch(:word)
  end

  def self.all()
    @@list
  end

  def self.clear()
    @@list = []
  end

end
