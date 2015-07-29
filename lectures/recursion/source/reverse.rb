#reverse_copy("net")

def reverse_copy(list)
  # reverse_iterative(list)
  reverse_recursive(list)
end

def reverse_iterative(list)
  answer = []
  index = 0
  count = list.size
  while index < count
    value = list[index]
    answer.unshift(value)
    index += 1
  end
  answer
end

# Short version
def reverse_recursive(list)
  return list.dup if list.length <= 1
  reverse_recursive(list[1..-1]).push(list[0])
end

# Longer version
def reverse_recursive(list)
  if list.length == 0
    result = list.dup
  else
    first = list[0]
    remainder = list[1..-1]
    sub_list = reverse_recursive(remainder)
    result = sub_list.push(first)
  end
  return result
end

























# def reverse_recursive(list)
#   if list.length <= 1
#     list.dup
#   else
#     first = list[0]
#     remaining = list[1..-1]
#     reverse_recursive(remaining) << first
#   end
# end

# def reverse_recursive(list)
#   if list.length <= 1
#     answer = list.dup
#   else
#     first = list[0]
#     everything_else = list[1..-1]
#     little_answer = reverse_recursive(everything_else)
#     answer = little_answer.push first
#   end
#   return answer
# end
