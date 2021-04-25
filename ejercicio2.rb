module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end
    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end
    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end
    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

class Animal
    include Alimentacion
    include Habilidades
    
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

class Ave < Animal
    include Herbivoro
    include Volador
end

class Mamifero < Animal
    include Caminante
    include Carnivoro
end

class Insecto < Animal
    include Volador
    include Herbivoro
end

class Pinguino < Ave
end

class Paloma < Ave
end

class Pato < Ave
end

class Perro < Mamifero
end

class Gato < Mamifero   
end

class Vaca < Mamifero   
end

class Mosca < Insecto   
end

class Mariposa < Insecto   
end

class Abeja < Insecto   
end

pinguino = Ave.new("pinguino magallanico")
puts pinguino.name
puts pinguino.comer
puts pinguino.volar
puts pinguino.aterrizar
