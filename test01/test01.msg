1

   Abaqus 2020                                  Date 04-Aug-2025   Time 09:10:00
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


 AVERAGE FORCE                      6.491E-04   TIME AVG. FORCE       6.491E-04
 LARGEST RESIDUAL FORCE            -8.275E-04   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.        0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.950E-06   TIME AVG. MOMENT      1.950E-06
 LARGEST RESIDUAL MOMENT           -4.662E-07   AT NODE         20   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.896E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     5.896E-02   AT NODE         26   DOF  6
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


 AVERAGE FORCE                      3.425E-07   TIME AVG. FORCE       3.425E-07
 LARGEST RESIDUAL FORCE             5.589E-07   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -1.316E-02   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.951E-06   TIME AVG. MOMENT      1.951E-06
 LARGEST RESIDUAL MOMENT            7.851E-10   AT NODE         25   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.903E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     6.832E-05   AT NODE         26   DOF  6
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


 AVERAGE FORCE                      1.567E-07   TIME AVG. FORCE       1.567E-07
 LARGEST RESIDUAL FORCE             2.781E-09   AT NODE          2   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -2.008E-04   AT NODE         12   DOF  2
   INSTANCE: WHISKER-1                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.951E-06   TIME AVG. MOMENT      1.951E-06
 LARGEST RESIDUAL MOMENT           -7.391E-13   AT NODE         23   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.897E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -6.541E-05   AT NODE         26   DOF  6
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

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      1.562E-07   TIME AVG. FORCE       1.562E-07
 LARGEST RESIDUAL FORCE             4.072E-14   AT NODE          7   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.        1.430E-06   AT NODE         16   DOF  2
   INSTANCE: WHISKER-1                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.951E-06   TIME AVG. MOMENT      1.951E-06
 LARGEST RESIDUAL MOMENT            2.288E-15   AT NODE          2   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.897E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -2.623E-07   AT NODE         23   DOF  6
   INSTANCE: WHISKER-1                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

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


 AVERAGE FORCE                      1.558E-06   TIME AVG. FORCE       8.571E-07
 LARGEST RESIDUAL FORCE             2.207E-06   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -2.641E-02   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.172E-05   TIME AVG. MOMENT      6.834E-06
 LARGEST RESIDUAL MOMENT            5.277E-09   AT NODE         21   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.906E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     9.735E-05   AT NODE         25   DOF  6
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


 AVERAGE FORCE                      4.711E-07   TIME AVG. FORCE       3.136E-07
 LARGEST RESIDUAL FORCE            -1.061E-09   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.        3.104E-04   AT NODE         18   DOF  2
   INSTANCE: WHISKER-1                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.196E-05   TIME AVG. MOMENT      6.954E-06
 LARGEST RESIDUAL MOMENT           -4.842E-12   AT NODE         25   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.898E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -8.219E-05   AT NODE         26   DOF  6
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
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.712E-06   TIME AVG. FORCE       7.799E-07
 LARGEST RESIDUAL FORCE             2.188E-06   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -2.657E-02   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.760E-05   TIME AVG. MOMENT      1.050E-05
 LARGEST RESIDUAL MOMENT            8.734E-09   AT NODE         20   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.914E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     1.626E-04   AT NODE         24   DOF  6
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


 AVERAGE FORCE                      7.106E-07   TIME AVG. FORCE       4.460E-07
 LARGEST RESIDUAL FORCE            -1.898E-09   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.        4.109E-04   AT NODE         18   DOF  2
   INSTANCE: WHISKER-1                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.796E-05   TIME AVG. MOMENT      1.062E-05
 LARGEST RESIDUAL MOMENT           -7.341E-12   AT NODE         25   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.902E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -1.205E-04   AT NODE         26   DOF  6
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


 AVERAGE FORCE                      1.901E-06   TIME AVG. FORCE       8.098E-07
 LARGEST RESIDUAL FORCE             2.170E-06   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -2.682E-02   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.351E-05   TIME AVG. MOMENT      1.384E-05
 LARGEST RESIDUAL MOMENT            1.226E-08   AT NODE         20   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.923E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     2.227E-04   AT NODE         24   DOF  6
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


 AVERAGE FORCE                      9.550E-07   TIME AVG. FORCE       5.732E-07
 LARGEST RESIDUAL FORCE            -2.981E-09   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.        5.114E-04   AT NODE         18   DOF  2
   INSTANCE: WHISKER-1                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.399E-05   TIME AVG. MOMENT      1.396E-05
 LARGEST RESIDUAL MOMENT           -9.862E-12   AT NODE         25   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.907E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -1.589E-04   AT NODE         26   DOF  6
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


 AVERAGE FORCE                      1.323E-06   TIME AVG. FORCE       6.652E-07
 LARGEST RESIDUAL FORCE            -7.495E-12   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -2.231E-05   AT NODE         19   DOF  2
   INSTANCE: WHISKER-1                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.399E-05   TIME AVG. MOMENT      1.396E-05
 LARGEST RESIDUAL MOMENT            3.303E-14   AT NODE         25   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.908E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     5.570E-06   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.400    
 STEP TIME COMPLETED       0.400    ,  TOTAL TIME COMPLETED        0.400    


  INCREMENT     5 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =       156     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  3.07E+04

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.095E-06   TIME AVG. FORCE       9.511E-07
 LARGEST RESIDUAL FORCE             2.152E-06   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -2.717E-02   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.946E-05   TIME AVG. MOMENT      1.706E-05
 LARGEST RESIDUAL MOMENT            1.596E-08   AT NODE         19   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.933E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     2.779E-04   AT NODE         23   DOF  6
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


 AVERAGE FORCE                      1.206E-06   TIME AVG. FORCE       7.734E-07
 LARGEST RESIDUAL FORCE            -4.322E-09   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.        6.118E-04   AT NODE         18   DOF  2
   INSTANCE: WHISKER-1                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.006E-05   TIME AVG. MOMENT      1.718E-05
 LARGEST RESIDUAL MOMENT           -1.242E-11   AT NODE         25   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.913E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -1.973E-04   AT NODE         26   DOF  6
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


 AVERAGE FORCE                      1.625E-06   TIME AVG. FORCE       8.572E-07
 LARGEST RESIDUAL FORCE            -1.096E-11   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -2.677E-05   AT NODE         19   DOF  2
   INSTANCE: WHISKER-1                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.006E-05   TIME AVG. MOMENT      1.718E-05
 LARGEST RESIDUAL MOMENT            6.304E-14   AT NODE         25   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.914E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     6.816E-06   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

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


 AVERAGE FORCE                      2.296E-06   TIME AVG. FORCE       1.097E-06
 LARGEST RESIDUAL FORCE             2.129E-06   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -2.764E-02   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.546E-05   TIME AVG. MOMENT      2.023E-05
 LARGEST RESIDUAL MOMENT            1.994E-08   AT NODE         19   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.945E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     3.458E-04   AT NODE         23   DOF  6
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


 AVERAGE FORCE                      1.466E-06   TIME AVG. FORCE       9.586E-07
 LARGEST RESIDUAL FORCE            -5.942E-09   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.        7.126E-04   AT NODE         18   DOF  2
   INSTANCE: WHISKER-1                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.619E-05   TIME AVG. MOMENT      2.035E-05
 LARGEST RESIDUAL MOMENT           -1.500E-11   AT NODE         25   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.922E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -2.358E-04   AT NODE         26   DOF  6
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


 AVERAGE FORCE                      1.873E-06   TIME AVG. FORCE       1.026E-06
 LARGEST RESIDUAL FORCE            -1.515E-11   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -3.126E-05   AT NODE         19   DOF  2
   INSTANCE: WHISKER-1                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.619E-05   TIME AVG. MOMENT      2.035E-05
 LARGEST RESIDUAL MOMENT            1.071E-13   AT NODE         25   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.923E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     8.067E-06   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

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


 AVERAGE FORCE                      2.506E-06   TIME AVG. FORCE       1.238E-06
 LARGEST RESIDUAL FORCE             2.106E-06   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -2.822E-02   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.152E-05   TIME AVG. MOMENT      2.338E-05
 LARGEST RESIDUAL MOMENT            2.418E-08   AT NODE         19   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.959E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     4.141E-04   AT NODE         22   DOF  6
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


 AVERAGE FORCE                      1.736E-06   TIME AVG. FORCE       1.128E-06
 LARGEST RESIDUAL FORCE            -7.857E-09   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.        8.133E-04   AT NODE         18   DOF  2
   INSTANCE: WHISKER-1                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.237E-05   TIME AVG. MOMENT      2.350E-05
 LARGEST RESIDUAL MOMENT           -1.762E-11   AT NODE         25   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.931E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -2.744E-04   AT NODE         26   DOF  6
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


 AVERAGE FORCE                      2.161E-06   TIME AVG. FORCE       1.189E-06
 LARGEST RESIDUAL FORCE            -2.018E-11   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -3.578E-05   AT NODE         19   DOF  2
   INSTANCE: WHISKER-1                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     4.237E-05   TIME AVG. MOMENT      2.350E-05
 LARGEST RESIDUAL MOMENT            1.676E-13   AT NODE         25   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.932E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     9.329E-06   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

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


 AVERAGE FORCE                      2.729E-06   TIME AVG. FORCE       1.381E-06
 LARGEST RESIDUAL FORCE             2.080E-06   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -2.892E-02   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.766E-05   TIME AVG. MOMENT      2.652E-05
 LARGEST RESIDUAL MOMENT            2.877E-08   AT NODE         19   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.973E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     4.854E-04   AT NODE         21   DOF  6
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


 AVERAGE FORCE                      2.019E-06   TIME AVG. FORCE       1.292E-06
 LARGEST RESIDUAL FORCE            -1.009E-08   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.        9.139E-04   AT NODE         18   DOF  2
   INSTANCE: WHISKER-1                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.863E-05   TIME AVG. MOMENT      2.664E-05
 LARGEST RESIDUAL MOMENT           -2.029E-11   AT NODE         25   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.942E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -3.130E-04   AT NODE         26   DOF  6
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


 AVERAGE FORCE                      2.512E-06   TIME AVG. FORCE       1.354E-06
 LARGEST RESIDUAL FORCE            -2.609E-11   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -4.034E-05   AT NODE         19   DOF  2
   INSTANCE: WHISKER-1                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     4.863E-05   TIME AVG. MOMENT      2.664E-05
 LARGEST RESIDUAL MOMENT            2.468E-13   AT NODE         25   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.943E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     1.060E-05   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

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


 AVERAGE FORCE                      2.968E-06   TIME AVG. FORCE       1.533E-06
 LARGEST RESIDUAL FORCE             2.052E-06   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -2.975E-02   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.388E-05   TIME AVG. MOMENT      2.967E-05
 LARGEST RESIDUAL MOMENT            3.388E-08   AT NODE         18   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.988E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     5.620E-04   AT NODE         21   DOF  6
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


 AVERAGE FORCE                      2.317E-06   TIME AVG. FORCE       1.461E-06
 LARGEST RESIDUAL FORCE            -1.265E-08   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.        1.014E-03   AT NODE         18   DOF  2
   INSTANCE: WHISKER-1                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.498E-05   TIME AVG. MOMENT      2.979E-05
 LARGEST RESIDUAL MOMENT           -2.300E-11   AT NODE         25   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.953E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -3.516E-04   AT NODE         26   DOF  6
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


 AVERAGE FORCE                      2.882E-06   TIME AVG. FORCE       1.524E-06
 LARGEST RESIDUAL FORCE            -3.295E-11   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -4.490E-05   AT NODE         19   DOF  2
   INSTANCE: WHISKER-1                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     5.498E-05   TIME AVG. MOMENT      2.979E-05
 LARGEST RESIDUAL MOMENT            3.467E-13   AT NODE         25   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.954E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     1.187E-05   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

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


 AVERAGE FORCE                      3.231E-06   TIME AVG. FORCE       1.695E-06
 LARGEST RESIDUAL FORCE             2.021E-06   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -3.074E-02   AT NODE         26   DOF  1
   INSTANCE: WHISKER-1                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.019E-05   TIME AVG. MOMENT      3.283E-05
 LARGEST RESIDUAL MOMENT            3.965E-08   AT NODE         18   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      6.003E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     6.446E-04   AT NODE         20   DOF  6
   INSTANCE: WHISKER-1                                                                       
 ESTIMATE OF ROTATION CORRECTION   -1.548E-05
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


 AVERAGE FORCE                      2.634E-06   TIME AVG. FORCE       1.635E-06
 LARGEST RESIDUAL FORCE            -1.555E-08   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.        1.114E-03   AT NODE         18   DOF  2
   INSTANCE: WHISKER-1                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.142E-05   TIME AVG. MOMENT      3.295E-05
 LARGEST RESIDUAL MOMENT           -2.574E-11   AT NODE         25   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.964E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION    -3.900E-04   AT NODE         26   DOF  6
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


 AVERAGE FORCE                      3.195E-06   TIME AVG. FORCE       1.691E-06
 LARGEST RESIDUAL FORCE            -4.079E-11   AT NODE         25   DOF  1
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF DISP.         0.700       AT NODE         26   DOF  2
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO DISP.       -4.944E-05   AT NODE         19   DOF  2
   INSTANCE: WHISKER-1                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     6.142E-05   TIME AVG. MOMENT      3.295E-05
 LARGEST RESIDUAL MOMENT            4.685E-13   AT NODE         25   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST INCREMENT OF ROTATION      5.966E-02   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
 LARGEST CORRECTION TO ROTATION     1.314E-05   AT NODE         26   DOF  6
   INSTANCE: WHISKER-1                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED   1.00    
 STEP TIME COMPLETED        1.00    ,  TOTAL TIME COMPLETED         1.00    


          THE ANALYSIS HAS BEEN COMPLETED



     ANALYSIS SUMMARY:
     TOTAL OF         10  INCREMENTS
                       0  CUTBACKS IN AUTOMATIC INCREMENTATION
                      29  ITERATIONS INCLUDING CONTACT ITERATIONS IF PRESENT
                      29  PASSES THROUGH THE EQUATION SOLVER OF WHICH 
                      29  INVOLVE MATRIX DECOMPOSITION, INCLUDING
                       0  DECOMPOSITION(S) OF THE MASS MATRIX
                       1  REORDERING OF EQUATIONS TO MINIMIZE WAVEFRONT
                       0  ADDITIONAL RESIDUAL EVALUATIONS FOR LINE SEARCHES
                       0  ADDITIONAL OPERATOR EVALUATIONS FOR LINE SEARCHES
                       0  WARNING MESSAGES DURING USER INPUT PROCESSING
                       0  WARNING MESSAGES DURING ANALYSIS
                       0  ANALYSIS WARNINGS ARE NUMERICAL PROBLEM MESSAGES
                       0  ANALYSIS WARNINGS ARE NEGATIVE EIGENVALUE MESSAGES
                       0  ERROR MESSAGES



     JOB TIME SUMMARY
       USER TIME (SEC)      =  0.30000    
       SYSTEM TIME (SEC)    =  0.10000    
       TOTAL CPU TIME (SEC) =  0.40000    
       WALLCLOCK TIME (SEC) =          0
