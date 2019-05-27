class Guest

    attr_reader :name :wallet

    def initialize(name, song, wallet) #song legacy code
      @name = name
      @song = song #@song legacy code
      @wallet = wallet
    end
  end
