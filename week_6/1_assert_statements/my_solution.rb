# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs


=begin
Pseudocode:
ASSIGN 'bettysue' to variable name
CALL assert method with block 'name == "bettysue"'
	CHECK block, name == "bettysue" return True'
CALL assert method with block 'name == "billybob"'
	CHECK block, name == "billybob" return False'

Yield invokes the code that is in the block coming after the method
call in whose definition the yield appears. So in this case line 12
assigns the string 'bettysue' to name. Then line 13 calls the assert
function. The assert function raises an Assertion failed statement
if the code in the block does not evaluate to True. In this case 
the code in line 13 evaluates to true and the code in line 14 causes
assert to raise the Assertion failed! statement.

=end
# 3. Copy your selected challenge here


def north_korean_cipher(coded_message, cipher)
  input = coded_message.downcase.split("") # Converts coded_message string into array with each character as a new element
  decoded_sentence = [] # Initialize empty array

  alphabet = ("a".."z").to_a     # If we wanted to use a Hash we could have incorporated .rotate
  whitespace = ['@', '#', '$', '%', '^', '&', '*']
    
  input.each do |character| # Each is determining if a char in input is in the cipher or the whitespace array
    if alphabet.include?(character) 
        decoded_sentence << alphabet[(alphabet.index(character) - cipher) % 26] # Add the letter four letters behind
    elsif whitespace.include?(character)
        decoded_sentence << " "
    else  
        decoded_sentence << character
    end   
  end
  
  decoded_sentence = decoded_sentence.join("")
  decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
   
  return decoded_sentence # Returns the original message
end

p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.", 4)=="our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!", 4)=="our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.", 4)=="if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!", 4)=="next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?", 4)=="can somebody just get me 100 bags of cool ranch doritos?"




# 4. Convert your driver test code from that challenge into Assert Statements

assert {north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.", 4)=="our people eat the most delicious and nutritious foods from our 10000 profitable farms."}
assert {north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!", 4)=="our nukes are held together by grape-flavored toffee. don't tell the us!"}
assert {north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.", 4)=="if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."}
assert {north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!", 4)=="next stop: south korea, then japan, then the world!"}
assert {north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?", 4)=="can somebody just get me 100 bags of cool ranch doritos?"}
# 5. Reflection
=begin
I actually hadn't thought of this method for defining asserts. In a lot of previous 
coding experiences I usualy would add in code assert statements, more or as 
guidance for the person reading the code. This way when reading what I had written
they would know what the code was intended to do. It would not be submitted 
for public view of course if they would fail. 

Note that in this code, an assertion error will be raised from the given code.
The rest of the code passes the assertions once this is commented out.
=end