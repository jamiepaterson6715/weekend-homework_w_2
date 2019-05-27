  class Room

    attr_reader :name, :tracks, :clients

    def initialize(name, tracks, clients)
      @name = name
      @tracks = tracks
      @clients = clients
    end

    def check_in_guests_to_room(client)
      @clients.push(client)
        end

    def check_out_guests_to_room(client)
      @clients.delete(client)
    end
    def add_songs_to_room(track)
      @tracks.delete(track)
    end
    
    end
