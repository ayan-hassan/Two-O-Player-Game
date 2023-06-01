class MathProblems

  attr_accessor :correct_answer

  def initialize
    @correct_answer = -1
  end
  
  def show_question
    num = Random.new
    num1 = rand 1...20
    num2 = rand 1...20
    @correct_answer = num1 + num2
    "What does #{num1} + #{num2} equal?"
  end

  def isGuessCorrect(guess)
    guess == @correct_answer
  end
  
end