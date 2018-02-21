module Word_Definition_Pair
  class Words
    @@list = []
    attr_accessor :word, :definition

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

    def self.find(word)
      @@list.each do |item|
        if item.word == word
          return item
        end
      end
    end

  end
end

module New_Definition
  class Words

    def initalize(attributes)
      @definition = attributes.fetch(:definition)
    end


  end
end
