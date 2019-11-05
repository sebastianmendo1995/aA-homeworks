require "set"

class Board
  attr_accessor :cups
  attr_reader :name1, :name2

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {Array.new()}
    # 0-5  && 7-12
    self.place_stones
    
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0...cups.length).each do |idx|
      unless idx==6 || idx == 13
        #put 4 stones symbols
        cups[idx] +=  [:stone,:stone,:stone,:stone]
      end
    end
  end

  def valid_move?(start_pos)
    if @cups[start_pos].nil?
      raise "Invalid starting cup"
    elsif @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
    true
  end

  def make_move(start_pos, current_player_name)
    num_stones = cups[start_pos].length
    cups[start_pos] = []
    pos = start_pos + 1
    current_player_name == name1 ? opponent_cup = 13 : opponent_cup = 6

    until num_stones == 0
      if pos != opponent_cup
        cups[pos] << :stone
        num_stones-=1 
        break if num_stones == 0
      end
      pos += 1
      pos = 0 if pos == 14
    end
    
    self.render
    return next_turn(pos)
    
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx

    #first i have to check if it end on current player cup
    if ending_cup_idx == 6 || ending_cup_idx == 13
      return :prompt
    elsif cups[ending_cup_idx].empty?
      return :switch
    else
      return ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if cups[0..5].all?{|cup| cup.empty?}
    return true if cups[7..12].all?{|cup| cup.empty?}
    false
  end

  def winner
    return :draw if cups[6] == cups[13]
    cups[6].length > cups[13].length ? @name1 : @name2
  end
end

board = Board.new("a", "b")
board.render
#
#
#
#
