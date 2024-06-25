      subroutine DFLUX(FLUX, SOL, KSTEP, KINC, TIME, NOEL, NPT, COORDS,
      &                JLTYP, TEMP, PRESS, SNAME)
C
      include 'ABA_PARAM.INC'
C
      dimension FLUX(2), TIME(2), COORDS(3)
      CHARACTER*80 SNAME

      ! Extract coordinates
      X = COORDS(1)
      Y = COORDS(2)
      Z = COORDS(3)

      ! Initialize variables
      Dist = 0.0
      X_center = 0.0 + ((0.1 / 100.0)*(TIME(2)))
      Y_center = 0.0

      ! Calculate distances
      YT = Y_center - Y
      XT = X_center - X
      Dist = SQRT((YT * YT) + (XT * XT))

      ! Determine flux based on distance
      if (Dist .le. 0.01) then
          FLUX(1) = 50000.0
      else
          FLUX(1) = 0.0
      endif




      RETURN
      END