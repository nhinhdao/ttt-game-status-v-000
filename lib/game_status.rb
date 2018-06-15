# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONSS constant
WIN_COMBINATIONSS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # bottom row
  [0,3,6], # left column
  [1,4,7], # middle column
  [2,5,8], # right column
  [0,4,8], # left diagonal
  [2,4,6]  # right diagonal
  ]

def won?(board)
      # WIN_COMBINATIONSS.each do |WIN_COMBINATIONS|
            if board[0] == "X" && board[1] == "X" && board[2] == "X"
                  return WIN_COMBINATIONS[0]
            elsif board[3] == "X" && board[4] == "X" && board[5] == "X"
                  return WIN_COMBINATIONS[1]
            elsif board[6] == "X" && board[7] == "X" && board[8] == "X"
                  return WIN_COMBINATIONS[2]
            elsif board[0] == "X" && board[3] == "X" && board[6] == "X"
                  return WIN_COMBINATIONS[3]
            elsif board[1] == "X" && board[4] == "X" && board[7] == "X"
                  return WIN_COMBINATIONS[4]
            elsif board[2] == "X" && board[]5] == "X" && board[8] == "X"
                  return WIN_COMBINATIONS[5]
            elsif board[0] == "X" && board[4] == "X" && board[8] == "X"
                  return WIN_COMBINATIONS[6]
            elsif board[2] == "X" && board[4] == "X" && board[6] == "X"
                  return WIN_COMBINATIONS[7]
            else
                  false
            end
      end
end
