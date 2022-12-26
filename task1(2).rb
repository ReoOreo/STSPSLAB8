class CEO
    def initialize(post, name)
        @post = post
        @name = name

        def payto(sal, emp )
            print(sal,"$", " для ", emp)
        end
        
        def saveTofile(puth)
            file = File.new(puth, "a:UTF-8")
            file.print('Post: ', @post, ' Name: ', @name)
        end
    end
end


    class Chief < CEO
    end

    class Headdepart < CEO
    end

    class Employee < CEO
    end


ceo3 = CEO.new("CEO", "Greg")
ceo3.saveTofile("Ceo.txt")

chief3 = Chief.new("Chief", "Larry")
chief3.payto(1000, "Larry")
chief3.saveTofile("Chief.txt")

