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
=begin

def gen_logo = put_each
  put """
 __    __     ______     ______   __     ______     __         ______     ______     __  __    
/\ "-./  \   /\  ___\   /\__  _\ /\ \   /\  ___\   /\ \       /\  __ \   /\  ___\   /\ \/ /    
\ \ \-./\ \  \ \  __\   \/_/\ \/ \ \ \  \ \ \____  \ \ \____  \ \ \/\ \  \ \ \____  \ \  _"-.  
 \ \_\ \ \_\  \ \_____\    \ \_\  \ \_\  \ \_____\  \ \_____\  \ \_____\  \ \_____\  \ \_\ \_\ 
  \/_/  \/_/   \/_____/     \/_/   \/_/   \/_____/   \/_____/   \/_____/   \/_____/   \/_/\/_/ 

"""

=end # Ignore the begin and end.

=begin
                                          MARKING

Good job! That method is now working correctly, and it's something we'll use in the program later.

NEXT: ATTEMPT TASK 2
Current problems:
  It's inside a comment.
  You're comparing two methods for equality in a method definition (why?)
  You aren't using put_each in your new code properly.
=end
