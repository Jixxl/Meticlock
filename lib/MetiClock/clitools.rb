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
    put_each <<-printtohere
               _|_   o     |         |    
    .--.--. .-. |    .  .- | .-.  .- |.-. 
    |  |  |(.-' |    | (   |(   )(   |-.' 
    '  '  `-`--'`-'-' `-`-'`-`-'  `-''  `-                                       
    printtohere
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

-------------------------
*********How do you call a method?**********
A method is called by a combination of simply typing the name and any parameters we want to pass.
For a method with no parameters, such as gen_logo, we could call it (run it) like so:

gen_logo -> gen_logo runs

For a method that takes parameters, such as fuck_off, we'd also need to pass these into the method call:

fuck_off('This is a parameter!') -> fuck_off runs with s = 'This is a parameter!'
-----------------------------------------

Look at the code below:

  put_each (meticlock) (s)
  
  What is the meticlock object you're referring to? What does it actually represent? Where is it in the above code?
  Remember, the two words surrounding our print statement in gen_logo could be anything. I've edited these
  to reflect that.

Remember: we are trying to get fuck_off_meti to print the text held inside gen_logo (the ASCII logo itself) by 
calling the fuck_off method on it. Hint: You'll need to copy and paste something.


=end 
