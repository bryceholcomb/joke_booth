class Seed

  def call
    create_jokes
  end

  def create_jokes

    Joke.create(body: "Duck duck = new duck ();", rating: 1)
    Joke.create(body: "I once farted in an elevator. It was wrong on so many levels.", rating: 2)
    Joke.create(body: "A husband calls his programmer wife and says, “While you’re out, buy some milk.” She never returns home.", rating: 1)
    Joke.create(body: "If 4 out of 5 people suffers from diarrhea, does that mean 1 of out 5 enjoys it?", rating: 3)
    Joke.create(body: "Stalking is when two people go for a long romantic walk together but only one of them knows about it.", rating: 4)
    Joke.create(body: "What’s the object oriented way to become wealthy? Inheritance.", rating: 1)
    Joke.create(body: "I used to think the brain was the most important organ. Then I thought, look what’s telling me that.", rating: 4)
    Joke.create(body: "A magician was walking down the street and turned into a grocery store.", rating: 2)
    Joke.create(body: "I totally understand how batteries feel, because I’m rarely included in things either.", rating: 3)
    Joke.create(body: "It’s hard to explain puns to kleptomaniacs because they always take things literally.", rating: 5)
    Joke.create(body: "In order to understand recursion, you must first understand recursion.", rating: 7)

  end

  def self.call
    new.call
  end

end

Seed.call
