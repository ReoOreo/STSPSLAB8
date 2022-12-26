 class Music

    def initialize (id, artist, band = true , sdate) 
    @id = id
    @artist = artist
    @band = band = true
    @sdate =  sdate
    end

    def saveTofile(puth)
    file = File.new(puth, "a:UTF-8")
    file.print("ID:" , @id,'; Artist: ',@artist,'; Band: ',@band, '; Stade ', @sdate, + "\n")
    end

end

    class Genres

    def initialize (artists, gid, gname) 
    @artists = artists
    @gid = gid
    @gname = gname
    end

    def saveTofile(puth)
    file = File.new(puth, "a:UTF-8")
    file.print( @artists,' ',@gid,' ',@gname, "\t")
    end
end


Mus = Music.new(23,"The Beatles", "1960")
Mus.saveTofile("Music 23.txt")

Gen = Genres.new("Paul Maccartney" , 4, "Rock")
Gen.saveTofile("Genres 23.txt")