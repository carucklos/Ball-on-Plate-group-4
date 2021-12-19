# **Ball on Plate Group-4**
MECA 482 Control System Engineering Project
---
## **I.** *Introduction*
The ball and plate is a system with two degrees of freedom that must recognize the motion of the ball and adjust its orientation to ensure that the ball stays in the middle of the plate. This is done by using two servo motors attached to the bottom of the plate to control the x-y-z position of the ball. The position of the ball is measured by an overhead vision sensor that tracks the position of the ball in real time and provides live video feedback. A mathematical model of the ball and plate system and a model of the PD system was integrated into Matlab/Simulink to run Coppelia Sim and demonstrate a simulation of the entire system. The PD controller measures the error in the system and considers the position and velocity of the ball.


## **II.** *Modeling*
The system shown in Figure 1 has two servo motors that control the x-y-z motion of the
plate. The angle of the plate affects the movement of the ball. The mathematical model was derived based on this system. For the ball to stay on the plate, the force of gravity must be equal to the force of the ball’s momentum.

## **III.** *Sensor Calibration*
This system relies on an overhead camera to convert the physical location of the ball into a set of coordinates. Starting with the dimensions of the plate, there is a coordinate system to build a boundary for the ball and a coordinate system to locate the exact point of the ball on the plate. Those coordinates are sent to Simulink where servo adjustments are made to center the ball. The calibration system establishes the plate as a plane with a coordinate system, allowing for data to be extracted. Adjustments were made to the calibration code provided to link Matlab and Coppelia. 

## **IV.** *Controller Design and Simulations*
To improve the stability of the ball on plate control system a proportional derivative controller was applied to control the damping within the system’s response as well as to help predict the ball’s position and velocity. The controller accomplishes this by correlating the derivative to the response error and the system's response to the error. The function of the PD controller is in Figure 2 below. Where KP  proportional factor and KD  is the derivative factor.

## **V.** *Conclusion*
The goal of this project was to complete a simulation of a working ball and plate system. Beginning with a free body diagram and deriving the mathematical model by hand, that model was then converted into Matlab code, then into a simulink model. Matlab and Simulink were connected to Coppelia to then run the simulation of the ball and plate. Our model did not work perfectly in the simulation. Since we derived our mathematical model in state space, it was difficult to get the code to run well with Coppelia.

## **VI.** *Appendix*
**Appendix A: MATLAB Code**
```
{
 syms s K1 K2 d2 d3 T
A = [K1+K2 -K2 0; -K2 ((d2*s)+K2) -d2*s; 0 -d2*s d3*s];
B = [T; 0; 0];
X = inv(A)*B;
X2 = X(2);
pretty(simplify(X2))
TF = X2 / T;
b = [0 K2*d3];
a = [K1*K2*d3 (-K1*d2^2)-(K2*d2^2)+(K1*d2*d3)+(K2*d2*d3)];
[A,B,C,D] = tf2ss(b,a)

}
```

## **VII.** *References*
- [1] Hernández-Guzmán, Victor Manuel, and Ramón Silva-Ortigoza. Automatic control with
experiments. Cham, Switzerland: Springer, 2019.
- [2] Nise, Norman S. Control Systems Engineering. Hoboken, NJ: Wiley. 2011.
Quanser. Two DOF Ball Balancer. Quanser Incorporated. 2013
