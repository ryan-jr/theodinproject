#Rspec 00-hello
#the actual rspec function

def hello
return "Hello!"
end

def greet(who)
return "Hello, #{who}!"
end

#status: PASSED

#The test
#http://testfirst.org/live/learn_ruby/hello
=begin
correct this by changing "whuh?" to "Hello!". Save it. Run the test again.

Watch it pass!

Hooray! Finally! It works!

Give yourself a high five

Also, sing a song and do a little dance.

And then...

Fix the next failure! :-)

the hello function
  says hello

the greet function
  says hello to someone (FAILED - 1)
In order to get the next test to pass, your function will need to accept an argument.

def greet(who)
  "Hello, #{who}!"
end
Tests

hello_spec.rb
require "hello"

describe "the hello function" do
  it "says hello" do
    hello.should == "Hello!"
  end
end

describe "the greet function" do
  it "says hello to someone" do
    greet("Alice").should == "Hello, Alice!"
  end

  it "says hello to someone else" do
    greet("Bob").should == "Hello, Bob!"
  end
end

=end 


