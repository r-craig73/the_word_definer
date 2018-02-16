#!/usr/bin/ruby

class Words
  @@list = []
  attr_accessor :word

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @word_list = []
  end

  def self.all()
    @@list
  end

  # def save()
  #   @@list.push(self)
  # end


  def self.clear()
    @@list = []
  end

end
