NUMERIC_VALUES   = [1000,     500,     100,      50,     10,     5 ,    1    ]
ROMAN_VALUES     = ["M" ,     "D",     "C",     "L",    "X",    "V",   "I"   ]
ROMAN_TO_NUMERIC = {"M"=>1000,"D"=>500,"C"=>100,"L"=>50,"X"=>10,"V"=>5,"I"=>1}

def numeric_value(letter)
  value = ROMAN_TO_NUMERIC[letter]
  return value
end

def next_letter(number)
  index = 0
  while true
    value = NUMERIC_VALUES[index]
    letter = ROMAN_VALUES[index]
    return letter if number >= value
    index += 1
  end
end

def convert_to_roman(arabic)
  word = ""
  remainder = arabic
  while remainder > 0
    letter = next_letter(remainder)
    remainder -= numeric_value(letter)
    word << letter
  end
  return word
end

number = 550
result = convert_to_roman(number)
