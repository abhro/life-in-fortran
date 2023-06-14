program test_board_init
use board_init
implicit none

    logical, dimension(4,5) :: board
    !real, dimension(2,4) :: arr_to_print
    board = create_board(4,5)

    !call random_init(.false., .true.)
    !call random_number(arr_to_print)

    print "(shape(board), L2)" board
    print *, board
    !print *, arr_to_print

end program test_board_init
