# U2.W4: Cipher Challenge


# I worked on this challenge with: .


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.


# Takes a string called coded_message then converts each character into a new element in an array
# Outputs decoded message as string applying the cipher
# The cipher is the index of the letter in the alphabet + cipher

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



# Your Refactored Solution





# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!", 4) == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.", 4)=="our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!", 4)=="our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.", 4)=="if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!", 4)=="next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?", 4)=="can somebody just get me 100 bags of cool ranch doritos?"

# Reflection
# .invert swaps hashes and keys
# .rotate on array
# .cycle
# .shuffle array mixes up elements
 