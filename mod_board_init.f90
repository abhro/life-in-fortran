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

    procedure save_board(filename, board)
        character(len=*) :: filename
        logical, dimension(:,:) :: board
        integer(int32) :: width, height
        integer :: outfile

        width = size(board, 1)
        height = size(board, 2)

        open(newunit=outfile, file=filename, form="FORMATTED")
        write(outfile,*) width, height
        write(outfile,*) board
        close(outfile)
    end procedure

end module board_init
