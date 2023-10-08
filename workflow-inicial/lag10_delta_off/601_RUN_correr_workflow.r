# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-inicial/lag10_delta_off/611_CA_reparar_dataset.r")
source("~/dm2023b/src/workflow-inicial/lag10_delta_off/621_DR_corregir_drifting.r")
source("~/dm2023b/src/workflow-inicial/lag10_delta_off/631_FE_historia.r")
source("~/dm2023b/src/workflow-inicial/lag10_delta_off/641_TS_training_strategy.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-inicial/lag10_delta_off/651_HT_lightgbm.r")
source("~/dm2023b/src/workflow-inicial/lag10_delta_off/661_ZZ_final.r")
