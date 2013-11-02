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
  puts s
  puts 'fuck off'
end

def fuck_off_meti
  CliTools.put_each
  CliTools.fuck_off
end  
=begin MARKING

BONUS: What's the difference between print and puts?
print prints something to CMD, put combines things together to reduce memory.

That was a wild guess and you know it. Although to be honest, that is a decent concept, but we'll come to that later.

puts prints a message and then starts a new line.
print doesn't start a new line.
That's all there is to it!

I said you'd have to use the word print or puts twice in the above function. 
I can see why you think the above code would work, and it does make a sort of sense.

Unfortunately what I was looking for was this:

def fuck_off(s)       <-
  puts s                |
  puts 'fuck off'    <---- that was my next guess.
end

That would print the method parameter - s - and 'fuck off', just like we originally wanted.

For example, fuck_off('now') would result in:

'now'
'fuck off'

Remember what we're trying to do in fuck_off_meti. We're trying to print that meticlock logo using
our fuck_off method.

Don't overthink it. Currently, gen_logo prints using the 'put_each' method.
What you need to do is write a copy of that method, give it the right name, and make it print using the
'fuck_off' method.
 
=end 
