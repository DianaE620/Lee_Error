
def dummy_encrypt(string)
    
  string.reverse.swapcase.gsub(/[aeiou]/, "*")

end

puts dummy_encrypt("EsteEsMiPassword") == "DROWSSApImS*ETS*"


def max_letter_frequency_per_word(sentence)
  enunciado = sentence.split
  enunciado = words_longer_than(enunciado, 3)
  frecuencias = letter_per_word(enunciado, "e")
  numbers_larger_than(frecuencias)
end

def words_longer_than(array, num)
  array.select{ |word| word.length > num }
end

def letter_per_word(array, letter)
  array.map { |word| word.count(letter)}
end

def numbers_larger_than(num_array)
  num_array.max
end

puts max_letter_frequency_per_word("entero entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía") == 5


# --------- Entendiendo el metodo

#def max_letter_frequency_per_word(sentence)
    #sentence.split.select{|word| word.length > 3}.map{ |w| w.count("e") }.max
#end

#p max_letter_frequency_per_word("En la escuela aprendimos")

#a = "En la escuela aprendimos".split
#p a

#b = a.select{|palabra| palabra.length > 3}
#p b 

#c = b.map {|palabra| palabra.count("e")}
#p c 

#p c.max

