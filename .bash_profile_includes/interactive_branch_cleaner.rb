# frozen_string_literal: true

branches = `git branch`.strip.split("\n").map(&:strip).reject { |b| b.start_with?("*") }

branches.each_with_index do |branch, idx|
  STDOUT.write("[#{idx + 1}/#{branches.size}] Delete '#{branch}' (y/n)? ")
  answer = gets

  if answer.strip =~ /[yY]/
    system("git branch -D #{branch}")
  else
    puts "Leaving '#{branch}' alone"
  end
end

puts "Done! Thanks for playing."
