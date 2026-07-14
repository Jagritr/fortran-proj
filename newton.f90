program newton_law_calculator
  implicit none

real(8), parameter :: G = 6.67430e-11 
real(8) :: Mass1, Mass2, Separation
real(8) :: force
integer :: ios

print *, "Enter the masses of the two objects (in kg) and their separation distance (in meters):"
read (*, *, iostat=ios) Mass1, Mass2, Separation

if (ios /= 0) then
  print *, "Error reading input!"
  stop
end if

force = G * Mass1 * Mass2 / (Separation**2)
print *, "The gravitational force between the two objects is: ", force, " N"
print *, "Press Enter to exit..."
read *

end program newton_law_calculator
