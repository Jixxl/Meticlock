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
  print (s).fuck_off
end

def fuck_off_meti
  fuck_off.gen_logo
end  
=begin MARKING

fuck_off is taking (s) as a parameter, but is doing nothing with it. Look at what I initially asked you to do:

"Write a new method, called fuck_off, that prints a string 's', and prints 'fuck off' after it."

To demonstrate this, let's say I wrote fuck_off("hi!")

What I'd want back from that is:

'Hi!'
'Fuck Off'

What I'd get at the moment is:

'Fuck Off'

-------

Can you also explain to me what you think the '.' character does? For instance, here? 'fuck_off.gen_logo'
links two things together so in this case will print bother fuck_off and gen_logo

=end 
