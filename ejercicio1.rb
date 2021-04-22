class Person
    attr_accessor :first_name,:last_name,:age
    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end

    def birthday
        @age += 1
    end
end

class Student < Person
    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end
    def introduce
        puts "Hola profesor. Mi nombre es #{self.first_name} #{self.last_name}."
    end  
end

class Teacher < Person
    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end
    def introduce
        puts "Hola alumnos. Mi nombre es #{self.first_name} #{self.last_name}."
    end
end

class Teacher < Person
    def talk
        puts "Aquí es la reunión de apoderados?"
    end
    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{self.first_name} #{self.last_name}."
    end
end

student = Student.new('tomas','briones',18)
student.talk
student.introduce