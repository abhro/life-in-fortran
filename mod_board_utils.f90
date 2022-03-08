module board_utils
implicit none

contains

  logical function is_corner_cell(board, row, col) ! stub
    is_corner_cell = .false.
  end function is_corner_cell

  logical function is_edge_cell(board, row, col) ! stub
    is_edge_cell = .false.
  end function is_edge_cell

  logical function is_corner_cell(board, row, col) ! stub
    is_center_cell = .false.
  end function is_center_cell

end module board_utils
