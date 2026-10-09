# Source map

This index records the coursework files recovered from the project Drive and their repository destinations. Original reports and binary Simulink models retain their source content; recovered captures use descriptive English filenames. Identical files already present in the repository were reused by comparing Git blob hashes.

## Reports

| Original file | Repository file | Study |
|---|---|---|
| `Compte rendu tp system aservi(1).docx` | [Train report](tp1_pilote_automatique_train.docx) | Train speed and distance |
| `TP2_Dahmoun_Sinacer.pdf` | [Thermal report](tp2_centrale_thermique.pdf) | Thermal-process modelling and feedback |
| `Document 21.docx` | [Full thermal-control report](tp2_thermal_control_full_report.docx) | Thermal process and feedback study |
| Existing repository PI report | [PI report](tp2_regulateur_pi_compte_rendu.docx) | Continuous and discrete PI control |
| `Tp systmes asservis n3.docx` | [Depth-control report](tp3_torpedo_depth_control.docx) | Torpedo dynamics and controller design |

The original reports are in French. The English README develops the equations and interpretations alongside the model files. In particular, the thermal plant has stable open-loop poles and a right-half-plane zero; an inverse step response does not imply open-loop instability.

## Recovered model

`CE.systasservs.tp1.zip` contains a model originally named `boucle_ouverte.slx`. Its feedback subtraction, proportional gain, reference precompensation and saturation form a closed-loop controller. It is therefore stored as [`pilote_proportionnel_archive.slx`](../models/tp1_suite_pilote_automatique/pilote_proportionnel_archive.slx). Initialise it with the existing `parametres_tp1.m` script. The recovered model itself is unchanged.

The TP3 report covers several configurations. The saved `tp3_schema.slx` is the continuous nonlinear depth/pitch model; sampled and saturated study configurations are represented by the corresponding diagrams and response captures.

## Capture inventory

| Archive and original capture | Repository capture | Import status |
|---|---|---|
| `CE.systasservs.tp1.zip / 0.285 sortie de la commande de la saturation.PNG` | [command_after_saturation.png](../assets/tp1_archive/command_after_saturation.png) | Recovered capture |
| `CE.systasservs.tp1.zip / 0.85.PNG` | [gain_0_85.png](../assets/tp1_archive/gain_0_85.png) | Recovered capture |
| `CE.systasservs.tp1.zip / ajout de la perturbation avec regulateur.PNG` | [disturbance_feedback.png](../assets/tp1_archive/disturbance_feedback.png) | Recovered capture |
| `CE.systasservs.tp1.zip / distance pour y(t).PNG` | [distance_boucle_ouverte.png](../assets/distance_boucle_ouverte.png) | Existing identical file |
| `CE.systasservs.tp1.zip / fct de transfer.PNG` | [bloc_fonction_de_transfert.png](../assets/bloc_fonction_de_transfert.png) | Existing identical file |
| `CE.systasservs.tp1.zip / gain de lintegrateur.PNG` | [integrator_gain.png](../assets/tp1_archive/integrator_gain.png) | Recovered capture |
| `CE.systasservs.tp1.zip / gain(beta).PNG` | [plant_gain.png](../assets/tp1_archive/plant_gain.png) | Recovered capture |
| `CE.systasservs.tp1.zip / integrateur.PNG` | [integrator.png](../assets/tp1_archive/integrator.png) | Recovered capture |
| `CE.systasservs.tp1.zip / k=5;pour un temps i,ferieur a 0.5 min).PNG` | [gain_5_response.png](../assets/tp1_archive/gain_5_response.png) | Recovered capture |
| `CE.systasservs.tp1.zip / la commande avant(jaune) et avec saturation(bleu).PNG` | [commande_avec_saturation.png](../assets/commande_avec_saturation.png) | Existing identical file |
| `CE.systasservs.tp1.zip / parametre de u.PNG` | [input_parameters.png](../assets/tp1_archive/input_parameters.png) | Recovered capture |
| `CE.systasservs.tp1.zip / parametre de w.PNG` | [disturbance_parameters.png](../assets/tp1_archive/disturbance_parameters.png) | Recovered capture |
| `CE.systasservs.tp1.zip / simulateur (syst comande+regulateur).PNG` | [simulateur_regulateur.png](../assets/simulateur_regulateur.png) | Existing identical file |
| `CE.systasservs.tp1.zip / sorite avec regulateur et perturbation.PNG` | [sortie_regulateur_perturbation.png](../assets/sortie_regulateur_perturbation.png) | Existing identical file |
| `CE.systasservs.tp1.zip / sortie,a bocle ferme , converge a la valeurs theorique.PNG` | [reponse_boucle_fermee.png](../assets/reponse_boucle_fermee.png) | Existing identical file |
| `CE.systasservs.tp1.zip / y(t) avec condi init y(0)=0.PNG` | [vitesse_boucle_ouverte.png](../assets/vitesse_boucle_ouverte.png) | Existing identical file |
| `images tp 2.rar / images tp 2/17_y(t) diverge pour k=1.PNG` | [tp2_sortie_k1_diverge.png](../assets/tp2_sortie_k1_diverge.png) | Existing identical file |
| `images tp 2.rar / images tp 2/18_y(t) cpnverge pour k=0.2.PNG` | [output_gain_0_2.png](../assets/tp2_archive/output_gain_0_2.png) | Recovered capture |
| `images tp 2.rar / images tp 2/19_y(t) pour k=0.75  (oscillations).PNG` | [tp2_sortie_k0_75_oscillations.png](../assets/tp2_sortie_k0_75_oscillations.png) | Existing identical file |
| `images tp 2.rar / images tp 2/20_la bonne valeur de k et avce un petit depassement.PNG` | [tuned_gain_response.png](../assets/tp2_archive/tuned_gain_response.png) | Recovered capture |
| `images tp 2.rar / images tp 2/21_entree u(t) a  k=0.2.PNG` | [command_gain_0_2.png](../assets/tp2_archive/command_gain_0_2.png) | Recovered capture |
| `images tp 2.rar / images tp 2/1_simulateur pour visulaidser tout les parametre.PNG` | [process_model.png](../assets/tp2_archive/process_model.png) | Recovered capture |
| `images tp 2.rar / images tp 2/2_x(t).PNG` | [internal_x.png](../assets/tp2_archive/internal_x.png) | Recovered capture |
| `images tp 2.rar / images tp 2/3_d(t).PNG` | [internal_d.png](../assets/tp2_archive/internal_d.png) | Recovered capture |
| `images tp 2.rar / images tp 2/4_y(t).PNG` | [output_y.png](../assets/tp2_archive/output_y.png) | Recovered capture |
| `images tp 2.rar / images tp 2/5_utilisato,n des curseur.PNG` | [step_response_cursors.png](../assets/tp2_archive/step_response_cursors.png) | Recovered capture |
| `images tp 2.rar / images tp 2/8_ ltview.PNG` | [ltiview.png](../assets/tp2_archive/ltiview.png) | Recovered capture |
| `images tp 2.rar / images tp 2/9_ choix de diagramme.png` | [frequency_plot_selection.png](../assets/tp2_archive/frequency_plot_selection.png) | Recovered capture |
| `images tp 2.rar / images tp 2/10_ nyquist.png` | [tp2_nyquist.png](../assets/tp2_nyquist.png) | Existing identical file |
| `images tp 2.rar / images tp 2/11_baude.png` | [tp2_bode.png](../assets/tp2_bode.png) | Existing identical file |
| `images tp 2.rar / images tp 2/12_ black.png` | [tp2_black.png](../assets/tp2_black.png) | Existing identical file |
| `images tp 2.rar / images tp 2/12_bis_schémablock_qst2b.PNG` | [frequency_analysis_model.png](../assets/tp2_archive/frequency_analysis_model.png) | Recovered capture |
| `images tp 2.rar / images tp 2/13_T=10samplitude.PNG` | [sinusoidal_response.png](../assets/tp2_archive/sinusoidal_response.png) | Recovered capture |
| `images tp 2.rar / images tp 2/14 _sortie convergente.PNG` | [convergent_response.png](../assets/tp2_archive/convergent_response.png) | Recovered capture |
| `images tp 2.rar / images tp 2/14_pourw=0.02.PNG` | [angular_frequency_0_02.png](../assets/tp2_archive/angular_frequency_0_02.png) | Recovered capture |
| `images tp 2.rar / images tp 2/15_schema boucle fermee.PNG` | [tp2_schema_boucle_fermee.png](../assets/tp2_schema_boucle_fermee.png) | Existing identical file |
| `images tp 2.rar / images tp 2/16_y(t) converge pour k=0.5.PNG` | [tp2_sortie_k0_5_converge.png](../assets/tp2_sortie_k0_5_converge.png) | Existing identical file |

## Parameter correction

In `models/tp2_centrale_thermique/parametres_tp2.m`, the angular-frequency conversion is corrected from `omega/2*pi` to `omega/(2*pi)`. MATLAB evaluates the former as `(omega/2)*pi`; the corrected expression converts rad/s to Hz. The selected controller gains, integration time and sampling period are preserved.
