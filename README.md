# Control Systems — MATLAB and Simulink

Three engineering laboratories connecting dynamic modelling, feedback design and sampled-data implementation: train-speed control, thermal-power regulation and a programmed controller under disturbances.

![Train-control simulator](assets/simulateur_regulateur.png)

Academic work developed with Sarah Dahmoun in the Instrumentation engineering programme at Sup Galilée, Université Sorbonne Paris Nord.

## Model portfolio

| Module | Main concepts | Location |
|---|---|---|
| Train-speed control | First-order dynamics, proportional feedback, precompensation and actuator saturation | [Train models](models/tp1_suite_pilote_automatique/) |
| Thermal-power regulation | Inverse response, frequency analysis, proportional and PI control | [Thermal models](models/tp2_centrale_thermique/) |
| Programmed sampled controller | Sampling, calculated/applied command and disturbance rejection | [Programmed controller](models/tp3_regulation_programmee/) |

Reports are in [`docs/`](docs/); diagram and response captures are in [`assets/`](assets/).

## Train model

The first-order plant uses a gain `beta = 4` in the report and a time constant `tau`. A 100 km/h reference is compared with measured speed, and proportional gain/precompensation drive a command limited to −50…100. Speed is integrated after unit conversion to obtain travelled distance.

The model supports comparison of open-loop response, feedback tracking and command saturation. Convergence statements apply to the documented runs and assumptions; they are not guarantees for arbitrary gain values or actuator limits.

## Thermal model and PI control

The supplied model is:

```text
d + 60 d' = u
x + 120 x' = 2 d
y = 2 (x - d) - w
```

Here `u` is the fuel-flow command and `w` the disturbance. The output initially moves in the opposite direction to its steady-state response. Feedback sign must therefore be checked against the error definition used in the model.

The archived PI parameters are `k = 0.285`, `Ti = 100 s` and discrete period `Te = 0.01 s`. The material compares continuous and discrete integration, steady-state error and disturbance rejection.

## Reported simulation observations

| Case | Archived observation |
|---|---|
| Thermal step `u = 25` | Initial decrease near −17, followed by a final output of 50 |
| Proportional gain `k = 0.5` | Convergent response |
| Proportional gain `k = 0.75` | Oscillatory response |
| Proportional gain `k = 1` | Divergent response |
| PI with `w = 50` | Reported return toward `y = 50`, with steady command near 50 |
| Programmed controller | Captures compare target settling times and constant, sinusoidal and random disturbances |

These values come from the original reports and captures. Simulations have not been rerun for this README update.

## Reproducing a model

```bash
git clone https://github.com/tedjelmoulksn-dotcom/Systemes_Asservis.git
cd Systemes_Asservis
```

In MATLAB, change to the chosen model directory, run its parameter script, then open the corresponding `.slx` model. For example:

```matlab
cd models/tp2_centrale_thermique
run('parametres_tp2.m')
open_system('boucle_fermee_pi.slx')
```

MATLAB and Simulink are required; transfer-function and frequency-analysis workflows also use Control System Toolbox. Check the model's solver, stop time and workspace variables before simulation.

For TP3, select and activate the intended gain values in the parameter script: alternative settings are commented. The stored sampling period is 0.02 s.

## Engineering review

Interpret output tracking together with actuator saturation and applied command. Check sampled-data behaviour across sampling periods, and distinguish simulated disturbances from measured physical inputs.

The TP3 archive has no recovered narrative report; the additional `z(t)` signal requires fuller documentation. Original reports remain working documents.

## Licence

No project-wide licence has been defined.
