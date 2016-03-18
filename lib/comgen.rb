class Comgen

  def self.single
    adj_path = File.join( File.dirname(__FILE__), 'words/adj.txt' )
    noun_path = File.join( File.dirname(__FILE__), 'words/noun.txt' )

    adj = File.open(adj_path).read
    noun = File.open(noun_path).read

    adj_a = adj.split("\n")
    noun_a = noun.split("\n")

    adj_word = adj_a.shuffle.first
    noun_word = noun_a.shuffle.first

    puts adj_word + '-' + noun_word
  end

  def self.multi(n)
    n.times do
      self.single
    end
  end

end
