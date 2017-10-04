# line_count = 0
# text=''

# File.open("text.txt").each do |line|
# 	line_count += 1
# 	text << line
# end

# puts line_count


stopwords = %w{the a by on for of are with just but and to the my I has some in}

lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join

all_words = text.scan(/\w+/)
good_words = all_words.reject{ |word| stopwords.include?(word) }
good_percentage = ((good_words.length.to_f / all_words.length.to_f) * 100).to_i

puts text

puts "#{line_count} lines"

total_characters = text.length
puts "#{total_characters} characters"

total_characters_nospaces = text.gsub(/\s+/, '').length
puts "#{total_characters_nospaces} characters excluding spaces" 

word_count = text.split.length
puts "#{word_count} words"

paragraph_count = text.split(/\n\n/).length
puts "#{paragraph_count} paragraphs"

sentence_count = text.split(/\.|\?\!/).length
puts "#{sentence_count}  sentences"

puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"

