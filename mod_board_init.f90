module board_init
use iso_fortran_env
implicit none

contains

    function create_board(width, height) result(board)
        integer(int32) :: width, height
        logical, dimension(width,height) :: board
        real, dimension(width,height) :: board_intermediate ! to store the randoms

        call random_seed()
        call random_number(board_intermediate)
        board = board_intermediate < 0.5
    end function create_board


    function import_board(filename) result(board)
        character(*) :: filename
        logical, allocatable :: board(:)


    end function import_board


end module board_init
