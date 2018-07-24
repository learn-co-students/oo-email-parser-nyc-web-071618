# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_reader :email_string

  def initialize(email_string)
    @email_string = email_string
  end

  def parse
    parsed_email_string = []
    email_string.split(' ').each do |element|
      if element[element.length - 1] == ","
        parsed_email_string << (element.delete ",")
      else
        parsed_email_string << element
      end
    end
    parsed_email_string.uniq
  end
end
