def words(sentence)
  tally = {}
  sentence.split(" ").each do |word|
    if tally[word.to_s]
      tally[word.to_s] += 1
    else
      tally[word.to_s] = 1
    end
  end
  return tally
end
