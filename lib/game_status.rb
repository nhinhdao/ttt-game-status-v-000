require 'pry'

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


# Define your WIN_COMBINATIONSS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # bottom row
  [0,3,6], # left column
  [1,4,7], # middle column
  [2,5,8], # right column
  [0,4,8], # left diagonal
  [6,4,2]  # right diagonal
  ]

def won?(board)
      WIN_COMBINATIONS.detect do |combo|
            board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && board[combo[0]] != " "
      end
end

def full?(board)
      board.all? { |index| index != " " && index != nil}
end

def draw?(board)
      # binding.pry
      !won?(board) && !full(board)
end
