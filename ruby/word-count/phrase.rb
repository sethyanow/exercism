class Phrase

  def initialize(phrase)
    @phrase = prepare_string(phrase)
    @frequency = Hash.new 0

    count_words
  end

  def words
    @phrase.split
  end

  def word_count
    @frequency
  end

private

  def prepare_string(phrase)
    phrase.downcase.gsub /[^a-z0-9']+/, ' '
  end

  def count_words
    words.each do |n|
      add_entry(n)
    end
  end

  def add_entry(word)
    @frequency[word] += 1
  end
end