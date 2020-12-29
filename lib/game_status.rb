WIN_COMBINATIONS =[
[0,1,2],
[3,4,5],
[6,7,8],
[0,3,6],
[1,4,7],
[2,5,8],
[0,4,8],
[2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.find do |win_combination|
    win_index_1 = win_combination[0]
    win_index_1 = win_combination[1]
    win_index_1 = win_combination[2]
    win_index_1 = win_combination[3]
    win_index_1 = win_combination[4]
    win_index_1 = win_combination[5]
    win_index_1 = win_combination[6]
    win_index_1 = win_combination[7]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    position_4 = board[win_index_4]
    position_5 = board[win_index_5]
    position_6 = board[win_index_6]
    position_7 = board[win_index_7]
    position_8 = board[win_index_8]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combinations
    else
      false
    end

  end

end

def full?(board)
  board.all? do |box|
    box == "X" || box == "O"
  end
end

def draw?(board)
  won?(board) == nil && full?(board) == true
end

def over?(board)
  draw?(board) == true || won?(board) != nil
end

def winner(board)
  if won?(board) != nil
    winner = board[won?(board)[0]]
  end
end
