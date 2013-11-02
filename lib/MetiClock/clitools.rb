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
end

# TASK: Write a method here that does the same as 'put_each', but also makes two new lines 
# afterwards. Call it self.put_each_nl

def self.put_each_nl(s)
    s.each_char do |c|
     putc c; sleep(0.025); STDOUT.flush
     puts "\n\n"
    end
  end
  
# TASK 2: Write a method here, called gen_logo, that uses 'put_each' to print the following text:
#=begin

def put_each = gen_logo
  put """
 __    __     ______     ______   __     ______     __         ______     ______     __  __    
/\ "-./  \   /\  ___\   /\__  _\ /\ \   /\  ___\   /\ \       /\  __ \   /\  ___\   /\ \/ /    
\ \ \-./\ \  \ \  __\   \/_/\ \/ \ \ \  \ \ \____  \ \ \____  \ \ \/\ \  \ \ \____  \ \  _"-.  
 \ \_\ \ \_\  \ \_____\    \ \_\  \ \_\  \ \_____\  \ \_____\  \ \_____\  \ \_____\  \ \_\ \_\ 
  \/_/  \/_/   \/_____/     \/_/   \/_/   \/_____/   \/_____/   \/_____/   \/_____/   \/_/\/_/ 

"""

#=end # Ignore the begin and end.

=begin
                                          MARKING

You're making progress. You've also commented out the =begin and =end which was actually pretty
clever, so well done. I was just expecting you to move the method.

Still a few problems here:
  1) Unfortunately, while the """ syntax works in some languages, it doesn't in Ruby.
  When we want to print multiple things in ruby, we do it like this:
    print <<-WORD
      what we want to print
    WORD

  If you want an example of this, look at draw_tabs.

  2) Remember the only thing that goes after the 'def' at the start of the method is the method name
  or any method parameters (such as 's' above.) YOU CANNOT DO ANYTHING ELSE ON THAT LINE.

  3) You're now naming that method put_each rather than gen_logo.

  4) Look again at how we use puts inside put_each_nl. What's stopping you from using put_each 
  inside gen_logo in the same way?
  
=end
