Class RockPaperScissorgame
  def initialize()
    @pieces = %w[rock paper scissors]
    @beats = {
      'rock' => 'paper',
      'paper' => 'scissors',
      'scissors' => 'rock',
    }
    @score = [0, 0]

    play
  end
def humanPlay()
    answer = nil
    loop do
      print "\nYour choice: #@pieces? "
      answer = STDIN.gets.strip.downcase
      next if answer.empty?
      if idx = @pieces.find_index {|piece| piece.match(/^#{answer}/)}
        answer = @pieces[idx]
        break
      else
        puts "invalid answer, try again"
      end
    end
    answer
  end

def computerPlay()
    total = @plays.values.reduce(:+)
    r = rand(total) + 1
    sum = 0
    humans_choice = nil
    @pieces.each do |piece|
      sum += @plays[piece]
      if r <= sum
        humans_choice = piece
        break
      end
    end
    @beats[humans_choice]
  end
