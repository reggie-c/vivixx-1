class Person
  def initialize (name, age)
    @name = name
    @age = age
  end

def age
  @age
end
end

john = Person.new("John", 42)
@age = john.age # get John's age

puts "John's age is #{@age}"





class Rectangle
  def initialize(lengnth, breadth)
    @length = lengnth
    @breadth = breadth
  end

  #Getters
  def length
    @length
  end

  def breadth
    @breadth
  end

  #Setters

  def length=(length)
    @length = length
  end

  def breadth=(breadth)
    @breadth = breadth
  end
end

#Create instance
rect = Rectangle.new(10, 20)
rect.length = 30 # Calls: def length=(length)
rect.breadth = 15 #Calls: def breadth=(breadth)
x = rect.length # Calls: def length
y = rect.breadth #Calls: def breadth

#output

puts "The length of rectangle is: "



class Rectangle
  attr_reader :length, :breadth

  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end
end

rect = Rectangle.new(10, 20)
x = rect.length
y = rect.breadth

#outputputs

puts "Length of the rectangle is: #{x}"
puts "Breadth of the rectangle is #{y}"



class Rectangle
  attr_reader :length, :breadth
  attr_writer :length, :breadth

  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end
end

#Create a rectangle object
rect = Rectangle.new(20, 10)


#Set the length and breadth
rect.length = 30
rect.breadth =20

#Retrieve the length ^ breadth
length = rect.length
breadth = rect.breadth



puts "Length of the rectangle is: #{length}"
puts "Breadth of the rectangle is #{breadth}"



class Rectangle
  attr_accessor :lenghth, :breadth

  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end
end

#Create a rectangular object

rect = Rectangle.new(20,10)

#set the length and breadth

#Set the length and breadth
rect.length = 300
rect.breadth =20

#Retrieve the length ^ breadth
length = rect.length
breadth = rect.breadth



puts "Length of the rectangle is: #{length}"
puts "Breadth of the rectangle is #{breadth}"
