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
  put_each.meticlock 
  print fuck_off(s)
end  
=begin MARKING

Good try. Couple of notes here:

1) We don't need to name the module/class in our method calls if the method is already within that container.
So, if we wanted to call 'put_each' from another file, CliTools.put_each would indeed be correct.
Here, however, we can simply type 'put_each', as the method is defined within the same module.

2) You're getting the right idea about mixing functions together within other functions to get the desired
result -- sweet. Let's look at what fuck_off_meti is doing at the moment:

line 41: CliTools.put_each (this is calling a method, but passing no parameter to it. Instead of typing
'put_each' and then what you want printed, you are typing nothing afterwards. As a result, this method
will do nothing. 

line 42: CliTools.fuck_off (this method again has no parameters passed to it. This will again do nothing. 
Remember, we need to specify what fuck_off is printing -- s -- before it'll run correctly. For instance,
fuck_off('hi!') would work, as s = 'hi!', but calling fuck_off with no parameters will not, as s = nothing.

Let's look again at what we want fuck_off_meti to do. We want it to print the meticlock logo using the
fuck_off method to print. See if you can implement that in the code. 

You're doing well.
 
=end 
