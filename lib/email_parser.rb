# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end
  
  def parse
    allmail = @emails.split.collect { |email| 
      email.split(',') 
    }
    # binding.pry
    allmail.flatten.uniq
  end
end