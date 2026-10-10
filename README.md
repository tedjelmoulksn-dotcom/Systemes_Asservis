# Control Systems with MATLAB and Simulink

Three control studies: train-speed regulation, thermal-plant power control and sampled torpedo-depth control. Models compare open and closed loops, P/PI controllers, saturation and disturbance rejection.

![Project illustration](assets/simulateur_regulateur.png)

## Repository guide

| Location | Contents |
|---|---|
| [models/](models/) | Organised Simulink models, parameter scripts and input data |
| [docs/](docs/) | Reports and source mapping |
| [assets/](assets/) | Block diagrams and response plots |
| [archive/](archive/) | Original lab models and source variants |

## Getting started

In MATLAB, run the parameter script for the selected study before opening its `.slx` model. The study folders are `tp1_suite_pilote_automatique`, `tp2_centrale_thermique` and `tp3_regulation_programmee`, under `models/`. Required MATLAB/Simulink toolboxes depend on the selected model.

## Project context

Coursework with Sarah Dahmoun at Sup Galilée. Reports provide the detailed calculations and observations; the README serves as a short guide to the studies.
