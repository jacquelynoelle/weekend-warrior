class Alouette
  def self.lines_for_verse(verse_num)
    lines = ["Et la tête!", "Et le bec!", "Et les yeux!", "Et le cou!",
      "Et les ailes!", "Et les pattes!", "Et la queue!", "Et le dos!"]
    lines_for_verse = []

    verse_count = verse_num + 1
    verse_count.times do
      lines_for_verse << lines[verse_num]
      verse_num -= 1
    end

    return lines_for_verse
  end

  def self.verse(verse_num)
    lines_for_verse = Alouette.lines_for_verse(verse_num)
    word = lines_for_verse.first[3..((lines_for_verse.first.length) - 2)]
    verse = ""

    2.times do
      verse << "Je te plumerai #{word}.\n"
    end

    (verse_num + 1).times do |i|
      2.times do
        verse << (lines_for_verse[i] + "\n")
      end
    end

    2.times do
      verse << "Alouette!\n"
    end

    verse << "A-a-a-ah"

    return verse
  end

  def self.sing
    verse = ""
    8.times do |i|
      verse << "Alouette, gentille alouette,\nAlouette, je te plumerai.\n\n"
      verse << Alouette.verse(i)
      verse << "\n\n"
    end
    verse << "Alouette, gentille alouette,\nAlouette, je te plumerai."
    return verse
  end
end
