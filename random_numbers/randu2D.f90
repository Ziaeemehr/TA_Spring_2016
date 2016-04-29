program randu_1
implicit none
real :: x,y,randu
integer :: iseed,i
character(len=100) :: command
open(unit=10,file='out2D.txt')

iseed = 123456
do i = 1,100000
    x = randu(iseed)
    y = randu(iseed)
!     z = randu(iseed)
    write(10,*) x,y
enddo
end program

function randu(iseed)
integer :: iseed
real :: randu
integer , parameter:: IMAX = 2147483647
real(8),parameter :: XMAX_INV = 1./IMAX
iseed = iseed * 65539
if (iseed < 0) iseed = iseed + IMAX + 1
   randu = iseed * XMAX_INV   
end function
!  command = "echo "plot "out.txt" u 1:2 w p ps 0.5 pt 7"| gnuplot --persist "
!  command = "echo 'this is a text'"
! call EXECUTE_COMMAND_LINE(command)