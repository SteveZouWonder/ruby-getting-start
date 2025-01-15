require "rspec"
require "getting/start/demo2/file/world_count"

RSpec.describe WorldCount do
  context "when test initialize" do
    it "file exist" do
      filename = "a.txt"
      expect {
        WorldCount.new filename
      }.not_to raise_error
    end

    it "file not exist" do
      filename = "b.txt"
      expect {
        WorldCount.new(filename)
      }.to raise_error("File name=#{filename} does not exist!")
    end
  end

  context "when test word count" do
    it "test count" do
      world_count = WorldCount.new "a.txt"
      world_count.load_data
      expect(world_count.count("hello")).to eq(1)
    end

    it "puts word counts" do
      world_count = WorldCount.new "a.txt"
      world_count.load_data
      word_counts = world_count.word_counts
      expect(word_counts).to be_a(Hash)

      word_counts.each do |word, count|
        puts "word: #{word}: counts:#{count}"
      end
    end
  end
end
