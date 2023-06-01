class mathProblems

  attr_accessor :current_question, :correct_answer

  def initialize
    @current_question = nil
    @correct_answer = nil
  end

  def question
    num1 = rand 1...20
    num2 = rand 1...20
    answer(num1, num2)
    @current_question "Player 1: What does #{randomNumber1} + #{randomNumber2} equal?"
  end

  def answer(num1, num2)
    @correct_answer = num1 + num2
  end
  
end
