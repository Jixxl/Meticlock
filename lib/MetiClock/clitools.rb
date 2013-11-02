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

def \n\n self.put_each_n|(s)
    s.each_char do |c|
     putc c; sleep(0.025); STDOUT.flush
    end
  end
  
# TASK 2: Write a method here, called gen_logo, that uses 'put_each' to print the following text:
=begin#

  def gen_logo == put_each
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

'=begin' and '=end' delimit comments. That means that the method you wrote up above was inside 
a comment, and thus will be ignored during compilation, just like this text.

self.put_each_n| is still named wrong. Look again at what I wanted it to be called. 
It's important to get characters right in coding.

This code won't compile -- you should be able to test that yourself. 

The line starting with 'def' is called a method definition. 
All it does is give a name to a method.
Thus, putting \n\n here will do nothing but break the code.

All code that runs inside a method must go after the method definition and before 
the 'end' of that method. 

See if you can put \n\n in the right place. HINT: You will need to use another method
inside this method to print those two characters to the screen. Can you remember what it is?


=end
