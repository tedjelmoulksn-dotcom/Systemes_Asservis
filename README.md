# Feedback Control Systems

MATLAB and Simulink studies of train speed, thermal regulation and torpedo depth control. The repository combines plant models, controller experiments, parameter scripts and laboratory reports.

![Systemes Asservis project overview](assets/tp2_schema_boucle_fermee.png)

*Original Simulink feedback-loop model from the controller laboratory.*

## Studies

| Study | Implementation | Analysis |
| --- | --- | --- |
| Train speed | Automatic-pilot models and proportional-control variants | Tracking and response to load or slope changes |
| Thermal regulation | Open-loop models, continuous PI and discrete PI variants | Temperature response and controller comparison |
| Torpedo depth | Dynamic model and parameter script | Depth-control behaviour and system response |

## Repository guide

- [models](models/): working Simulink models, MATLAB parameters and input MAT files.
- [docs](docs/): train report, thermal handout, PI report, complete thermal report and torpedo-depth report.
- [assets](assets/): model diagrams and simulation captures.
- [archive](archive/): original project variants and historical material.
- [Source map](docs/SOURCE_MAP.md): correspondence between imported documents and studies.

## Run a simulation

Use MATLAB with Simulink. Start from the study's model folder and execute its parameter script before opening the corresponding model. Keep associated MAT files on the MATLAB path when the model loads external inputs.

Select the controller variant explicitly when comparing results. Continuous and discrete models can use different timing assumptions; the torpedo parameter script defines a sampling period of `0.02 s`.

The reports explain the experimental reasoning and plots. Archived screenshots are historical results; simulations have not been rerun during documentation cleanup.
