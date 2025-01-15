class WorldCount
  def initialize(filename)
    @filename = filename
    @word_count_hash = {}
    unless File.exist? filename
      raise "File name=#{@filename} does not exist!"
    end
  end

  def load_data
    lines = File.readlines(@filename)
    lines.each do |line|
      words = line.split " "
      words.each do |word|
        @word_count_hash.has_key?(word.downcase) ? @word_count_hash[word.downcase] += 1 : @word_count_hash[word.downcase] = 1
      end
    end
  end

  def count(key)
    @word_count_hash.has_key?(key) ? @word_count_hash[key.downcase] : 0
  end

  def word_counts
    @word_count_hash
  end
end
