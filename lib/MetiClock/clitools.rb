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
  def self.gen_logo 
    put_each <<-meticlock
=======
  def gen_logo.put_each 
    print <<-meticlock
>>>>>>> f3c4ebb208ff0807568f66811b2774fc066cdde3
               _|_   o     |         |    
    .--.--. .-. |    .  .- | .-.  .- |.-. 
    |  |  |(.-' |    | (   |(   )(   |-.' 
    '  '  `-`--'`-'-' `-`-'`-`-'  `-''  `-                                       
    meticlock
  end
end

=begin MARKING
                                        
Almost there! You're still overthinking gen_logo, however. Look at how we use puts
inside put_each_nl. Now, look at how you're using put_each inside gen_logo.

Remember, they're both methods that take a string.
We could type
puts 'hi!'
or
put_each 'hi!'
and both would work. The only difference is that we wrote put_each, and that 
puts comes with ruby.

With this in mind, there's something extra in gen_logo we don't need. Can you spot it?

=end 
