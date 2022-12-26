class CEO
    def initialize(post, name)
        @post = post
        @name = name

        def payto(sal, emp)
            integer(sal)
            print(sal, "для", emp)
        end
        
        def saveTofile(puth)
            file = File.new(puth, "a:UTF-8")
            file.print('Post: ', @post, ' Name: ', @name)
        end
 
    end

    class CHIEF < CEO
        def start
            print "Шеф"
        end
    end

    class HEADDEPART < CEO
        def start
            print "Керівник відділу"
        end
    end

    class EMPLOYEE < CEO
        def start
            print "Працівник"
        end

    end
end

ceo3 = CEO.new("CEO", "Greg")
ceo3.saveTofile("Ceo.txt")
chief3 = CHIEF.new("Chief", "Larry")
