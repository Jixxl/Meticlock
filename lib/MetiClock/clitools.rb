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

Well done. You're no longer comparing two methods for equality, but rather using a single equals 
correctly. However, you're still using put_each inside this method wrong. 

Lets look at put_each_nl for a second. Look at how you use another method -- puts -- inside this
method to get the result you want.

Imagine put_each was puts in gen_logo. Where would you put it? How would you use it if you just 
wanted to puts the text?

Further, the function is STILL inside a comment. Remember, comments start like this
'=begin'
and end like this
'=end'
and anything between them is ignored at runtime.

NEXT: ATTEMPT TASK 2
Current problems:
  It's inside a comment.
  You're comparing two methods for equality in a method definition (why?)
  You aren't using put_each in your new code properly.
=end
