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
     puts \n\n
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

Well done! You've started to correct both the errors in self.put_each_nl

However, there is a problem with the positioning of \n\n. At the moment, it is before the rest 
of the code. Is that where I asked it to go?

Here's a little tip: whenever we want to puts anything, anything at all, it must be 
inside speech marks.

By the way, it's up to you to collect these markings as and when you want, and save them
where you want. I'm not going to build tutorial files for you; we'll learn by doing,
like this.

NEXT: FIX put_each_nl

=end
