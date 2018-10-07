class Complement
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
      case nucleotide.upcase
      when "C"
        return "G"
      when "G"
        return "C"
      when "A"
        return "U" if type == "DNA"
        return "T" if type == "RNA"
      when "T"
        return "A" if type == "DNA"
        raise ArgumentError, "T is not an RNA nucleotide" if type == "RNA"
      when "U"
        return "A" if type == "RNA"
        raise ArgumentError, "U is not an RNA nucleotide" if type == "DNA"
      else
        raise ArgumentError, "#{nucleotide} is not a valid nucleotide"
      end
    end
end
