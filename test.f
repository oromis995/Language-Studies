	      INTEGER :: option
          REAL :: amount
          REAL :: temp
		  do
		  ! user menu
			  WRITE(*,*) "Enter a Converstion Option (1-6), or (0) to exit "
			  WRITE(*,*) "___________________________"
			  WRITE(*,*) "(1) Pounds to Kilograms"
			  WRITE(*,*) "(2) Kilograms to Pounds"
			  WRITE(*,*) "(3) Feet to Meters"
			  WRITE(*,*) "(4) Meters to Feet"
			  WRITE(*,*) "(5) Fahrenheit to Celsius"
			  WRITE(*,*) "(6) Celsius to Fahrenheit "
			  WRITE(*,*) "(0) Exit this Program "
		  ! get user input
			  WRITE(*,*) "Please enter a conversion option"
			  READ(*,*) option
		  ! loop -> make do while loop and wrap it around switch
		  ! switch statement
			  select case (option)
			  case(0)
		  ! exit program
			  exit
			  case(1)
		  ! lbs to kilo
			  WRITE(*,*) "Please enter the lbs: "
			  READ(*,*) amount
			  amount = amount / 2.2046
			  WRITE(*,*) amount, "kg"
			  case (2)
		  ! kilo to lbs
			  WRITE(*,*) "Please enter the kg: "
			  READ (*,*) amount
			  amount = amount * 2.2046
			  WRITE (*,*)  amount, "lbs"
			  case(3)
		  ! ft to m
			  WRITE(*,*) "Please enter the ft: "
			  READ(*,*) amount
			  amount = amount * 0.3048
			  WRITE(*,*) amount, "m"
			  case(4)
		  ! m to ft
			  WRITE(*,*) "Please enter the m: "
			  READ(*,*) amount
			  amount = amount * 3.28084
			  WRITE(*,*) amount, "ft"
			  case(5)
		  ! Fahrenheit to Celsius
			  WRITE(*,*) "Please enter the temperature in Fahrenheit: "
			  READ (*,*) temp
			  temp = (temp - 32) * (.555555)
			  WRITE (*,*) temp, "C"
			  case(6)
		  ! Celsius to Fahrenheit
			  WRITE(*,*) "Please enter the temperature in Celsius: "
			  READ(*,*) temp
			  temp = (temp * 1.8) + 32
			  WRITE(*,*) temp, "F"  
		      end select
		  end do
		  end
