# **Ball on Plate Group-4**
---
## **I.** *Introduction*
The ball and plate is a system with two degrees of freedom that must recognize the motion of the ball and adjust its orientation to ensure that the ball stays in the middle of the plate. This is done by using two servo motors attached to the bottom of the plate to control the x-y-z position of the ball. The position of the ball is measured by an overhead vision sensor that tracks the position of the ball in real time and provides live video feedback. A mathematical model of the ball and plate system and a model of the PD system was integrated into Matlab/Simulink to run Coppelia Sim and demonstrate a simulation of the entire system. The PD controller measures the error in the system and considers the position and velocity of the ball.

## **II.** *Modeling*
The system shown in Figure 1 has two servo motors that control the x-y-z motion of the
plate. The angle of the plate affects the movement of the ball. The mathematical model was derived based on this system. For the ball to stay on the plate, the force of gravity must be equal to the force of the ball’s momentum.

## **III.** *Sensor Calibration*
This system relies on an overhead camera to convert the physical location of the ball into a set of coordinates. Starting with the dimensions of the plate, there is a coordinate system to build a boundary for the ball and a coordinate system to locate the exact point of the ball on the plate. Those coordinates are sent to Simulink where servo adjustments are made to center the ball. The calibration system establishes the plate as a plane with a coordinate system, allowing for data to be extracted. Adjustments were made to the calibration code provided to link Matlab and Coppelia. 

## **IV.** *Controller Design and Simulations*

## **V.** *Conclusion*
After performing the design project, we not only learned the basics of balancing a ball on the  plate, but we learned how to build the  systems from the ground up using controlled system algorithms we obtained throughout the semester.  The ball and the plate project      began with the free body diagram shown in figure1. After we understand the logic of how the mechanical system works, we can then        convert that into mathematical equations that can be implemented into softwares like matlab and coppelia. Matlab simplified our work    by performing the calculations for us so we did not have to solve it by ourselves which would increase our chances of error. After      completing the matlab portion of the project we can then implement it with coppelia and run the simulation.

## **VI.** *Appendix*
**Appendix A: MATLAB Code**

## **VII.** *References*
- [1] Hernández-Guzmán, Victor Manuel, and Ramón Silva-Ortigoza. Automatic control with
experiments. Cham, Switzerland: Springer, 2019.
- [2] Nise, Norman S. Control Systems Engineering. Hoboken, NJ: Wiley. 2011.
Quanser. Two DOF Ball Balancer. Quanser Incorporated. 2013
