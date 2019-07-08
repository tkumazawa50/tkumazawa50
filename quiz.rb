require 'csv'

Question = Struct.new(:question, :a1, :a2, :a3, :a4, :a5, :answer, :times, :subject, :number, :additional, :image)

questions = CSV.read('data.csv').map { |q| Question.new(*q) }

asked = 0
correct = 0

questions.shuffle.each do |question|
  puts "#{question.times} #{question.subject} 問#{question.number}"
  puts question.question
  puts question.additional if question.additional
  puts "Image" if question.image
  puts "(1): " + question.a1
  puts "(2): " + question.a2
  puts "(3): " + question.a3
  puts "(4): " + question.a4 if question.a4
  puts "(5): " + question.a5 if question.a5
  print '> '
  answer = gets
  break unless answer
  is_correct = answer.chomp == question.answer 
  correct += 1 if is_correct
  asked += 1
  puts is_correct ? "OK" : "NG"
  puts question.answer
  puts
end

puts "#{correct} / #{asked}"
