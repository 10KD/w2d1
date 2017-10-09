class CoffeeArgumentError < StandardError
  def message
    puts "I like coffee"
  end
end

class NoName < StandardError
end

class NoPastTime < StandardError
end

class NotYetFriends < StandardError
end
# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue ArgumentError
    nil
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    p maybe_fruit
    p "elsif is loading!"
    raise CoffeeArgumentError
  else
    raise StandardError
  end
end

def feed_me_a_fruit
  begin
    puts "Hello, I am a friendly monster. :)"

    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit)
  rescue CoffeeArgumentError
    retry
  rescue StandardError
    # if maybe_fruit == "coffee"
      # puts "I really like coffee, but I need vitamin C"
    #   retry
    # else
      puts "Please give me an #{FRUITS[0...-1].join(", ")} or #{FRUITS.last}"
      puts "Please go away. Rawr."
    # end
  end
end

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    begin
      @name = name
      raise NoName if @name.length < 1
      @fav_pastime = fav_pastime
      raise NoPastTime if @fav_pastime.length < 1
      @yrs_known = yrs_known
      raise NotYetFriends if @yrs_known < 5
    end
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me."
  end
end
