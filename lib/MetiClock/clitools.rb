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

<<<<<<< HEAD
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
  print fuck_off.(s)
end

def fuck_off_meti
  put fuck_off.gen_logo
end  
=begin MARKING

Ah, I see the problem.

In any programming language -- not just Ruby -- the '.' (we call this dot notation) represents an apostrophe.

The code above is held together in a module, called CliTools. You don't need to worry about what a module
is right now -- all it does is hold methods together in a group.

Let's say I wanted to call fuck_off from another file in our project. To do this, I'd type:

CliTools.fuck_off

In English, that would read 'CliTool's fuck_off'

Similarly, if I had a method 'attack' in a class 'Sword', I could call it like so:

Sword's Attack -> 'Sword.attack'

Now let's look at what your code above means:

print (s)'s fuck_off

That doesn't make sense. 's' doesn't have a method called fuck_off -- at least, not one we've written.

With this in mind, try to correct fuck_off so that it prints both 's' and 'fuck off'. 
HINT: You'll have to use the word 'print' or 'puts' twice.

BONUS: What's the difference between print and puts?
print prints something to CMD, put combines things together to reduce memory.

=end 
