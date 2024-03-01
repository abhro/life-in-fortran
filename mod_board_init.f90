module board_init
use iso_fortran_env
implicit none

contains

    function create_board(width, height) result(board)
        integer(int32), intent(in) :: width, height
        logical, dimension(width,height) :: board
        real, dimension(width,height) :: board_intermediate ! to store the randoms

        call random_seed()
        call random_number(board_intermediate)
        board = board_intermediate < 0.5
    end function create_board


    function import_board(filename) result(board)
        character(len=*), intent(in) :: filename
        logical, allocatable :: board(:,:)
        integer(int32) :: width, height
        integer :: infile

        open(newunit=infile, file=filename, form="FORMATTED")
        read(infile,*) width, height
        allocate(board(width,height))
        read(infile,*) board
        close(infile)
    end function import_board

    procedure save_board(filename, board)
        character(len=*), intent(in) :: filename
        logical, dimension(:,:), intent(in) :: board
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
