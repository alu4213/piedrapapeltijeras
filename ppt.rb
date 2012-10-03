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
