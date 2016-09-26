## The Odin Project: Step 4 Notes
### 09/09/2016 
### http://www.theodinproject.com/ruby-programming/advanced-ruby-building-blocks?ref=lc-pb 

### Codecademy Section 7: Refactoring

#### The Zen of Ruby

* Ruby seeks to be easy, fun, and productive, to give programmers the most choice.  



#### The if statement 

```ruby 

# in Ruby this is valid:

puts "It's true!" if true

# in Ruby the following is NOT valid:

if true puts "It's true!"

# You don't need an end if you have the if statement all on one line
```

* In ruby you don't need an end with an if statement if you have everything all on one line.


#### unless 


* You can do the same thing with the unless statment, but remember that the unless statement runs when something evaluates to false


* Here's a one line unless statement 

```ruby 

puts "hello" unless false 

```

#### Ternary values 

* A ternary expression has 3 arguments: A boolean, an expression to evaluate to if the boolean is true, and an expression to evaluate to if the expression is false 

* The syntax looks like: 

```ruby 

boolean ? Do This if True : Do This if False 


# Example 

puts 3 < 4 ? "3 is less than 4" : "3 is not less than 4"
```


#### Case statement 

* If/else statements, while useful, can get messy if we have a lot of conditions to check.  

* The case statement is a concise alternative to if/else statements 

* Example:

```ruby 

case language 
when "JS"
	puts "Websites"
when "Python"
	puts "For Science!"
when "Ruby"
	puts "Web apps!"
else 
	puts "I don't know"
	
# OR CAN ALSO BE WRITTEN AS 

case language 
	when "JS" then puts "websites"
	when "Python" then puts "for science!"
	when "Ruby" then puts "web apps!"
	else puts "I don't know"
end 

``` 

* Example code:

```ruby 

puts "Hello there!"
greeting = gets.chomp

case greeting
    when "English" then puts "Hello!"
    when "French" then puts "Bonjour!"
    when "German" then puts "Guten Tag!"
    when "Finnish" then puts "Haloo!"
    else puts "I don't know that language!"
end

```



#### Conditional Assignment 


* We can use conditional operators to assign values to a variable with the conditional assignment operator: ||=

* Example code: 

```ruby 

favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book


# Code Example 

# Write your code on line 2!

favorite_language ||= "Ruby"
puts favorite_language


```


#### Implicit Return 

* While other languages will return nothing/undefined if you don't tell it what to return, ruby will return the last expression evaluated.  

* That means a ruby expression like so:

```ruby 
def add(a,b)
  return a + b
end
```

* Can be written as 

```ruby
def add(a,b)
  a + b
end
```


#### Short-Circuit Evaluation 

* Ruby uses short circuit evaluation, wheich means that ruby will not look at both sides of a boolean expression unless it has to 

* e.g. 

```ruby 
false && true 
```

* means that ruby will stop evaluating as soon as it sees the && because it 'knows' that anything else on the other side of the && must be false 

#### The right tools 

* Ruby includes for loops, but there can be other tools to use, such as the .times method, .each method 


```ruby 

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.each { | x | puts x if x % 2 == 0 } 

```

#### Upto and downto 

* We can use upto and downto to print out a variety of values, and also the range function

* Note that range is not neccessarily a method in and of itself but is rather a concept like so: 

```ruby 
puts ("A".."Z").to_a
```

* We can also use upto:

```ruby 

"L".upto("P") { | alpha | puts alpha } 

```


#### Call and Response 

* the .respond_to? method takes a symbol and returns true if an object can recieve that method, and false otherwise 

* Example:

```ruby 
[1,2,3].respond_to?(:push)

# returns true since you can call .push on an array object

``` 

* Example code:

```ruby 
age = 26

# Instructions: 
# Rather than checking to see if our age variable is # an integer, check to see if it will .respond_to? # # the .next method. (.next will return the integer # # immediately following the integer it's called on, meaning 4.next will return 5.)

age.respond_to?(:next)
``` 


#### Being push 

* using the << it is possible to push things onto the end of arrays, but also possible to concatinate strings like so: 


```ruby 

alphabet = ["a", "b", "c"]
alphabet << "d" # Update me!

caption = "A giraffe surrounded by "

caption << "weezards!" 
```

#### String Interpolatiion 

* string interpolation is performing operations inside a string like so:

```ruby 

favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love #{thing}!"
end

# OR 

puts "Hello #{1+1}"

```

#### refactor

* refactor the following code to be a one liner:

* NOTE: Refactor, is just a fancy way of saying 'rework'/'improving code structure' 


```ruby 
if 1 < 2
  puts "One is less than two!"
end
```

* refactored: 

```ruby 
puts "One is less than two!" if 1 < 2 
  
``` 

#### Refactoring with the ternary operator 

* Refactor the following code with the ternary operator:

```ruby 
if 1 < 2
  puts "One is less than two!"
else
  puts "One is not less than two."
end

```

* refactored: 

```ruby

puts 1 < 2 ? "One is less than two!" : "One is not less than two."

```

#### Refactor if/else statements 


* Refactor the following code into a case statement: 

```ruby 


if language == "Ruby"
  puts "Ruby is great for web apps!"
elsif language == "Python"
  puts "Python is great for science."
elsif language == "JavaScript"
  puts "JavaScript makes websites awesome."
elsif language == "HTML"
  puts "HTML is what websites are made of!"
elsif language == "CSS"
  puts "CSS makes websites pretty."
else
  puts "I don't know that language!"
end

```

* refactored 

```ruby 

puts "What's your favorite language?"
language = gets.chomp


case language 
    when "Ruby" then puts "Ruby is great for web apps!"
    when "Python" then puts "Python is great for science."
    when "JavaScript" then puts "JavaScript makes websites awesome."
    when "HTML" then puts "HTML is what websites are made of!"
    when "CSS" then puts "CSS makes websites pretty."
    else
        puts "I don't know that language!"

end
``` 


#### Conditional Assignment 

* Instructions: Create a variable called favorite_animal and conditionally assign it to a string containing the name of your favorite animal.

```ruby 
favorite_animal ||= "dog"
```

#### implict return 

* Instructions: Write a method, square, that takes a number as an argument and implicitly returns the square of that number.


```ruby 

def square(num)
    num ** 2 
end

```


#### For loop refactor 


* refactor the following for loop to use the .times method instead:

```ruby 

for i in (1..3)
  puts "I'm a refactoring master!"
end
```

* Refactored:

```ruby 

3.times do
  puts "I'm a refactoring master!"
end
```


## Codecademy refactor factory project 

#### To be or not to be 

* Refactor the following: 

```ruby 

  prime_array = [] if prime_array.nil?

```

* to use a conditional operator like so: 

```ruby 

  prime_array ||= []
```


#### Omit needless statements 

* Refactor the following code to be one liners

```ruby 

  unless n.is_a? Integer
    return "n must be an integer."
  end

  if n <= 0
    return "n must be greater than 0."
  end

```

* refactor:


```ruby 

"n must be an integer." unless n.is_a? Integer


"n must be greater than 0." if n <= 0
```

* Remember that there are implict returns and that one line if/unless statements take the form of "action" "evaluation"




#### Less is more 

* remove all unncecessary return statements 


#### Rubyist loops

* remove the for loop in the code, and replace it with a .times

```ruby 
for x in (1..n) do
	prime_array.push(prime.next)
end 
	prime_array 
end 
```

```ruby 
n.times do 
	prime_array.push(prime.next)
end
	prime_array 
end 


#### Final push 

* remove the .push and replace it with the << opeartor 

```ruby 

  n.times do
    prime_array.push(prime.next)
  end
  prime_array
end
```


* refactor: 

```ruby 

  n.times do
    prime_array << prime.next
  end
  prime_array
end
```

## Codecademy Object Oriented Programming 1

#### Why Classes? 

* Ruby is an Object Oriented Programming (OOP) Language, this means it manupulates programming constructs called objects.  

* An object is almost anything that is withing Ruby.  Just like we manipulate objects every day in real life, ruby manipulates objects as well 

* For instance with an object that is a cup we can manipulate it to hold water, coffee, or any other liquid we want.  Another way of saying this is 'we can do cup things with/to the cup object'.  In this way we can do 'string things with the string object', or 'array things with the array object'.  

* We've seen methods and what they can do (e.g: .length method).

* What makes something a string, or an array is that it comes from the string or array class.  These classes are just a way to organize and produce objects with similar attributes and methods.  

* Example Code in which we've created our own class:

```ruby 

class Language
  def initialize(name, creator)
    @name = name
    @creator = creator
  end
	
  def description
    puts "I'm #{@name} and I was created by #{@creator}!"
  end
end

ruby = Language.new("Ruby", "Yukihiro Matsumoto")
python = Language.new("Python", "Guido van Rossum")
javascript = Language.new("JavaScript", "Brendan Eich")

ruby.description
python.description
javascript.description

```


#### Class Syntax 

* To create a class we utilize the class keyword and the name of our class 

```ruby 
class NewClass 
	# stuff goes here 
end 
```

* The NewClass class has the ability to create new Ruby objects of the class NewClass( just like "Hello" is of the string class and 4 is of the Fixnum class)

* Example code:

```ruby 
class Person 

end 
```

#### Classing it up 

* We start each class definition with a method called initalize.  

* Intialize essentially 'boots up' each object the class creates 

```ruby 

class Person 
    def initialize
    
    end
end
```


#### What's in a @name? 

* before we can create a person from the Person class we need to ensure that each person has a @name.  

* the @ signifies an instance variable 

* The instance variable means that the variable is attached to the instance of this class 

* Example code 

```ruby 

class Car
  def initialize(make, model)
    @make = make
    @model = model
  end
end

kitt = Car.new("Pontiac", "Trans Am")
```

* The above code creates an instance of kitt of the class Car.  kitt has its own make ("pontiac") and model ("trans am") which belong to the kitt instance. 

* note that paramaters are passed in the initalize step.  

* The instance variable assignment step in the intialize tells Ruby that whenever it creates a Person that it has to have a name and that each instance of Person will have its own @name.  

* code: 

```ruby 


class Person 
    def initialize(name)
        @name = name 
    end
end

```


#### Instatiating Ojbects

* We can create (instantiate) objects by calling .new on our class name like so:

```ruby 

me = Person.new("YourNameHere")
```

* Code:

```ruby 

class Person 
    def initialize(name)
        @name = name 
    end
end

matz = Person.new("Yukihiro")

```


#### Scope it out 

* Another important part of ruby classes is scope.  

* Think of the scope of a variable as the context in which it is visible to the program because not all variables are accessible to all parts of a ruby program at all times.  

* There are global variables (generally discouraged) and local variables which are available to certain methods only, as well as class variables which are available to certain classes and instance variables which are only available to particular instances of a class.  

* The same goes for methods: some are available everywhere, some are only available to members of a certain class, and still others are only available to particular instance objects.

* Check out the code. See how some variables start with $, @, or @@? This helps mark them as global, instance, and class variables (respectively). We'll explain these in the next section.

* Code: 

```ruby 

class Computer
  $manufacturer = "Mango Computer, Inc."
  @@files = {hello: "Hello, world!"}
  
  def initialize(username, password)
    @username = username
    @password = password
  end
  
  def current_user
    @username
  end
  
  def self.display_files
    @@files
  end
end

# Make a new Computer instance:
hal = Computer.new("Dave", 12345)

puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.

```


#### Naming variables 

* Instance variables begin with @ by syntax 

* Class variables are like instance variables, but instead of belonging to an instance of a class, they belong to the class itself.  Class variables start with two @@s 

* Global variables can be declared outside of any method/class which makes it global, but if you want to make a variable global from INSIDE a class or method you need to start it with a $ (e.g. $variable)


```ruby 

class MyClass
  $my_variable = "Hello!"
end

puts $my_variable
```


#### For instance

* Since gloabl variables can be changed anywhere in the program they can be risky, and it's better to create variables with limited scope.  

* Instance variables only belong to a particular object/instance 

* code:

```ruby
class Person
  def initialize(name, age, profession)
    @name = name
    @age = age
    @profession = profession
  end
end

``` 

#### Twice the @, Twice as classy 

* Class variables are created with 2 @@ symbols, and are attached to the entire class, not just an instance of a class.  

```ruby 

class MyClass
  @@class_variable
end


# For differences on class/instance variables see:
# http://stackoverflow.com/questions/8959097/what-is-the-difference-between-class-and-instance-variables-in-python
```

* Because there is only one class variable shared by all instances of a class, we can do stuff with it like keep track of the number of instances of that class that we have created.  

* Instructions: Let's do three things: Create a class variable, @@people_count, on line 3, and set it equal to 0.  Increment @@people_count on line 8.  Return @@people_count on line 13 so that our puts on line 20 will print out the number of people created so far.

```ruby

class Person
  # Set your class variable to 0 on line 3
  @@people_count = 0
  
  def initialize(name)
    @name = name
    @@people_count += 1
    
  end
  
  def self.number_of_instances
    @@people_count
    
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}"
```

#### Classes are Serious Business

* The following is something that is an example of what you might see in commercial software/code:

```ruby 

def create_record(attributes, raise_error = false)
  record = build_record(attributes)
  yield(record) if block_given?
  saved = record.save
  set_new_record(record)
  raise RecordInvalid.new(record) if !saved && raise_error
  record
end
```

#### Inheritance 

* Inheritance is how one class takes on the attributes/methods of another class.  

* This inheritance is expressed as an is-a relationship.  E.g. a cartoon fox is-a cartoon mammal, so a CartoonFox class could inhereit from a CartoonMammal class.  However, a Wizard is not an Elf, so a it would not inherit from the Elf class, but they both would inhereit from the MagicalBeing class.  

#### Inheritance syntax 

* Ruby inheritance works like so: 

```ruby 
class DerivedClass < BaseClass
  # Some stuff!
end
```

* Where derived class is the new class that you're making and base class is the class from which that new class inherits stuff.  Read the "<" in this cass as 'inhereits from'.  


* Instructions: We've created an Application class in the editor to the right. Create your own class, MyApp, that inherits from Application. No need to put anything inside your class definition just yet!


```ruby 

class Application
  def initialize(name)
    @name = name
  end
end

# Add your code below!

class MyApp < Application
    
end 

``` 

#### Override 

* When you want one class to take all of the methods/attributes of its parent, but also override/replace them you can create a new version of the method which will override/replace the inherited one.  

* As an example you might have an Email class that inherits from Message:

```ruby 
class Message 
	def initalize(messages)
		@messages = messages
	end 
	
	def send
	end 
	
end 

class Email < Message 
	def initalize 
		@stuff = stuff 
	end 
	
	def send 
	end 
	
end 

```

* Both classes in this case have a send method that sends emails, but the email version may have to ID valid email addresses and us a number of protocols that Message does not use/know about.  

* Instead of adding a send_email method to the derived class (Email), we can create a send method in the Email class and have it do all of the work which will override and replace the inherited version for any object that is an instance of Email.   


* Instructions: Let's try a more entertaining (if less realistic) example. Create a new class, Dragon, that inherits from Creature. Give your derived class a fight method that overrides Creature's; instead of returning "Punch to the chops!", it should return "Breathes fire!".


```ruby 

class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!
class Dragon < Creature 
    def fight
        return "Breathes fire!"
end
end 


```


#### When good isn't good enough 

* Sometimes you will work with a derived class(also known as a 'subclass') and you will want a method/attribute from the parent/super class.  

* To access the attributes/methods of a parent class you can use Ruby's super keyword. 

```ruby 
class DerivedClass < Base
  def some_method
    super(optional args)
      # Some stuff
    end
  end
end
```

 * When you call super from inside a method, that tells Ruby to look in the superclass of the current class and find a method with the same name as the one from which super is called. If it finds it, Ruby will use the superclass' version of the method.

* Instructions: We decided we want to do some chops-punching after all! Let's do two things: Add a puts "Instead of breathing fire..." as the first line in our Dragon's fight method. Replace the return statement inside Dragon's definition of fight with the keyword super. (No need to pass any arguments to super, since Creature's fight method doesn't take any.)


```ruby 


class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!
class Dragon < Creature 
    def fight
        super "Instead of breathing fire..."
    end
end 
```


#### There Can Be Only One!


* Ruby only allows any given class to have one super class/parent class, because otherwise it can get messy very quickly.  

* There's a nice trick in ruby that allows you to end a ruby statement without going to a new line.  For that trick you just type a ; like so:

```ruby 

class Monkey; end 
```


* The following code will create a class mismatch because it tries to inherit from multiple classes:

```ruby 

class Creature
  def initialize(name)
    @name = name
  end
end

class Person
  def initialize(name)
    @name = name
  end
end

class Dragon < Creature; end
class Dragon < Person; end
```

#### class basics 

* Instructions: Create a class called Message and give it an initialize method. The initialize method should take two parameters, from and to, and set them to the instance variables @from and @to (respectively). Don't worry about creating an instance of your class just yet.

```ruby 
class Message
    def initialize(from, to)
    @from = from
    @to = to
    end
end
```


#### Getting Classier 

* Instructions: Give your Message class a @@messages_sent class variable and set it equal to 0. In the body of your initialize method, increment this value by 1 so that each time a new Message object is created, @@messages_sent will go up by 1.  Don't create any instances of your class just yet!

```ruby 
class Message
    @@messages_sent = 0
    def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
    end
    
end
```


#### Forge a message in the fires of mount Ruby 

* Instructions: After your class, create a variable called my_message.  Create an instance of your Message class using Message.new with whatever from and to arguments you want! Store the result in my_message.

```ruby 

class Message
    @@messages_sent = 0
    def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
    end
    
end

my_message = Message.new("Me", "You")
```



#### Inherit a fortune

* Instructions: Create a second class, Email, that inherits from Message. Give it its own initialize method that takes just one parameter, subject, and has one instance variable, @subject, set equal to subject.


```ruby 
class Message
    @@messages_sent = 0
    def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
    end
    
end

class Email < Message
    def initialize(subject)
        @subject = subject
    end
end

my_message = Message.new("Me", "You")

```


#### Up, Up, and away!

* Instructions: To finish this lesson, go ahead and remove the subject parameter and @subject instance variable from Email.  Pass Email's initialize method the same two parameters passed to Message's—from and to—and add the super keyword as the only line of code in the body of Email's initialize method.

```ruby

class Message
    @@messages_sent = 0
    def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
    end
    
end

class Email < Message
    def initialize(from, to)
        super
    end
end

my_message = Message.new("Me", "You")
```



## Codecademy Virtual Computer Project 


#### What we're building 

* This project focuses on creating a computer class, and generating instances of the Computer class that can manipulate imaginary files for us.  

```ruby 

class Machine
  @@users = {}
  
  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password
    @files = {}
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}."
  end
  
  def Machine.get_users
    @@users
  end
end

my_machine = Machine.new("eric", 01234)
your_machine = Machine.new("you", 56789)

my_machine.create("groceries.txt")
your_machine.create("todo.txt")

puts "Users: #{Machine.get_users}"

```


#### Create the class 


```ruby 

class Computer 
	def initialize 
	end 
end 
```

#### Fanciy the initialize method 

* Add the username and password paramaters to the initialize method, and also create the instance variable files which will be an empty hash/dictionary.  

```ruby 
class Computer 
    def initialize(username, password)
        @username = username
        @password = password
        @files = {}
    end
end
```

#### Have some class 

* Now we'll add in the class variable users to keep track of the users on the computer

```ruby 

class Computer 
    
    @@users = {}
    def initialize(username, password)
        @username = username
        @password = password
        @files = {}
    end
end

```

#### Becoming more creative 

* Here we'll add another method, create which will do a few things for us regarding filenames, time, etc...

```ruby 
class Computer 
    
    @@users = {}
    def initialize(username, password)
        @username = username
        @password = password
        @files = {}
    end
    
    def create(filename)
        time = Time.now 
        @files[filename] = time
        puts "New file created"
    end
end
```

#### Who are the users?

* Because users is a class variable, we'll need to create a class method to grab it.  Most of the other moethods that we've seen are instance methods which work on a particular instance/object such as "string".length.  

* A class method belongs to the class itself, and because of that it is prefixed with the class name: 


```ruby 
class Machine
  def Machine.hello
    puts "Hello from the machine!"
  end
end
```

* Add a new class method to your Computer class called Computer.get_users. It should have no parameters.  Your new Computer.get_users method should return the @@users class variable.


```ruby 

class Computer 
    
    @@users = {}
    def initialize(username, password)
        @username = username
        @password = password
        @files = {}
    end
    
    def create(filename)
        time = Time.now 
        @files[filename] = time
        puts "New file created"
    end
    
    def Computer.get_users
        return @@users
    end
end

```

#### Instantiation 

* Create a new instance of the class and store it in the variable my_computer.  

```ruby

class Computer 
    
    @@users = {}
    def initialize(username, password)
        @username = username
        @password = password
        @files = {}
    end
    
    def create(filename)
        time = Time.now 
        @files[filename] = time
        puts "New file created"
    end
    
    def Computer.get_users
        return @@users
    end
end

my_computer = Computer.new("Guest", "1234")
```

## Codecademy OOP 2 

#### Need to know basis 

* Since our programs might be public or other people are working with our programs they might not need to have access to all the data/different parts of a program to do their job.  

* Ruby allows us to make some methods public, and other methods private.  

* Public methods allow for an interface with the rest of the program and allow the rest of the program to know everything about the class and its instances.  

* Private methods don't take any requests/give out any info 

* Instructions: Check out the code in the editor. We've created a public about_me method and a private bank_account_number method. Click Save & Submit Code to see what happens when we try to call the bank_account_number method from outside the class!



```ruby 

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  public    # This method can be called from outside the class.
  
  def about_me
    puts "I'm #{@name} and I'm #{@age} years old!"
  end
  
  private   # This method can't!
  
  def bank_account_number
    @account_number = 12345
    puts "My bank account number is #{@account_number}."
  end
end

eric = Person.new("Eric", 26)
eric.about_me
eric.bank_account_number

```

* Note that the above program throws an error when we try and access the bank account number method since that method is private.  


#### Build a class 

* Build a quick example class Dog 


```ruby 

class Dog
    def initialize(name, breed)
        @name = name 
        @breed = breed 
    end
end 


```

#### Going public 

* Methods are public by default, but we can make this explicit by putting 'public' before our methods: 

```ruby 
 class ClassName
  # Some class stuff
  public
  def public_method
    # public_method stuff
  end
end
```

* In the above code everything after the publlic keyword through the end of the class definition will be public unless we say otherwise.  

```ruby
class Dog
    def initialize(name, breed)
        @name = name 
        @breed = breed 
    end
    
    public
    def bark
        puts "Woof!"
    end
end 
```


#### Private keep out 

* Just like with public, we can make things private by putting the private keyword before the method that we create:

```ruby 
class ClassName
  # Some class stuff

  public
  # Public methods go here
  def public_method; end

  private
  # Private methods go here
  def private_method; end
end
```

* Private methods are specific/private to the object in which they are defined.  The method cannot be called wtihout an explicit reciever.  

* Explicit recivers are objects on which methods are being called, so for something like "String".length
"String" is the object and reciever of the method.  

* To access private information, we have to create public methods that can get it.  This public method is what separates private implementation from the idea/concept of the public interface.  

* Instructions: Add a private method called id to Dog. The id method should create an @id_number instance variable and set it equal to 12345.


```ruby 
class Dog
    def initialize(name, breed)
        @name = name 
        @breed = breed 
    end
    
    public
    def bark
        puts "Woof!"
    end
    
    private
    def id
        @id_number = 12345 
    end
end 

```

#### attr_reader and attr_writer 

* This post: http://stackoverflow.com/questions/5046831/why-use-rubys-attr-accessor-attr-reader-and-attr-writer does a great job of explaining attr_reader, attr_writer, attr_accessor in ruby 

* Ok, I'll admit, attr_reader and attr_writer really do look weird, and I can't quite figure out WHY I would use them.  

* Oh, ok.  attr_reader and attr_writer apparently make things easier to read and write explictly and limit the scope/functionality of what things can do within the class 

```ruby 

# Before removing the methods 

class Person
    attr_reader :name
    attr_writer :job
  def initialize(name, job)
  end
  
  def name
    @name
  end
  
  def job=(new_job)
    @job = new_job
  end
end
```

```ruby 
# after removing the methods 

class Person
    attr_reader :name
    attr_writer :job
  def initialize(name, job)
  end
  

end
```

#### attr_accessor 

* Instead of writing out reader and writer every time, we can use attr_accessor to do the job of both.  

```ruby 
class Person
  attr_reader :name
  attr_accessor :job
  
  def initialize(name, job)
    @name = name
    @job = job
  end
end
```

#### Modules

* Modules are toolboxes that contain a certain set of methods and constants.  

* We only call modules when we need them because otherwise it would clutter up the interpreter to have them all around at the same time 

* Modules are similar to classes but they can't create instances or have subclasses, but modules CAN store things.  

```ruby 

module Circle

  PI = 3.141592653589793
  
  def Circle.area(radius)
    PI * radius**2
  end
  
  def Circle.circumference(radius)
    2 * PI * radius
  end
end
```


#### Making your own modules/module syntax 

* to create a module we just need to use the module keyword before the module name:

```ruby 

module ModuleName
  # Bits 'n pieces
end

```

* classes, and modules are written in CapitalizedCamelCase rather than snake_case.  

* It's a good idea to hold constants in modules as opposed to variables.  Constants in ruby are written in ALL_CAPS separated with underscores as neccessary 

```ruby 
module MyLibrary 
    FAVE_BOOK = "Wrinkle in Time"
end
```


#### namespaces and scope 

* One of the main purposes of modules is to separate methods and constants into named spaces. This is called (conveniently enough) namespacing, and it's how Ruby doesn't confuse Math::PI and Circle::PI. 

* the :: is the 'scope resolution' operator which tells ruby where to look for a specific snippet of code.  So Math::PI will look specifically in the math module for PI and not anywhere else 

```ruby 
puts Math::PI
```

#### Requirements 

* While some modules like math are already present in the interpreter, others need to be brought in which can be done using require:

```ruby 

require 'module'
```

```ruby 
require 'date'

puts Date.today
```

#### Feeling included 

* We can do more with modules than just require them, we could also use the include keyword which allows any class that includes a module to use those modules methods 

* An example of this is if you have included the Math module, you can simply write PI instead of Math::PI.  

```ruby 
class Angle
  include Math
  attr_accessor :radians
  
  def initialize(radians)
    @radians = radians
  end
  
  def cosine
    cos(@radians)
  end
end

acute = Angle.new(1)
acute.cosineruby 

```


#### Mixing modules and classes 

* When a module is used to mix additional behavior and information into a class it is called a mixin.  

* Mixins allow for customization of classes without having to write additional code 

```ruby 
module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump
```


#### Imitating Multiple Inheritance 

* Because mixins give us the ability to inherit from more than one class because they give us access to multiple traits from various modules. 

* Instructions: Create a module, MartialArts.  Inside, define a method called swordsman that just puts "I'm a swordsman."  On lines 8 and 15, please include MartialArts to mix this into both the Ninja and Samurai classes, thereby giving them the swordsman method. 

```ruby 

# Create your module here!
module MartialArts
    def swordsman
    puts "I'm a swordsman."
    end
end

class Ninja
    include MartialArts
  def initialize(clan)
    @clan = clan
  end
end

class Samurai
    include MartialArts
  def initialize(shogun)
    @shogun = shogun
  end
end
```






#### Extending what we know 

* While include mixes module methods at the instance level (allowing instances of a class to use the methods) the extend keyword mixes a module's methods at the class level allowing the class itself can use the methods rather than just instances of the class 

```ruby 


# ThePresent has a .now method that we'll extend to TheHereAnd

module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now

```


#### A matter of public knowledge

* This section is review:

```ruby 

class Application
  attr_accessor :status
  def initialize; end
  public
  def print_status
      puts "All systems go!"
  end 
  
end
```


#### Private affairs

```ruby 
  private 
  def password
      12345
end
```


#### Module Magic 

```ruby
module Languages
    FAVE = "Ruby"
end

```


#### Mixins 

```ruby 

module Languages
  FAVE = "Ruby"  # This is what you typed before, right? :D
end

class Master
    include Languages
  def initialize; end
  def victory
    puts FAVE
  end
end

total = Master.new
total.victory

```


## Codecademy Project: Banking on Ruby 

```ruby 
class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end
  
  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  
  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    "Access denied: incorrect PIN."
  end
end

my_account = Account.new("Eric", 1_000_000)
my_account.withdraw(11, 500_000)
my_account.display_balance(1234)
my_account.withdraw(1234, 500_000)
my_account.display_balance(1234)
```

####  Creating the account class 

* We can set default values/paramaters so that if there are supposed to be 2 arguments, but only 1 is provided 

```ruby
def initialize(name, balance=100)
  @name = name
  @balance = balance
  end 
  
```

* Ruby also allows us to use underscores for big numbers like 1_000 or 1_000_000.  

* Instructions: Create an Account class in the editor. The :name and :balance attributes should be readable (but not writeable!). The class' initialize method should take two parameters, name and balance, and the balance parameter should default to 100.  Finally, go ahead and store your parameters in instance variables @name and @balance, respectively.


```ruby
class Account 
    attr_reader :name
    attr_reader :balance 
    
    def initialize(name, balance=100)
    @name = name
    @balance = balance
end
end
```

#### Private Affairs 

* Instructions: Add two private methods to your Account class, pin and pin_error.  pin should take no arguments and set an instance variable, @pin, equal to the PIN number 1234.  pin_error should take no arguments and should simply return the string "Access denied: incorrect PIN."


```ruby 
class Account 
    attr_reader :name
    attr_reader :balance 
    
    def initialize(name, balance=100)
    @name = name
    @balance = balance
    
    private
    def pin
        @pin = 1234
    end
    
    def pin_error
        return "Access denied: incorrect PIN."
    end
end
end
    
```

#### Displaying the balance

```ruby 

class Account 
    attr_reader :name
    attr_reader :balance 
    
    def initialize(name, balance=100)
    @name = name
    @balance = balance
    
    private
    def pin
        @pin = 1234
    end
    
    def pin_error
        return "Access denied: incorrect PIN."
    end
    
    public
    def display_balance(pin_number)
        if pin_number == @pin
            puts "Balance: $#{@balance}"
        else
            puts pin_error
    end 
end
    end
end
    
	
```


#### Making a withdrawl

```ruby 

class Account 
    attr_reader :name
    attr_reader :balance 
    
    def initialize(name, balance=100)
    @name = name
    @balance = balance
    
    private
    def pin
        @pin = 1234
    end
    
    def pin_error
        return "Access denied: incorrect PIN."
    end
    
    public
    def display_balance(pin_number)
        if pin_number == @pin
            puts "Balance: $#{@balance}"
        else
            puts pin_error
    end 
    
    def withdraw(pin_number, amount)
        if pin_number == @pin
            @balance = @balance - amount
            puts "Withdrew #{amount}.  New balance: $#{@balance}."
        else
            puts pin_error
    end
    end
    
end
    end
end
    
```

### Erik Trautman Ruby Explained: Classes 


* classes are just a clear, logical way to order a number of methods around an object you want to create E.G. the viking class would have the attack and eat methods available to it.  

* Classes are a way to organize intellectual/abstract complexity 

* When you find that you want the same method to be run on  a bunch of different objects, without having to use a number of different if/else/case statments, that's when you should be using a class.  

* We've been over storing data in hashes, but what happens when you want to treat that data like a real object and make it move? Or if you want to handle 10,000 different instances of it? When you just store your Viking's name, age, health, and strength, it just kind of sits there. What about when you want to make an army of Vikings who can do stuff like #eat, #travel, #sleep and, of course, #attack? For that, you need a slightly more complex structure to make your Viking out of, so you give it its own Viking class:

```ruby 
class Viking 
	# methods and variables go here 
end 
```

* To create a huge set of vikings we would create new ones, which means 'instantiating' a new viking.  To instantiate a viking we use the .new method.  We've seen this method before with things like arrays: arr = Array.new  

* When you call the .new method on the Viking class (e.g: new_viking = Viking.new).  When we run the new method it creates a new instance of the class and allows us to utilize the def initialize method within the class and pass it variables. 

```ruby 
class Viking 
	def initialize(name, age, health, str)
		# setup goes here 
	end 
end 
``` 

* Since we don't want all vikings to have the same str we use instance variables with the @ symbol before the var_name like so: @viking_str 

* Instance variables create a unique value for each viking to be stored/utilized.  These variables are usually created/set up in the initialize method.    

```ruby 
class Viking 
	def initialize(name, age, health, str)
		@name = name 
		@age = age 
		@health = health 
		@str = str
	end 
end 
```

* By convention class names are capitalized and use CamelCase.  

* To give the vikings something to do, we can give it methods particular/specific to the class which are called instance methods.  

```ruby 
class Viking 
	def initialize(name, age, health, str)
		# code goes here 
	end 
	
	def attack(enemy)
		# fight code 
	end 
end 
```

* If we had 2 vikings, oleg and lars we could now use lars.attack(oleg), but if we wanted to find out oleg's health with oleg.health it would throw an error because while instance variables might be part of oleg it's inaccessible outside the class.  

* In order to solve the above issue we have to create a method to get that information, specifically a getter method named the same thing as the variable you want:

```ruby 
def health 
	@health 
end 
# oleg.health 
# 87 
``` 

* If we want to set the variable ourselves we would create a setter method which is similar in syntax, but with an equals sign and taking an argument: 

```ruby 
def health=(new_health)
	@health = new_health 
end 
```


* Since we would likely be writing a ton of the above methods, ruby has the attr_accessor method(s) so we DRY(O)s, which will create all the getters and setters for us simply by passing symbols for whatever variables we want to make accessible.  

```ruby 
class Viking 
	attr_accessor :name, :age, :health, :str 
	#code goes here 
end 
```

* attr_accessor uses Ruby's ability to create methods from w/in the script ('metaprogramming') to set up name, age, etc...

* Since we shouldn't make things readable/writeable without good reason, Ruby gives us attr_reader and attr_writer which are a getter and a setter respectively.  

* Because of getters and setters there are 2 different ways to access instance variables from inside the class, either calling it with @age or calling the method on the instance using self.  

* An example of self is provided below:
```
class Viking
    ...
    def take_damage(damage)
        self.health -= damage							# Doing a method call
        # OR we could have said @health -= damage
        self.shout("OUCH!")								# Doing a method call 
    end
    def shout(strng)
        puts strng
    end
    ...
end
```

* We can also call methods from within other methods, like we see with shout above.  

* Ruby will often make assumptions for you, so if we had used shout("Ouch!") in the take_damage method above, it would have worked and Ruby would have assumed we were calling the shout method.  These types of assumptions work most of the time, EXCEPT for when you're using an assignment operator: 


```ruby 
	def sleep 
		health += 1 unless health >= 99 	# Does not work!
	end 
```

* In the above example Ruby assumes that we are trying to create a new health variable and uses .health= instead of accessing @health.  Watch out for this if you decide to not use the self call 

* Getting back to the class level, we have class variables and class methods.  Class variables are denoted with two @@s and are owned by the class itself which means that there is only one of them, and not one class variable per instance.  

* For example, we can assume that all the vikings all start with the same health:

```ruby 
class Viking 
	@@starting_health 
	def initialize(name, age, strength)
		@health = @@starting_health
		# More code here
	end 
end 
```

* We declare class methods by preceding its name with self E.g: def self.class_method, or with the name of the class E.g: def Viking.class_method.  

* There are two cases in which you want to use a class method: A.  When you're building new instances of a class that have a bunch of known/preset features, B.  When you have some sort of utility method that should be identical across all instances and won't need to directly access instance variables.  

* The first case is a factory method and is made to save us from having to keep passing a bunch of paramaters manually to the initialize method:

```ruby 
class Viking 
	def initialize(name, health, age, str)
		# set vars here 
	end 
	
	def self.create_warrior(name)
		age = rand * 20 + 15			# rand gives a random 0 to 1
		health = [age * 5, 120].min 
		str = [age / 2, 10].min 
		Viking.new(name, health, age, str)	# the return 
	end 
end 

sten = Viking.create_warrior("Sten")			# creates Viking sten w/ name, age,  # etc...
```

* With the second case there may be things that all vikings should 'have'/'know'.  

```ruby 

class Viking
    ...
    def self.random_name      # useful for making new warriors!
        ["Erik","Lars","Leif"].sample
    end
    def self.silver_to_gold(silver_pieces)
        silver_pieces / 10
    end
    class << self           # The less common way
        def gold_to_silver(gold_pieces)
            gold_pieces * 10
        end
    end
end

> warrior1 = Viking.create_warrior(Viking.random_name)
=> #<Viking:0x007ffc05a745c8 @age=22.369775138257097, @name="Lars", @health=111.84887569128549, @strength=10>
```

* To review: Classes are usful to use when you want to give methods to your data/have multiple instances of your data.  Class methods have access to other class methods and class variables but DO NOT have access to instance methods OR instance variables.  Finally, Instance methods can call other instance methods, instance variables, class methods, or class variables.  

* What is the differnce between modules that can mixin to classes, and class methods?  The most notable difference is that a class can be instantiated, but a module cannot.  A module will always be a library of methods, a class can be more since it can hold state through keep track of instance variables, and be duplicated as many times as you want.  

* If you need to instantiate something or have it exist over time, use a class instead of a module.  

* Inheritance is the ability of one class to utilize or 'inherit' all of its characteristics including methods and variables (This is also known as a parent/child relationship).  

* A class can only have ONE parent, and in Ruby a class inherits from another using the < notation:

```ruby 
class Viking < Person 

# New class < Base class 
# Child class < Parent class 
# Inheriticance given < Inherits From 
# Addon < Original
```

* In the above code, Viking has access to all of Person's methods, and we can now say that Viking extends Person.  

* We've added methods to another existing class, and we could overwrite existing methods which would cause problems, if we modified original ruby methods etc...

* Because of the nature of the relationship, Viking has the option to overwrite Person's methods:

```ruby 
class Person 
	MAX_HEALTH = 120 
	... 
	def heal 
		self.health += 1 unless self.health + 1 > MAX_HEALTH 
	end 
end 

class Viking < Person 
	... 
	def heal 
		self.health = [self.health + 2, MAX_HEALTH].min 
		puts "Ready for battle!"
	end 
end 
```

* The above way works, but we could also call the paren't heal method directly a couple of times using the super method because super lets you call the superclass's version of the current method and in this case it would look like:

```ruby 

class Viking < Person 
	def heal 
		2.times { super }
		puts "Ready for battle"
	end 
end 
```


* Oftentimes we use super in the subclass's initialize method when we want to use the parent's initialized but just add a tweak or two of our own and pass in paramaters as needed which saves us having to rewrite code.    

```ruby 
class Viking < Person 
	def initialize(name, health, age, str, weapon)
		super(name, health, age, str)
		@weapon = weapon 
	end 
end 
```

#### Ruby Explained: Inheritance and Scope 

* Scope is the formal term that represents when you can access a variable or method and when you can't.  Scope is just a concept so if a variable is 'in scope' it is available for use, otherwise it's 'out of scope'.  

* Scope is like a container of one way glass around certain parts of your code.  Inside the container the variable/method can see/use anything in the world outside the container, but the outside world can't see in.  

* A new scope is created when you first define a variable.  That variable is then accessible by anything 'downstream' of it in the code until the current scope is exited (e.g. leaving a method or loop).

* A rule of thumb is that you create a new scope anytime that you indent your code and anytime within that indent that a new variable is defined.  


* Method scope is similar but has some important differences because it deals much more explicitly with the notion of privacy. You still can't call a method until the Ruby interpreter has had the chance to define it. By default, instance methods can be called by any instance of a class (e.g. oleg.sleep) and class methods can be called directly on the class itself (e.g. Viking.new).

* If you want to create methods that should ONLY be accessible by other methods within your class, mark them/indicate/preface them with private.  This is the default setting for instance variables unless you expose them using attr_accessor.  

* You should change the default thought in your head from "everything is accessible, what do I need to hide?" to "everything should be hidden, what do I absolutely need to make externally available?" That principle will take you far, especially when designing things like APIs that will be used by other programs. 

* If we want something that provides most of the privacy of private, BUT lets the methods inside other instances of the same class or descendents access it as well, we use the protected keyword before a method.  

* So that's privacy for you, and it can be summed up by saying "don't let anything access any methods or variables that it doesn't need to. It's on a 'need-to-know' basis, and it doesn't need to know." It's not as big an issue while you're building toy projects, but becomes more important when you're interfacing with the real world and you want to zip up your classes tightly to prevent any malicious or unintended shenanigans from occurring.

* A similar principle is that a method should not reach outside its scope to modify variables unless that is specifically what the method is meant to do because a method should take inputs and provide a return without having to modify anything else (look, but don't touch).  




