# The following module contains methods related to printing to the terminal.

module CliTools
  # What does the below method do? How does it do it?
  def self.put_each(s)
    s.each_char do |c|
     putc c; sleep(0.025); STDOUT.flush
    end
  end
  
  def self.draw_tabs
    print <<-this
    |||(A)CTIVE ALARMS||(S)ET ALARMS||(O)PTIONS||(E)XIT|||
    this
  end

  def self.put_each_nl(s)
    s.each_char do |c|
      putc c; sleep(0.025); STDOUT.flush
      puts "\n\n"
    end
  end

  def gen_logo 
    put_each <<-meticlock
               _|_   o     |         |    
    .--.--. .-. |    .  .- | .-.  .- |.-. 
    |  |  |(.-' |    | (   |(   )(   |-.' 
    '  '  `-`--'`-'-' `-`-'`-`-'  `-''  `-                                       
    meticlock
  end
end

def fuck_off(s)
  puts s
  puts 'fuck off'
end

def fuck_off_meti
  put_each (meticlock)(s) 
  print fuck_off
end 

=begin MARKING

Progress is made, but you're not there yet.
You still aren't getting dot notation.

1) DOT NOTATION

I'm going to write a lot about this now. Not trying to be patronising, but it's important you get this concept
early on.

Dot notation is found in most programming languages; Java, C, Python, Ruby, etc.

It refers to the use of dot seperating objects from other objects that own them.

I'm going to write several example code blocks below to demonstrate this:

class Orc
  def attack
  # RUN ATTACK COMMANDS
  end
  
  def run_away
  print 'Argh! Flee! Flee!'
  end
end

Above we have an object, Orc. The object -- or rather the class each Orc is made from -- contains two methods,
attack and run_away. Let's say I wanted to make a new Orc. We'll call him Clive.

clive = Orc.new

I now have an Orc object called clive in existence. What if I want to make Clive attack, or run away? Can you guess?

clive.attack
clive.run_away

Clive now attacks and runs away. The dot notation between the objects (in Ruby, even methods are an object)
signifies ownership, just like an apostrophe in English. In English, I could say:

Clive's Attack
Clive's Run Away

and it would mean the same thing.

In Ruby, since methods are also objects, we can say that each method 'owns' a method after it, and so call 
them like this:

my_array.to_s.downcase! (in English, this means My Array's Turn To String's Turn To Lowercase)

It doesn't make complete sense intuitively, but as you code more you'll begin to use the concept
without thinking.

Let's take a look at the method you wrote above:

def fuck_off_meti
  put_each.meticlock 
  print fuck_off(s)
end 

Now that we understand dot notation a bit, let's convert what your second line here says in English:

Put Each's Meticlock

That doesn't make sense. put_each doesn't have a method called meticlock, so how can we call it?

So whilst this would make sense:
  CliTools.put_each ---> 'CliTool's Put Each' ---> Method 'put_each' found in CliTools.
  
This does not:
  CliTools.put_each.meticlock ---> 'CliTool's Put Each's Meticlock' ---> ERROR: Method meticlock not found.
  
2) FIXING FUCK_OFF_METI

First, let's take a look at parameters. What is a parameter? It's easier to demonstrate in an example:

def method(parameter)

All a parameter is is a value a method takes and does something with. Let's put this into practice:

def add_two(a_number)
  a_number += 2
end

See? The parameter is the value we feed into the method for it do perform code on. Let's look at fuck_off, now:

def fuck_off(s)
  puts s
  puts 'fuck off'
end

fuck_off does two things: firstly, it prints 's', our parameter, and then it prints 'fuck off' afterwards.

So, in the following example method call: 
fuck_off('Hi there!')

our parameter, s = 'Hi there!'

and the output would be:

'Hi there!'
'fuck off'

In your above method, you have called:
  put_each.meticlock
  
First, the dot notation is wrong, as discussed above.
Secondly, you haven't passed any parameters to put_each : look at the original put_each method, 
and notice it takes a parameter, s.

so if we typed put_each('meticlock'), this would work, and would print the word 'meticlock'.

I appreciate this is a lot to take in.
It's OK to struggle a bit here.
What we want to do is print the whole logo inside fuck_off_meti, by calling our fuck_off method,
and passing the logo as a parameter. See if you can work out how to do this. 


*********How do you call a method?*************

=end 
