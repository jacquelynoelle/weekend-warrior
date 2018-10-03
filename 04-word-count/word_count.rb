def words(sentence)
  tally = {}
  sentence.split(" ").each do |word| # why does this work but not /\s+/
    if tally[word.to_s]
      tally[word.to_s] += 1
    else
      tally[word.to_s] = 1
    end
  end
  return tally
end
