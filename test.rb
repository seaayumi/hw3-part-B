def sub_encrypt(document, key)
  #TODO: encrypt string using caeser cipher
  #document = "some - text 11 zz 99"
  #key = 3
  ciphertext = ""
  indexes = []
  randkey = Random.new(key)
'''
  document.each_codepoint do |asc|  #each_Codepoint is like each_car but gives ord of each char
  	ciphertext << asc
  end
  return ciphertext'''

  document.length.times { |idx| indexes << idx +10 }
  
'''  document.each_codepoint do |asc|  #each_Codepoint is like each_car but gives ord of each char
  	ciphertext << asc + rand(indexes)
  end
'''
  doc = document.chars.map(&:ord)
  ciphertext = doc.zip(indexes).map {|a,b| (a + randkey.rand(b)).chr }.join

  ciphertext
end

def sub_decrypt(document, key)
  ciphertext = ""
  indexes = []
  randkey = Random.new(key)
'''
  document.chars.map do |asc|  #each_Codepoint is like each_car but gives ord of each char
  	ciphertext << asc
  end
  return ciphertext'''

  document.length.times { |idx| indexes << idx +10 }
  
'''  document.each_codepoint do |asc|  #each_Codepoint is like each_car but gives ord of each char
  	ciphertext << asc + rand(indexes)
  end
'''
  doc = document.chars.map(&:ord)
  ciphertext = doc.zip(indexes).map {|a,b| (a - randkey.rand(b)).chr }.join

  puts ciphertext
end


crypted = sub_encrypt("some - text 11", 3)
puts crypted

decrypted = sub_decrypt(crypted, 3)
puts decrypted







'''
cipher = ""
document = "some text - 2"
document.each_codepoint do |asc|
	cipher << asc  #each_Codepoint is like each_car but gives ord of each char
	puts asc # puts ord of chars
end
puts cipher # puts chr of chars
'''