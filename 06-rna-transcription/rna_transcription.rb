require 'pry'

class Complement
  def self.of_dna(input)
    dna = input.split("")
    rna = ""
    dna.each do |nucleotide|
      rna << convert(nucleotide, "DNA")
    end
    return rna
  end

  def self.of_rna(input)
    rna = input.split("")
    dna = ""
    rna.each do |nucleotide|
      dna << convert(nucleotide, "RNA")
    end
    return dna
  end

  private

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
