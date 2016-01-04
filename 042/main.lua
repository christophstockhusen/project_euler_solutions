local file = io.open("words.txt", "r")
local line = io.read(file)
local words = {}
local max_word_length = 0
for word in string.gmatch(line, "%u+") do
   words[#words+1] = word
   if string.len(w) > max_word_length then
      max_word_length = string.len(w)
   end
   print(word)

end

