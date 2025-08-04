1

   Abaqus 2020                                  Date 04-Aug-2025   Time 09:22:09
   For use by MAX PLANCK under license from Dassault Systemes or its subsidiary.

                                                                                 
                                                                                 
 STEP    1     INCREMENT     1     STEP TIME    0.00    


                        S T E P       1     S T A T I C   A N A L Y S I S


                                                                                          

     AUTOMATIC TIME CONTROL WITH -
          A SUGGESTED INITIAL TIME INCREMENT OF                0.100    
          AND A TOTAL TIME PERIOD OF                            1.00    
          THE MINIMUM TIME INCREMENT ALLOWED IS                1.000E-05
          THE MAXIMUM TIME INCREMENT ALLOWED IS                0.100    

     LINEAR EQUATION SOLVER TYPE         DIRECT SPARSE

 CONVERGENCE TOLERANCE PARAMETERS FOR FORCE    
     CRITERION FOR RESIDUAL FORCE     FOR A NONLINEAR PROBLEM          5.000E-03
     CRITERION FOR DISP.    CORRECTION IN A NONLINEAR PROBLEM          1.000E-02
     INITIAL VALUE OF TIME AVERAGE FORCE                               1.000E-02
     AVERAGE FORCE     IS TIME AVERAGE FORCE    
     ALTERNATE CRIT. FOR RESIDUAL FORCE     FOR A NONLINEAR PROBLEM    2.000E-02
     CRITERION FOR ZERO FORCE     RELATIVE TO TIME AVRG. FORCE         1.000E-05
     CRITERION FOR RESIDUAL FORCE     WHEN THERE IS ZERO FLUX          1.000E-05
     CRITERION FOR DISP.    CORRECTION WHEN THERE IS ZERO FLUX         1.000E-03
     CRITERION FOR RESIDUAL FORCE     FOR A LINEAR INCREMENT           1.000E-08
     FIELD CONVERSION RATIO                                             1.00    
     CRITERION FOR ZERO FORCE     REL. TO TIME AVRG. MAX. FORCE        1.000E-05
     CRITERION FOR ZERO DISP.    RELATIVE TO CHARACTERISTIC LENGTH     1.000E-08

 CONVERGENCE TOLERANCE PARAMETERS FOR MOMENT   
     CRITERION FOR RESIDUAL MOMENT    FOR A NONLINEAR PROBLEM          5.000E-03
     CRITERION FOR ROTATION CORRECTION IN A NONLINEAR PROBLEM          1.000E-02
     INITIAL VALUE OF TIME AVERAGE MOMENT                              1.000E-02
     AVERAGE MOMENT    IS TIME AVERAGE MOMENT   
     ALTERNATE CRIT. FOR RESIDUAL MOMENT    FOR A NONLINEAR PROBLEM    2.000E-02
     CRITERION FOR ZERO MOMENT    RELATIVE TO TIME AVRG. MOMENT        1.000E-05
     CRITERION FOR RESIDUAL MOMENT    WHEN THERE IS ZERO FLUX          1.000E-05
     CRITERION FOR ROTATION CORRECTION WHEN THERE IS ZERO FLUX         1.000E-03
     CRITERION FOR RESIDUAL MOMENT    FOR A LINEAR INCREMENT           1.000E-08
     FIELD CONVERSION RATIO                                             1.00    
     CRITERION FOR ZERO MOMENT    REL. TO TIME AVRG. MAX. MOMENT       1.000E-05

     VOLUMETRIC STRAIN COMPATIBILITY TOLERANCE FOR HYBRID SOLIDS       1.000E-05
     AXIAL STRAIN COMPATIBILITY TOLERANCE FOR HYBRID BEAMS             1.000E-05
     TRANS. SHEAR STRAIN COMPATIBILITY TOLERANCE FOR HYBRID BEAMS      1.000E-05
     SOFT CONTACT CONSTRAINT COMPATIBILITY TOLERANCE FOR P>P0          5.000E-03
     SOFT CONTACT CONSTRAINT COMPATIBILITY TOLERANCE FOR P=0.0         0.100    
     CONTACT FORCE ERROR TOLERANCE FOR CONVERT SDI=YES                 1.00    
     DISPLACEMENT COMPATIBILITY TOLERANCE FOR DCOUP ELEMENTS           1.000E-05
     ROTATION COMPATIBILITY TOLERANCE FOR DCOUP ELEMENTS               1.000E-05

 EQUILIBRIUM WILL BE CHECKED FOR SEVERE DISCONTINUITY ITERATIONS

 TIME INCREMENTATION CONTROL PARAMETERS:
     FIRST EQUILIBRIUM ITERATION FOR CONSECUTIVE DIVERGENCE CHECK              4
     EQUILIBRIUM ITERATION AT WHICH LOG. CONVERGENCE RATE CHECK BEGINS         8
     EQUILIBRIUM ITERATION AFTER WHICH ALTERNATE RESIDUAL IS USED              9
     MAXIMUM EQUILIBRIUM ITERATIONS ALLOWED                                   16
     EQUILIBRIUM ITERATION COUNT FOR CUT-BACK IN NEXT INCREMENT               10
     MAXIMUM EQUILIB. ITERS IN TWO INCREMENTS FOR TIME INCREMENT INCREASE      4
     MAXIMUM ITERATIONS FOR SEVERE DISCONTINUITIES                            50
     MAXIMUM ATTEMPTS ALLOWED IN AN INCREMENT                                  5
     MAXIMUM DISCON. ITERS IN TWO INCREMENTS FOR TIME INCREMENT INCREASE      50
     MAXIMUM CONTACT AUGMENTATIONS FOR *SURFACE BEHAVIOR,AUGMENTED LAGRANGE   50
     CUT-BACK FACTOR AFTER DIVERGENCE                                 0.2500    
     CUT-BACK FACTOR FOR TOO SLOW CONVERGENCE                         0.5000    
     CUT-BACK FACTOR AFTER TOO MANY EQUILIBRIUM ITERATIONS            0.7500    
     CUT-BACK FACTOR AFTER TOO MANY SEVERE DISCONTINUITY ITERATIONS   0.2500    
     CUT-BACK FACTOR AFTER PROBLEMS IN ELEMENT ASSEMBLY               0.2500    
     INCREASE FACTOR AFTER TWO INCREMENTS THAT CONVERGE QUICKLY        1.500    
     MAX. TIME INCREMENT INCREASE FACTOR ALLOWED                       1.500    
     MAX. TIME INCREMENT INCREASE FACTOR ALLOWED (DYNAMICS)            1.250    
     MAX. TIME INCREMENT INCREASE FACTOR ALLOWED (DIFFUSION)           2.000    
     MINIMUM TIME INCREMENT RATIO FOR EXTRAPOLATION TO OCCUR          0.1000    
     MAX. RATIO OF TIME INCREMENT TO STABILITY LIMIT                   1.000    
     FRACTION OF STABILITY LIMIT FOR NEW TIME INCREMENT               0.9500    
     TIME INCREMENT INCREASE FACTOR BEFORE A TIME POINT                1.000    
     GLOBAL STABILIZATION CONTROL IS NOT USED

          PRINT OF INCREMENT NUMBER, TIME, ETC., EVERY    1  INCREMENTS

     THE MAXIMUM NUMBER OF INCREMENTS IN THIS STEP IS                     100

          LARGE DISPLACEMENT THEORY WILL BE USED

     LINEAR EXTRAPOLATION WILL BE USED

     CHARACTERISTIC ELEMENT LENGTH      1.00    

     DETAILS REGARDING ACTUAL SOLUTION WAVEFRONT REQUESTED

     DETAILED OUTPUT OF DIAGNOSTICS TO DATABASE REQUESTED

     PRINT OF INCREMENT NUMBER, TIME, ETC., TO THE MESSAGE FILE EVERY     1  INCREMENTS

     FILE OUTPUT WILL BE WRITTEN IN CARD IMAGE FORMAT

     COLLECTING MODEL CONSTRAINT INFORMATION FOR OVERCONSTRAINT CHECKS

     COLLECTING STEP CONSTRAINT INFORMATION FOR OVERCONSTRAINT CHECKS


  INCREMENT     1 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.651E-05   TIME AVG. FORCE       5.651E-05
 LARGEST RESIDUAL FORCE            -1.950E-04   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.252       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.        0.252       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.754E-07   TIME AVG. MOMENT      6.754E-07
 LARGEST RESIDUAL MOMENT           -3.476E-08   AT NODE         25   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.075E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     7.075E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      4.894E-09   TIME AVG. FORCE       1.000E-02
 LARGEST RESIDUAL FORCE             1.288E-07   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.252       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -2.799E-03   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
          THE FORCE     IS ZERO EVERYWHERE BUT THE FORCE     RESIDUAL OR
          THE DISP.    CORRECTION IS NON-ZERO

 AVERAGE MOMENT                     6.754E-07   TIME AVG. MOMENT      6.754E-07
 LARGEST RESIDUAL MOMENT           -2.661E-09   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.074E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -1.930E-05   AT NODE         25   DOF  6
   INSTANCE: WHISKER-1                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      2.392E-12   TIME AVG. FORCE       1.000E-02
 LARGEST RESIDUAL FORCE             3.991E-11   AT NODE         24   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.252       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.        5.603E-05   AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
          THERE IS ZERO FORCE     EVERYWHERE
 

 ***WARNING: THERE IS ZERO FORCE EVERYWHERE IN THE MODEL BASED ON THE DEFAULT 
             CRITERION. PLEASE CHECK THE VALUE OF THE AVERAGE FORCE DURING THE 
             CURRENT ITERATION TO VERIFY THAT THE FORCE IS SMALL ENOUGH TO BE 
             TREATED AS ZERO. IF NOT, PLEASE USE THE SOLUTION CONTROLS TO RESET 
             THE CRITERION FOR ZERO FORCE.

 AVERAGE MOMENT                     6.755E-07   TIME AVG. MOMENT      6.755E-07
 LARGEST RESIDUAL MOMENT            1.747E-12   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.075E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     1.937E-05   AT NODE         25   DOF  6
   INSTANCE: WHISKER-1                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.100    
 STEP TIME COMPLETED       0.100    ,  TOTAL TIME COMPLETED        0.100    


  INCREMENT     2 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.998E-08   TIME AVG. FORCE       1.000E-02
 LARGEST RESIDUAL FORCE             5.080E-07   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.252       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -5.617E-03   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
          THE FORCE     IS ZERO EVERYWHERE BUT THE FORCE     RESIDUAL OR
          THE DISP.    CORRECTION IS NON-ZERO

 AVERAGE MOMENT                     4.001E-06   TIME AVG. MOMENT      2.338E-06
 LARGEST RESIDUAL MOMENT           -1.046E-08   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.099E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     2.353E-04   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.974E-11   TIME AVG. FORCE       1.000E-02
 LARGEST RESIDUAL FORCE            -1.336E-09   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.252       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -2.259E-04   AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
          THERE IS ZERO FORCE     EVERYWHERE
 

 ***WARNING: THERE IS ZERO FORCE EVERYWHERE IN THE MODEL BASED ON THE DEFAULT 
             CRITERION. PLEASE CHECK THE VALUE OF THE AVERAGE FORCE DURING THE 
             CURRENT ITERATION TO VERIFY THAT THE FORCE IS SMALL ENOUGH TO BE 
             TREATED AS ZERO. IF NOT, PLEASE USE THE SOLUTION CONTROLS TO RESET 
             THE CRITERION FOR ZERO FORCE.

 AVERAGE MOMENT                     4.000E-06   TIME AVG. MOMENT      2.338E-06
 LARGEST RESIDUAL MOMENT            1.406E-11   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.075E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -2.376E-04   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.200    
 STEP TIME COMPLETED       0.200    ,  TOTAL TIME COMPLETED        0.200    


  INCREMENT     3 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.044E-08   TIME AVG. FORCE       1.000E-02
 LARGEST RESIDUAL FORCE             5.017E-07   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.252       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -5.624E-03   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
          THE FORCE     IS ZERO EVERYWHERE BUT THE FORCE     RESIDUAL OR
          THE DISP.    CORRECTION IS NON-ZERO

 AVERAGE MOMENT                     6.002E-06   TIME AVG. MOMENT      3.559E-06
 LARGEST RESIDUAL MOMENT           -1.569E-08   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.110E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     3.529E-04   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      6.060E-11   TIME AVG. FORCE       1.000E-02
 LARGEST RESIDUAL FORCE            -2.863E-09   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.251       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -3.099E-04   AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
          THERE IS ZERO FORCE     EVERYWHERE
 

 ***WARNING: THERE IS ZERO FORCE EVERYWHERE IN THE MODEL BASED ON THE DEFAULT 
             CRITERION. PLEASE CHECK THE VALUE OF THE AVERAGE FORCE DURING THE 
             CURRENT ITERATION TO VERIFY THAT THE FORCE IS SMALL ENOUGH TO BE 
             TREATED AS ZERO. IF NOT, PLEASE USE THE SOLUTION CONTROLS TO RESET 
             THE CRITERION FOR ZERO FORCE.

 AVERAGE MOMENT                     6.000E-06   TIME AVG. MOMENT      3.558E-06
 LARGEST RESIDUAL MOMENT            2.103E-11   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.075E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -3.517E-04   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.300    
 STEP TIME COMPLETED       0.300    ,  TOTAL TIME COMPLETED        0.300    


  INCREMENT     4 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.088E-08   TIME AVG. FORCE       1.000E-02
 LARGEST RESIDUAL FORCE             4.939E-07   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.251       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -5.630E-03   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
          THE FORCE     IS ZERO EVERYWHERE BUT THE FORCE     RESIDUAL OR
          THE DISP.    CORRECTION IS NON-ZERO

 AVERAGE MOMENT                     8.002E-06   TIME AVG. MOMENT      4.669E-06
 LARGEST RESIDUAL MOMENT           -2.093E-08   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.122E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     4.658E-04   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.043E-10   TIME AVG. FORCE       1.000E-02
 LARGEST RESIDUAL FORCE            -4.934E-09   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.251       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -3.921E-04   AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
          THERE IS ZERO FORCE     EVERYWHERE
 

 ***WARNING: THERE IS ZERO FORCE EVERYWHERE IN THE MODEL BASED ON THE DEFAULT 
             CRITERION. PLEASE CHECK THE VALUE OF THE AVERAGE FORCE DURING THE 
             CURRENT ITERATION TO VERIFY THAT THE FORCE IS SMALL ENOUGH TO BE 
             TREATED AS ZERO. IF NOT, PLEASE USE THE SOLUTION CONTROLS TO RESET 
             THE CRITERION FOR ZERO FORCE.

 AVERAGE MOMENT                     8.000E-06   TIME AVG. MOMENT      4.669E-06
 LARGEST RESIDUAL MOMENT            2.797E-11   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.075E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -4.657E-04   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.400    
 STEP TIME COMPLETED       0.400    ,  TOTAL TIME COMPLETED        0.400    


  INCREMENT     5 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.127E-08   TIME AVG. FORCE       1.000E-02
 LARGEST RESIDUAL FORCE             4.842E-07   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.250       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -5.636E-03   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
          THE FORCE     IS ZERO EVERYWHERE BUT THE FORCE     RESIDUAL OR
          THE DISP.    CORRECTION IS NON-ZERO

 AVERAGE MOMENT                     1.000E-05   TIME AVG. MOMENT      5.736E-06
 LARGEST RESIDUAL MOMENT           -2.616E-08   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.133E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     5.798E-04   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.617E-10   TIME AVG. FORCE       1.000E-02
 LARGEST RESIDUAL FORCE            -7.517E-09   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.250       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -4.720E-04   AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
          THERE IS ZERO FORCE     EVERYWHERE
 

 ***WARNING: THERE IS ZERO FORCE EVERYWHERE IN THE MODEL BASED ON THE DEFAULT 
             CRITERION. PLEASE CHECK THE VALUE OF THE AVERAGE FORCE DURING THE 
             CURRENT ITERATION TO VERIFY THAT THE FORCE IS SMALL ENOUGH TO BE 
             TREATED AS ZERO. IF NOT, PLEASE USE THE SOLUTION CONTROLS TO RESET 
             THE CRITERION FOR ZERO FORCE.

 AVERAGE MOMENT                     1.000E-05   TIME AVG. MOMENT      5.735E-06
 LARGEST RESIDUAL MOMENT            3.487E-11   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.075E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -5.798E-04   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.500    
 STEP TIME COMPLETED       0.500    ,  TOTAL TIME COMPLETED        0.500    


  INCREMENT     6 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.162E-08   TIME AVG. FORCE       1.000E-02
 LARGEST RESIDUAL FORCE             4.727E-07   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.250       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -5.640E-03   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
          THE FORCE     IS ZERO EVERYWHERE BUT THE FORCE     RESIDUAL OR
          THE DISP.    CORRECTION IS NON-ZERO

 AVERAGE MOMENT                     1.200E-05   TIME AVG. MOMENT      6.780E-06
 LARGEST RESIDUAL MOMENT           -3.139E-08   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.145E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     6.938E-04   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.334E-10   TIME AVG. FORCE       1.000E-02
 LARGEST RESIDUAL FORCE            -1.057E-08   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.249       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -5.491E-04   AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
          THERE IS ZERO FORCE     EVERYWHERE
 

 ***WARNING: THERE IS ZERO FORCE EVERYWHERE IN THE MODEL BASED ON THE DEFAULT 
             CRITERION. PLEASE CHECK THE VALUE OF THE AVERAGE FORCE DURING THE 
             CURRENT ITERATION TO VERIFY THAT THE FORCE IS SMALL ENOUGH TO BE 
             TREATED AS ZERO. IF NOT, PLEASE USE THE SOLUTION CONTROLS TO RESET 
             THE CRITERION FOR ZERO FORCE.

 AVERAGE MOMENT                     1.200E-05   TIME AVG. MOMENT      6.779E-06
 LARGEST RESIDUAL MOMENT            4.174E-11   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.075E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -6.937E-04   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.600    
 STEP TIME COMPLETED       0.600    ,  TOTAL TIME COMPLETED        0.600    


  INCREMENT     7 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.192E-08   TIME AVG. FORCE       1.000E-02
 LARGEST RESIDUAL FORCE             4.596E-07   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.248       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -5.643E-03   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
          THE FORCE     IS ZERO EVERYWHERE BUT THE FORCE     RESIDUAL OR
          THE DISP.    CORRECTION IS NON-ZERO

 AVERAGE MOMENT                     1.400E-05   TIME AVG. MOMENT      7.811E-06
 LARGEST RESIDUAL MOMENT           -3.663E-08   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.156E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     8.077E-04   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 ESTIMATE OF ROTATION CORRECTION    2.381E-04
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      3.196E-10   TIME AVG. FORCE       1.000E-02
 LARGEST RESIDUAL FORCE            -1.403E-08   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.248       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -6.228E-04   AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
          THERE IS ZERO FORCE     EVERYWHERE
 

 ***WARNING: THERE IS ZERO FORCE EVERYWHERE IN THE MODEL BASED ON THE DEFAULT 
             CRITERION. PLEASE CHECK THE VALUE OF THE AVERAGE FORCE DURING THE 
             CURRENT ITERATION TO VERIFY THAT THE FORCE IS SMALL ENOUGH TO BE 
             TREATED AS ZERO. IF NOT, PLEASE USE THE SOLUTION CONTROLS TO RESET 
             THE CRITERION FOR ZERO FORCE.

 AVERAGE MOMENT                     1.400E-05   TIME AVG. MOMENT      7.811E-06
 LARGEST RESIDUAL MOMENT            4.857E-11   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.075E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -8.077E-04   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 ESTIMATE OF ROTATION CORRECTION    1.071E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.700    
 STEP TIME COMPLETED       0.700    ,  TOTAL TIME COMPLETED        0.700    


  INCREMENT     8 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.218E-08   TIME AVG. FORCE       1.000E-02
 LARGEST RESIDUAL FORCE             4.449E-07   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.247       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -5.644E-03   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
          THE FORCE     IS ZERO EVERYWHERE BUT THE FORCE     RESIDUAL OR
          THE DISP.    CORRECTION IS NON-ZERO

 AVERAGE MOMENT                     1.600E-05   TIME AVG. MOMENT      8.835E-06
 LARGEST RESIDUAL MOMENT           -4.186E-08   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.167E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     9.216E-04   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 ESTIMATE OF ROTATION CORRECTION    3.016E-04
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      4.206E-10   TIME AVG. FORCE       1.000E-02
 LARGEST RESIDUAL FORCE            -1.786E-08   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.247       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -6.927E-04   AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
          THERE IS ZERO FORCE     EVERYWHERE
 

 ***WARNING: THERE IS ZERO FORCE EVERYWHERE IN THE MODEL BASED ON THE DEFAULT 
             CRITERION. PLEASE CHECK THE VALUE OF THE AVERAGE FORCE DURING THE 
             CURRENT ITERATION TO VERIFY THAT THE FORCE IS SMALL ENOUGH TO BE 
             TREATED AS ZERO. IF NOT, PLEASE USE THE SOLUTION CONTROLS TO RESET 
             THE CRITERION FOR ZERO FORCE.

 AVERAGE MOMENT                     1.600E-05   TIME AVG. MOMENT      8.834E-06
 LARGEST RESIDUAL MOMENT            5.537E-11   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.075E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -9.216E-04   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 ESTIMATE OF ROTATION CORRECTION    1.219E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.800    
 STEP TIME COMPLETED       0.800    ,  TOTAL TIME COMPLETED        0.800    


  INCREMENT     9 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.240E-08   TIME AVG. FORCE       1.000E-02
 LARGEST RESIDUAL FORCE             4.288E-07   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.246       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -5.644E-03   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
          THE FORCE     IS ZERO EVERYWHERE BUT THE FORCE     RESIDUAL OR
          THE DISP.    CORRECTION IS NON-ZERO

 AVERAGE MOMENT                     1.800E-05   TIME AVG. MOMENT      9.853E-06
 LARGEST RESIDUAL MOMENT           -4.709E-08   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.179E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     1.035E-03   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 ESTIMATE OF ROTATION CORRECTION    3.706E-04
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      5.364E-10   TIME AVG. FORCE       1.000E-02
 LARGEST RESIDUAL FORCE            -2.197E-08   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.245       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -7.582E-04   AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
          THERE IS ZERO FORCE     EVERYWHERE
 

 ***WARNING: THERE IS ZERO FORCE EVERYWHERE IN THE MODEL BASED ON THE DEFAULT 
             CRITERION. PLEASE CHECK THE VALUE OF THE AVERAGE FORCE DURING THE 
             CURRENT ITERATION TO VERIFY THAT THE FORCE IS SMALL ENOUGH TO BE 
             TREATED AS ZERO. IF NOT, PLEASE USE THE SOLUTION CONTROLS TO RESET 
             THE CRITERION FOR ZERO FORCE.

 AVERAGE MOMENT                     1.800E-05   TIME AVG. MOMENT      9.853E-06
 LARGEST RESIDUAL MOMENT            6.213E-11   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.075E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -1.035E-03   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 ESTIMATE OF ROTATION CORRECTION    1.366E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.900    
 STEP TIME COMPLETED       0.900    ,  TOTAL TIME COMPLETED        0.900    


  INCREMENT    10 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.257E-08   TIME AVG. FORCE       1.000E-02
 LARGEST RESIDUAL FORCE             4.114E-07   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.244       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -5.642E-03   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
          THE FORCE     IS ZERO EVERYWHERE BUT THE FORCE     RESIDUAL OR
          THE DISP.    CORRECTION IS NON-ZERO

 AVERAGE MOMENT                     2.000E-05   TIME AVG. MOMENT      1.087E-05
 LARGEST RESIDUAL MOMENT           -5.233E-08   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.190E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     1.149E-03   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 ESTIMATE OF ROTATION CORRECTION    4.446E-04
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      6.669E-10   TIME AVG. FORCE       1.000E-02
 LARGEST RESIDUAL FORCE            -2.630E-08   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.243       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -8.189E-04   AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
          THERE IS ZERO FORCE     EVERYWHERE
 

 ***WARNING: THERE IS ZERO FORCE EVERYWHERE IN THE MODEL BASED ON THE DEFAULT 
             CRITERION. PLEASE CHECK THE VALUE OF THE AVERAGE FORCE DURING THE 
             CURRENT ITERATION TO VERIFY THAT THE FORCE IS SMALL ENOUGH TO BE 
             TREATED AS ZERO. IF NOT, PLEASE USE THE SOLUTION CONTROLS TO RESET 
             THE CRITERION FOR ZERO FORCE.

 AVERAGE MOMENT                     2.000E-05   TIME AVG. MOMENT      1.087E-05
 LARGEST RESIDUAL MOMENT            6.886E-11   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      7.075E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -1.149E-03   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 ESTIMATE OF ROTATION CORRECTION    1.512E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED   1.00    
 STEP TIME COMPLETED        1.00    ,  TOTAL TIME COMPLETED         1.00    


          THE ANALYSIS HAS BEEN COMPLETED



     ANALYSIS SUMMARY:
     TOTAL OF         10  INCREMENTS
                       0  CUTBACKS IN AUTOMATIC INCREMENTATION
                      21  ITERATIONS INCLUDING CONTACT ITERATIONS IF PRESENT
                      21  PASSES THROUGH THE EQUATION SOLVER OF WHICH 
                      21  INVOLVE MATRIX DECOMPOSITION, INCLUDING
                       0  DECOMPOSITION(S) OF THE MASS MATRIX
                       1  REORDERING OF EQUATIONS TO MINIMIZE WAVEFRONT
                       0  ADDITIONAL RESIDUAL EVALUATIONS FOR LINE SEARCHES
                       0  ADDITIONAL OPERATOR EVALUATIONS FOR LINE SEARCHES
                       0  WARNING MESSAGES DURING USER INPUT PROCESSING
                      10  WARNING MESSAGES DURING ANALYSIS
                       0  ANALYSIS WARNINGS ARE NUMERICAL PROBLEM MESSAGES
                       0  ANALYSIS WARNINGS ARE NEGATIVE EIGENVALUE MESSAGES
                       0  ERROR MESSAGES



     JOB TIME SUMMARY
       USER TIME (SEC)      =  0.30000    
       SYSTEM TIME (SEC)    =   0.0000    
       TOTAL CPU TIME (SEC) =  0.30000    
       WALLCLOCK TIME (SEC) =          1
