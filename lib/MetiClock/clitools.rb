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
  print "Fuck Off"
end

def fuck_off_meti
  fuck_off
end  
=begin MARKING
                                        
Still not there. There's still something in there that we don't need, and you're using dot notation a little
weirdly there.

I think we're going to make it a habit that if you miss something three or so times I'll show you the right 
way to do it. No-one likes getting stuck in place.

With that in mind, here's the correct method:

  def gen_logo
    put_each <<-meticlock
               _|_   o     |         |    
    .--.--. .-. |    .  .- | .-.  .- |.-. 
    |  |  |(.-' |    | (   |(   )(   |-.' 
    '  '  `-`--'`-'-' `-`-'`-`-'  `-''  `-                                       
    meticlock
  end
end

See the difference? We can use put_each as if it was print, because both methods take strings as their parameters.

Perhaps this is a good point to hammer this point home. Write a new method, called fuck_off, that prints a string
's', and prints 'fuck off' after it.

I'll get you started:
def fuck_off(s)


Once you've got this method made, make another method, fuck_off_meti, that prints our logo using fuck_off 
instead of put_each.

=end 
