module board_init
use iso_fortran_env
implicit none

contains

    function create_board(width, height) result(board)
        integer(int32) :: width, height
        logical, allocatable :: board(:)

        board = (/.true. , .true./)

    end function create_board


    function import_board(filename) result(board)
        character(*) :: filename
        logical, allocatable :: board(:)


    end function import_board


end module board_init
