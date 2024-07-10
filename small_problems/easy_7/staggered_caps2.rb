#PEDAC

#Problem
#modify the method from the previous exercise
#so that it ignores non-alphabetic chars when
#determining whether it should uppercase or lowercase each
#letter.

#Example/Test Case
#staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

#Data Structure
#string input
#string object output

#Algorithm
#set a counter to 0
#only update the counter if the char added is an alphabetic char
#increment counter by 1 if this happens and upcase only if the counter is even

#Code
def staggered_case(arg)
  counter = 0
  new_string = ""
  
  arg.chars.each_with_index do |letter, index|
    if letter !~ /\A[a-zA-Z]\z/
      new_string << letter
    elsif counter.even?
      new_string << letter.upcase
      counter += 1
    else
      new_string << letter.downcase
      counter += 1
    end
  end
      
  new_string
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'