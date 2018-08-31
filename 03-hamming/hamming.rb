class Hamming
  def self.compute(strand1, strand2)
    # strands must be strings of equal length to compare
    unless strand1.length == strand2.length &&
      strand1.class == String && strand2.class == String
      raise ArgumentError, "Strands must be strings of equal length"
    end
    hamming_distance = 0
    strand1.chars.each_with_index do |nucleotide, i|
      hamming_distance += 1 unless nucleotide.casecmp? strand2[i]
    end
    return hamming_distance
  end
end
