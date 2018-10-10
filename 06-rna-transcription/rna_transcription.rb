class Complement
  DNA = {"C" => "G", "G" => "C", "T" => "A", "A" => "U"}
  RNA = {"C" => "G", "G" => "C", "A" => "T", "U" => "A"}

  def self.of_dna(strand)
    return self.conversion_loop(strand, "DNA")
  end

  def self.of_rna(strand)
    return self.conversion_loop(strand, "RNA")
  end

  private

    def self.conversion_loop(strand, type)
      letters = strand.split("")
      converted_strand = ""
      letters.each do |nucleotide|
        converted_strand << convert(nucleotide, type)
      end
      return converted_strand
    end

    def self.convert(nucleotide, type)
      letter = nucleotide.upcase

      if type == "DNA"
        raise ArgumentError, "#{letter} is not a DNA nucleotide" if !DNA[letter]
        return DNA[letter]
      else # type = "RNA"
        raise ArgumentError, "#{letter} is not an RNA nucleotide" if !RNA[letter]
        return RNA[letter]
      end
    end
end
