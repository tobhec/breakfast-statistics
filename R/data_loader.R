### Eurostat ###


# Monthly year on year inflation
infl_m_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/prc_hicp_manr/M.RCH_A.CP00."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*MONTH), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading infl_m_estat:", e$message, "\n")
    data.table()
  }
)

# Yearly average inflation
infl_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/prc_hicp_aind/A.RCH_A_AVG.CP00."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading infl_a_estat:", e$message, "\n")
    data.table()
  }
)

# GDP growth quarter-on-quarter, seasonally and calendar adjusted
gdp_q_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/namq_10_gdp/Q.CLV_PCH_PRE.SCA.B1GQ."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*QUARTER), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading gdp_q_estat:", e$message, "\n")
    data.table()
  }
)

# GDP growth year-on-year
gdp_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/nama_10_gdp/A.CLV_PCH_PRE.B1GQ."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading gdp_a_estat:", e$message, "\n")
    data.table()
  }
)

# Monthly unemployment rate, seasonally adjusted
une_m_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/une_rt_m/M.SA.TOTAL.PC_ACT.T."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*MONTH), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading une_m_estat:", e$message, "\n")
    data.table()
  }
)

# Quarterly unemployment rate, seasonally adjusted
une_q_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/une_rt_q/Q.SA.Y15-74.PC_ACT.T."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*QUARTER), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading une_q_estat:", e$message, "\n")
    data.table()
  }
)

# Annual unemployment rate
une_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/une_rt_a/A.Y15-74.PC_ACT.T."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading une_a_estat:", e$message, "\n")
    data.table()
  }
)

# Export volume indices, annual
expi_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/tet00001/A.IVOL_EXP.TOTAL.WORLD."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading expi_a_estat:", e$message, "\n")
    data.table()
  }
)

# Import volume indices, annual
impi_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/tet00001/A.IVOL_IMP.TOTAL.WORLD."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading impi_a_estat:", e$message, "\n")
    data.table()
  }
)

# Monthly SCA exports month on month
exp_m_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/ext_st_27_2020msbec/M.EXP.TRD_VAL_SCA_RT1.WORLD.TOTAL."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*MONTH), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading exp_m_estat:", e$message, "\n")
    data.table()
  }
)

# Monthly SCA imports month on month
imp_m_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/ext_st_27_2020msbec/M.IMP.TRD_VAL_SCA_RT1.WORLD.TOTAL."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*MONTH), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading imp_m_estat:", e$message, "\n")
    data.table()
  }
)

# Monthly SCA exports month on month
expy_m_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/ext_st_27_2020msbec/M.EXP.TRD_VAL_RT12.WORLD.TOTAL."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*MONTH), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading expy_m_estat:", e$message, "\n")
    data.table()
  }
)

# Monthly exports year on year
expy_m_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/ext_st_27_2020msbec/M.EXP.TRD_VAL_RT12.WORLD.TOTAL."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*MONTH), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading exp_m_estat:", e$message, "\n")
    data.table()
  }
)

# Monthly exports year on year
impy_m_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/ext_st_27_2020msbec/M.EXP.TRD_VAL_RT12.WORLD.TOTAL."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*MONTH), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading impy_m_estat:", e$message, "\n")
    data.table()
  }
)

# Quarterly general government deficit
ggdef_q_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/gov_10q_ggnfa/Q.PC_GDP.NSA.S13.B9."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*QUARTER), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading ggdef_q_estat:", e$message, "\n")
    data.table()
  }
)

# Annual general government deficit
ggdef_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/gov_10dd_edpt1/A.PC_GDP.S13.B9."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading ggdef_a_estat:", e$message, "\n")
    data.table()
  }
)

# Quarterly general government debt
ggdeb_q_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/gov_10q_ggdebt/Q.GD.S13.PC_GDP."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*QUARTER), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading ggdeb_q_estat:", e$message, "\n")
    data.table()
  }
)

# Annual general government debt
ggdeb_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/gov_10dd_edpt1/A.PC_GDP.S13.GD."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading ggdeb_a_estat:", e$message, "\n")
    data.table()
  }
)

# House price index, quarterly data
hpi_q_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/prc_hpi_q/Q.TOTAL.I15_Q."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*QUARTER), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading hpi_q_estat:", e$message, "\n")
    data.table()
  }
)

# House price quarter-on-quarter change, quarterly data
hpc_q_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/prc_hpi_q/Q.TOTAL.RCH_Q."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*QUARTER), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading hpc_q_estat:", e$message, "\n")
    data.table()
  }
)

# House price year-on-year change, quarterly data
hpca_q_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/prc_hpi_q/Q.TOTAL.RCH_A."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*QUARTER), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading hpca_q_estat:", e$message, "\n")
    data.table()
  }
)

# House price index, annual data
hpi_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/prc_hpi_a/A.TOTAL.I15_A_AVG."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading hpi_a_estat:", e$message, "\n")
    data.table()
  }
)

# Average year-on-year house price change, annual data
hpc_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/prc_hpi_a/A.TOTAL.RCH_A_AVG."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading hpc_a_estat:", e$message, "\n")
    data.table()
  }
)

# Quarterly current account
ca_q_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/bop_gdp6_q/Q.PC_GDP.NSA.CA.BAL.WRL_REST."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*QUARTER), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading ca_q_estat:", e$message, "\n")
    data.table()
  }
)

# Annual current account
ca_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/bop_gdp6_q/A.PC_GDP.NSA.CA.BAL.WRL_REST."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading ca_a_estat:", e$message, "\n")
    data.table()
  }
)

# Quarterly net lending-borrowing (CA+KA)
nlb_q_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/bop_gdp6_q/Q.PC_GDP.NSA.CKA.BAL.WRL_REST."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*QUARTER), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading nlb_q_estat:", e$message, "\n")
    data.table()
  }
)

# Annual net lending-borrowing (CA+KA)
nlb_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/bop_gdp6_q/A.PC_GDP.NSA.CKA.BAL.WRL_REST."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading nlb_a_estat:", e$message, "\n")
    data.table()
  }
)

# Quarterly net international investment position
niip_q_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/bop_gdp6_q/Q.PC_GDP.NSA.FA.N_LE.WRL_REST."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*QUARTER), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading niip_q_estat:", e$message, "\n")
    data.table()
  }
)

# Annual net international investment position
niip_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/bop_gdp6_q/A.PC_GDP.NSA.FA.N_LE.WRL_REST."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading niip_a_estat:", e$message, "\n")
    data.table()
  }
)

# Daily exchange rates in Euro
#sdmx_code <- "ESTAT/ert_bil_eur_d/D.AVG.NAC.ALL"
#exr_d_estat <- as.data.table(mds(sdmx_code))

# Monthly real effective exchange rate
reer_m_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/ert_eff_ic_m/M.REER_IC42_CPI.I15."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*MONTH), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading reer_m_estat:", e$message, "\n")
    data.table()
  }
)

# Quarterly real effective exchange rate
reer_q_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/ert_eff_ic_q/Q.REER_IC42_CPI.I15."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*QUARTER), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading reer_q_estat:", e$message, "\n")
    data.table()
  }
)

# Annual real effective exchange rate
reer_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/ert_eff_ic_a/A.REER_IC42_CPI.I15."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading reer_a_estat:", e$message, "\n")
    data.table()
  }
)

# Government bond yields - 10 year maturity, monthly data
gby_m_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/irt_lt_gby10_m/M.Y10."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*MONTH), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading gby_m_estat:", e$message, "\n")
    data.table()
  }
)

# Government bond yields - 10 year maturity, annual data
gby_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/irt_lt_gby10_a/A.Y10."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading gby_a_estat:", e$message, "\n")
    data.table()
  }
)

# Government bond yields (EMU convergence data) - 10 year maturity, monthly data
gbyemu_m_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/irt_lt_mcby_m/M.MCBY."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*MONTH), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading gbyemu_m_estat:", e$message, "\n")
    data.table()
  }
)

# Government bond yields (EMU convergence data) - 10 year maturity, quarterly data
gbyemu_q_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/irt_lt_mcby_q/Q.MCBY."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*QUARTER), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading gbyemu_q_estat:", e$message, "\n")
    data.table()
  }
)

# Government bond yields (EMU convergence data) - 10 year maturity, annual data
gbyemu_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/irt_lt_mcby_a/A.MCBY."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading gbyemu_a_estat:", e$message, "\n")
    data.table()
  }
)

# Money market interest rates (3-month rate), monthly data
mmir_m_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/irt_st_m/M.IRT_M3."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*MONTH), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading mmir_m_estat:", e$message, "\n")
    data.table()
  }
)

# Money market interest rates (3-month rate), quarterly data
mmir_q_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/irt_st_q/Q.IRT_M3."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*QUARTER), "%Y-%m")))
  },
  error = function(e) {
    cat("Error loading mmir_q_estat:", e$message, "\n")
    data.table()
  }
)

# Money market interest rates (3-month rate), annual data
mmir_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/irt_st_a/A.IRT_M3."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading mmir_a_estat:", e$message, "\n")
    data.table()
  }
)

# Total financial sector liabilites (non-consolidated)
tfsl_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/nasa_10_f_bs/A.PC_GDP.NCO.S12.LIAB.F."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading tfsl_a_estat:", e$message, "\n")
    data.table()
  }
)

# Net international investment position excluding non-defaultable instruments
nendi_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSII50/A.PC_GDP.NSA.FA__NENDI.N_LE.WRL_REST."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading nendi_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# Net lending-borrowing (current plus capital account)
nlb_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSBP70/A.PC_GDP.CKA.S1.S1.BAL.WRL_REST.NSA."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading nlb_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# Net trade balance in energy
ntbe_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSEN10/A.MIO_BAL_VAL.SITC3.WORLD."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading ntbe_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# Real GDP per capita
gdpcap_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSNA40/A.CLV15_EUR_HAB.B1GQ."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading gdpcap_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# Gross fixed capital formation
gfcf_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSNA20/A.P51G.PC_GDP."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading gfcf_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# Gross expenditure on research and development
gerd_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSST10/A.TOTAL.PC_GDP."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading gerd_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# Export market shares
ems_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSEX10/A.PCH_WRL_3Y.GS.CRE.WRL_REST."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading ems_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# Labour productivity
lpr_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSNA70/A.RLPR_HW.PCH_PRE."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading lpr_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# Core inflation differential vis-à-vis the euro area
infdiff_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSCP10/A.TOT_X_NRG_FOOD.CID_EA."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading infdiff_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# Household debt (including non-profit institutions serving households)
hhdgdi_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSPD40/A.PC_GADI.CO.S14_S15.LIAB.F3_F4."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading hhdgdi_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# Gross non-performing loans
gnpls_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSBD10/A.PC."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading gnpls_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# Tier-1 capital ratio
t1cr_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSBD30/A.PC_RWA."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading t1cr_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# Return on equity of banks
roeb_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSBD40/A.PC."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading roeb_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# Standardised house price-to-income ratio
pti_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSHO60/A.PTIR_LT_AVG."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading pti_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# Building permits
buildp_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSHO50/A.NSA.M2_THAB.BPRM_SQM.CPA_F41001."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading buildp_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# Long-term unemployment rate
ltunem_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSLM70/A.T.Y15-74.PC_ACT."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading ltunem_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# Youth unemployment rate
yunem_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSLM80/A.Y15-24.T.PC_ACT."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading yunem_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# Employment rate
emp_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSLM100/A.EMP_LFS.T.Y20-64.PC_POP."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading emp_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# Young people neither in employment nor in education or training
neet_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSLM90/A.T.Y15-29.PC_POP."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading neet_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# People at risk of poverty or social exclusion
arope_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSLC10/A.T.PC.TOTAL."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading arope_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# People at risk of poverty after social transfers
arope1_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSLC20/A.T.PC.LI_R_MD60.TOTAL."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading arope1_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# Severely materially and socially deprived people
arope2_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSLC30/A.T.PC.TOTAL."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading arope2_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# People living in households with very low work intensity
arope3_a_estat_mip <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSLC40/A.T.Y_LT65.PC."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading arope3_a_estat_mip:", e$message, "\n")
    data.table()
  }
)

# Current account balance 3 year average (MIP)
camip_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSBP10/A.PC_GDP_3Y.NSA.CA.BAL.WRL_REST."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading camip_a_estat:", e$message, "\n")
    data.table()
  }
)

# Net international investment position (MIP)
niipmip_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSII10/A.NSA.FA.S1.S1.N_LE.WRL_REST.PC_GDP."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading niipmip_a_estat:", e$message, "\n")
    data.table()
  }
)

# Real effective exchange rate (MIP)
reermip_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSER10/A.PCH_3Y."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading reermip_a_estat:", e$message, "\n")
    data.table()
  }
)

# Export performance against advanced economies (MIP)
epmip_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSBP60/A.PCH_OECD_EU_3Y.GS.CRE.WRL_REST."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading epmip_a_estat:", e$message, "\n")
    data.table()
  }
)

# Nominal unit labour cost (MIP)
nulcmip_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSLM10/A.NULC_HW.PCH_3Y."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading nulcmip_a_estat:", e$message, "\n")
    data.table()
  }
)

# General government gross debt (MIP)
ggdmip_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSGO10/A.GD.S13.PC_GDP."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading ggdmip_a_estat:", e$message, "\n")
    data.table()
  }
)

# Household debt (MIP)
hhdmip_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSPD22/A.PC_GDP.CO.S14_S15.LIAB.F3_F4."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading hhdmip_a_estat:", e$message, "\n")
    data.table()
  }
)

# NFC debt (MIP)
nfcdmip_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSPD30/A.PC_GDP.CO.S11.LIAB.F3_F4."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading nfcdmip_a_estat:", e$message, "\n")
    data.table()
  }
)

# Household credit flow (MIP)
hhcfmip_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSPC40/A.F3_F4.CO.S14_S15.LIAB.PC_LE."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading hhcfmip_a_estat:", e$message, "\n")
    data.table()
  }
)

# NFC credit flow excluding FDI (MIP)
nfccfmip_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSPC30/A.PC_LE.CO.S11.LIAB.F3_F4_X_FDI."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading nfccfmip_a_estat:", e$message, "\n")
    data.table()
  }
)

# Nominal house price index (MIP)
hpimip_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSHO20/A.RCH_A_AVG."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading hpimip_a_estat:", e$message, "\n")
    data.table()
  }
)

# Unemployment rate (MIP)
unemip_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSUN20/A.T.Y15-74.PC_ACT."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading unemip_a_estat:", e$message, "\n")
    data.table()
  }
)

# Labour force participation rate (MIP)
lfprmip_a_estat <- tryCatch(
  {
    sdmx_code <- "ESTAT/TIPSLM60/A.PPCH_3Y.Y15-64.T."
    as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
  },
  error = function(e) {
    cat("Error loading lfprmip_a_estat:", e$message, "\n")
    data.table()
  }
)


### European Central Bank ###

# Daily exchange rates in Euro
exreur_d_ecb <- tryCatch(
  {
    sdmx_code <- "ECB/EXR/D..EUR.SP00.A"
    exreur_d_ecb <- as.data.table(mds(sdmx_code, startPeriod = Sys.Date() - 20))
  },
  error = function(e) {
    cat("Error loading exreur_d_ecb:", e$message, "\n")
    data.table()
  }
)

# Gross non-performing loans
gnpls_a_ecb <- tryCatch(
  {
    sdmx_code <- "ECB/CBD2/A..W0.67._Z._Z.A.F.I3632._Z._Z._Z._Z._Z._Z.PC"
    gnpls_a_ecb <- as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
    setnames(gnpls_a_ecb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading gnpls_a_ecb:", e$message, "\n")
    data.table()
  }
)

# Tier-1 capital ratio
t1cr_a_ecb <- tryCatch(
  {
    sdmx_code <- "ECB/CBD2/A..W0.67._Z._Z.A.A.I4002._Z._Z._Z._Z._Z._Z.PC"
    t1cr_a_ecb <- as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
    setnames(t1cr_a_ecb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading t1cr_a_ecb:", e$message, "\n")
    data.table()
  }
)

# Return on equity of banks
roeb_a_ecb <- tryCatch(
  {
    sdmx_code <- "ECB/CBD2/A..W0.67._Z._Z.A.A.I2003._Z._Z._Z._Z._Z._Z.PC"
    roeb_a_ecb <- as.data.table(mds(sdmx_code, 
                                    startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
    setnames(roeb_a_ecb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading roeb_a_ecb:", e$message, "\n")
    data.table()
  }
)

# Consolidated banking leverage
cbl_a_ecb <- tryCatch(
  {
    sdmx_code <- "ECB/CBD2/A..W0.67._Z._Z.A.A.I3400._Z._Z._Z._Z._Z._Z.PN"
    cbl_a_ecb <- as.data.table(mds(sdmx_code, 
                                   startPeriod = format(Sys.Date() - (20*YEAR), "%Y")))
    setnames(cbl_a_ecb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading cbl_a_ecb:", e$message, "\n")
    data.table()
  }
)

### International Monetary Fund ###

#HICP
### year on year inflation, monthly
infl_m_imf <- as.data.table(mds("IMF_DATA/CPI/.HICP._T.YOY_PCH_PA_PT.M", startPeriod = format(Sys.Date() - (20*MONTH), "%Y-%m")))
#ccode(infl_m_imf$COUNTRY, "iso3c", "iso2c")
setnames(infl_m_imf, "COUNTRY", "geo")

### year on year inflation, quarterly
mds("IMF_DATA/CPI/.HICP._T.YOY_PCH_PA_PT.Q", startPeriod = format(Sys.Date() - (20*QUARTER), "%Y-%m"))
### year on year inflation, annual
mds("IMF_DATA/CPI/.HICP._T.YOY_PCH_PA_PT.A", startPeriod = format(Sys.Date() - (20*YEAR), "%Y"))

# WEO - ANNUAL
# UNEMPLOYMENT RATE
# CURRENT ACCOUNT BALANCE 
# REAL GDP GROWTH ANNUAL

# FISCAL MONITOR - ANNUAL
# STRUCTURAL GOVERNMENT BALANCE
# General government gross debt 
# NLB

# BALANCE OF PAYMENTS-IIP
# ANNUAL CURRENT ACCOUNT



### United Nations Statistics Division ###

### World Bank ###

# Annual inflation
infl_a_wb <- tryCatch(
  {
    sdmx_code <- "WB/WDI/A.FP_CPI_TOTL_ZG.USA+JPN+CHN+RUS+EUU+EMU+GBR+CAN+KOR+MEX+SWE+FRA+PLN+DNK+HRV+CYP+CZE+EST+FIN+ESP+DEU+GRC+ITA+NLD+HUN+LVA+LTU+IRL+LUX+BEL+MLT+SVK+SVN+AUT+BGR+PRT+ROU+NOR+ISL+CHE+SRB+AUS+NZL+ARG"
    infl_a_wb <- as.data.table(mds(sdmx_code, 
                                   #startPeriod = 2024, 
                                   ccode = "EC"))
    setnames(infl_a_wb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading infl_a_wb:", e$message, "\n")
    data.table()
  }
)

# Current account as percentage of GDP
ca_a_wb <- tryCatch(
  {
    sdmx_code <- "WB/WDI/A.BN_CAB_XOKA_GD_ZS.USA+JPN+CHN+RUS+EUU+EMU+GBR+CAN+KOR+MEX+SWE+FRA+PLN+DNK+HRV+CYP+CZE+EST+FIN+ESP+DEU+GRC+ITA+NLD+HUN+LVA+LTU+IRL+LUX+BEL+MLT+SVK+SVN+AUT+BGR+PRT+ROU+NOR+ISL+CHE+SRB+AUS+NZL+ARG"
    ca_a_wb <- as.data.table(mds(sdmx_code, 
                                 #startPeriod = format(Sys.Date() - 365, "%Y"), 
                                 ccode = "EC"))
    setnames(ca_a_wb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading ca_a_wb:", e$message, "\n")
    data.table()
  }
)

# Exports of goods and services as percentage of GDP
exp_a_wb <- tryCatch(
  {
    sdmx_code <- "WB/WDI/A.NE_EXP_GNFS_ZS.USA+JPN+CHN+RUS+EUU+EMU+GBR+CAN+KOR+MEX+SWE+FRA+PLN+DNK+HRV+CYP+CZE+EST+FIN+ESP+DEU+GRC+ITA+NLD+HUN+LVA+LTU+IRL+LUX+BEL+MLT+SVK+SVN+AUT+BGR+PRT+ROU+NOR+ISL+CHE+SRB+AUS+NZL+ARG"
    exp_a_wb <- as.data.table(mds(sdmx_code, 
                                  #startPeriod = format(Sys.Date() - 365, "%Y"), 
                                  ccode = "EC"))
    setnames(exp_a_wb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading exp_a_wb:", e$message, "\n")
    data.table()
  }
)

# Imports of goods and services as percentage of GDP
imp_a_wb <- tryCatch(
  {
    sdmx_code <- "WB/WDI/A.NE_IMP_GNFS_ZS.USA+JPN+CHN+RUS+EUU+EMU+GBR+CAN+KOR+MEX+SWE+FRA+PLN+DNK+HRV+CYP+CZE+EST+FIN+ESP+DEU+GRC+ITA+NLD+HUN+LVA+LTU+IRL+LUX+BEL+MLT+SVK+SVN+AUT+BGR+PRT+ROU+NOR+ISL+CHE+SRB+AUS+NZL+ARG"
    imp_a_wb <- as.data.table(mds(sdmx_code, 
                                  #startPeriod = format(Sys.Date() - 365, "%Y"), 
                                  ccode = "EC"))
    setnames(imp_a_wb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading imp_a_wb:", e$message, "\n")
    data.table()
  }
)

# Net inflows of FDI as percentage of GDP
fdiin_a_wb <- tryCatch(
  {
    sdmx_code <- "WB/WDI/A.BX_KLT_DINV_WD_GD_ZS.USA+JPN+CHN+RUS+EUU+EMU+GBR+CAN+KOR+MEX+SWE+FRA+PLN+DNK+HRV+CYP+CZE+EST+FIN+ESP+DEU+GRC+ITA+NLD+HUN+LVA+LTU+IRL+LUX+BEL+MLT+SVK+SVN+AUT+BGR+PRT+ROU+NOR+ISL+CHE+SRB+AUS+NZL+ARG"
    fdiin_a_wb <- as.data.table(mds(sdmx_code, 
                                    #startPeriod = format(Sys.Date() - 365, "%Y"), 
                                    ccode = "EC"))
    setnames(fdiin_a_wb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading fdiin_a_wb:", e$message, "\n")
    data.table()
  }
)

# Net outflows of FDI as percentage of GDP
fdiout_a_wb <- tryCatch(
  {
    sdmx_code <- "WB/WDI/A.BM_KLT_DINV_WD_GD_ZS.USA+JPN+CHN+RUS+EUU+EMU+GBR+CAN+KOR+MEX+SWE+FRA+PLN+DNK+HRV+CYP+CZE+EST+FIN+ESP+DEU+GRC+ITA+NLD+HUN+LVA+LTU+IRL+LUX+BEL+MLT+SVK+SVN+AUT+BGR+PRT+ROU+NOR+ISL+CHE+SRB+AUS+NZL+ARG"
    fdiout_a_wb <- as.data.table(mds(sdmx_code, 
                                     #startPeriod = format(Sys.Date() - 365, "%Y"), 
                                     ccode = "EC"))
    setnames(fdiout_a_wb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading fdiout_a_wb:", e$message, "\n")
    data.table()
  }
)

# Real GDP growth (constant 2015 prices)
gdpg_a_wb <- tryCatch(
  {
    sdmx_code <- "WB/WDI/A.NY_GDP_MKTP_KD_ZG.USA+JPN+CHN+RUS+EUU+EMU+GBR+CAN+KOR+MEX+SWE+FRA+PLN+DNK+HRV+CYP+CZE+EST+FIN+ESP+DEU+GRC+ITA+NLD+HUN+LVA+LTU+IRL+LUX+BEL+MLT+SVK+SVN+AUT+BGR+PRT+ROU+NOR+ISL+CHE+SRB+AUS+NZL+ARG"
    gdpg_a_wb <- as.data.table(mds(sdmx_code, 
                                   #startPeriod = format(Sys.Date() - 365, "%Y"), 
                                   ccode = "EC"))
    setnames(gdpg_a_wb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading gdpg_a_wb:", e$message, "\n")
    data.table()
  }
)

# Real GDP per capita growth (constant 2015 prices)
gdpcg_a_wb <- tryCatch(
  {
    sdmx_code <- "WB/WDI/A.NY_GDP_PCAP_KD_ZG.USA+JPN+CHN+RUS+EUU+EMU+GBR+CAN+KOR+MEX+SWE+FRA+PLN+DNK+HRV+CYP+CZE+EST+FIN+ESP+DEU+GRC+ITA+NLD+HUN+LVA+LTU+IRL+LUX+BEL+MLT+SVK+SVN+AUT+BGR+PRT+ROU+NOR+ISL+CHE+SRB+AUS+NZL+ARG"
    gdpcg_a_wb <- as.data.table(mds(sdmx_code, 
                                    #startPeriod = format(Sys.Date() - 365, "%Y"), 
                                    ccode = "EC"))
    setnames(gdpcg_a_wb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading gdpcg_a_wb:", e$message, "\n")
    data.table()
  }
)

# Real GDP per capita (constant 2015 prices)
gdpc_a_wb <- tryCatch(
  {
    sdmx_code <- "WB/WDI/A.NY_GDP_PCAP_KD.USA+JPN+CHN+RUS+EUU+EMU+GBR+CAN+KOR+MEX+SWE+FRA+PLN+DNK+HRV+CYP+CZE+EST+FIN+ESP+DEU+GRC+ITA+NLD+HUN+LVA+LTU+IRL+LUX+BEL+MLT+SVK+SVN+AUT+BGR+PRT+ROU+NOR+ISL+CHE+SRB+AUS+NZL+ARG"
    gdpc_a_wb <- as.data.table(mds(sdmx_code, 
                                   #startPeriod = format(Sys.Date() - 365, "%Y"), 
                                   ccode = "EC"))
    setnames(gdpc_a_wb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading gdpc_a_wb:", e$message, "\n")
    data.table()
  }
)

# Real GDP (constant 2015 prices)
gdp_a_wb <- tryCatch(
  {
    sdmx_code <- "WB/WDI/A.NY_GDP_MKTP_KD.USA+JPN+CHN+RUS+EUU+EMU+GBR+CAN+KOR+MEX+SWE+FRA+PLN+DNK+HRV+CYP+CZE+EST+FIN+ESP+DEU+GRC+ITA+NLD+HUN+LVA+LTU+IRL+LUX+BEL+MLT+SVK+SVN+AUT+BGR+PRT+ROU+NOR+ISL+CHE+SRB+AUS+NZL+ARG"
    gdp_a_wb <- as.data.table(mds(sdmx_code, 
                                  #startPeriod = format(Sys.Date() - 365, "%Y"), 
                                  ccode = "EC"))
    setnames(gdp_a_wb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading gdp_a_wb:", e$message, "\n")
    data.table()
  }
)

# Income share held by top 10 %
ist10_a_wb <- tryCatch(
  {
    sdmx_code <- "WB/WDI/A.SI_DST_10TH_10.USA+JPN+CHN+RUS+EUU+EMU+GBR+CAN+KOR+MEX+SWE+FRA+PLN+DNK+HRV+CYP+CZE+EST+FIN+ESP+DEU+GRC+ITA+NLD+HUN+LVA+LTU+IRL+LUX+BEL+MLT+SVK+SVN+AUT+BGR+PRT+ROU+NOR+ISL+CHE+SRB+AUS+NZL+ARG"
    ist10_a_wb <- as.data.table(mds(sdmx_code, 
                                    #startPeriod = format(Sys.Date() - 365, "%Y"), 
                                    ccode = "EC"))
    setnames(ist10_a_wb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading ist10_a_wb:", e$message, "\n")
    data.table()
  }
)

# Income share held by top 20 %
ist20_a_wb <- tryCatch(
  {
    sdmx_code <- "WB/WDI/A.SI_DST_05TH_20.USA+JPN+CHN+RUS+EUU+EMU+GBR+CAN+KOR+MEX+SWE+FRA+PLN+DNK+HRV+CYP+CZE+EST+FIN+ESP+DEU+GRC+ITA+NLD+HUN+LVA+LTU+IRL+LUX+BEL+MLT+SVK+SVN+AUT+BGR+PRT+ROU+NOR+ISL+CHE+SRB+AUS+NZL+ARG"
    ist20_a_wb <- as.data.table(mds(sdmx_code, 
                                    #startPeriod = format(Sys.Date() - 365, "%Y"), 
                                    ccode = "EC"))
    setnames(ist20_a_wb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading ist20_a_wb:", e$message, "\n")
    data.table()
  }
)

# Income share held by lowest 10 %
isl10_a_wb <- tryCatch(
  {
    sdmx_code <- "WB/WDI/A.SI_DST_FRST_10.USA+JPN+CHN+RUS+EUU+EMU+GBR+CAN+KOR+MEX+SWE+FRA+PLN+DNK+HRV+CYP+CZE+EST+FIN+ESP+DEU+GRC+ITA+NLD+HUN+LVA+LTU+IRL+LUX+BEL+MLT+SVK+SVN+AUT+BGR+PRT+ROU+NOR+ISL+CHE+SRB+AUS+NZL+ARG"
    isl10_a_wb <- as.data.table(mds(sdmx_code, 
                                    #startPeriod = format(Sys.Date() - 365, "%Y"), 
                                    ccode = "EC"))
    setnames(isl10_a_wb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading isl10_a_wb:", e$message, "\n")
    data.table()
  }
)

# Income share held by lowest 20 %
isl20_a_wb <- tryCatch(
  {
    sdmx_code <- "WB/WDI/A.SI_DST_FRST_20.USA+JPN+CHN+RUS+EUU+EMU+GBR+CAN+KOR+MEX+SWE+FRA+PLN+DNK+HRV+CYP+CZE+EST+FIN+ESP+DEU+GRC+ITA+NLD+HUN+LVA+LTU+IRL+LUX+BEL+MLT+SVK+SVN+AUT+BGR+PRT+ROU+NOR+ISL+CHE+SRB+AUS+NZL+ARG"
    isl20_a_wb <- as.data.table(mds(sdmx_code, 
                                    #startPeriod = format(Sys.Date() - 365, "%Y"), 
                                    ccode = "EC"))
    setnames(isl20_a_wb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading isl20_a_wb:", e$message, "\n")
    data.table()
  }
)

# Poverty headcount ratio at $3.00 a day (2021 PPP) (% of population)
povhc3_a_wb <- tryCatch(
  {
    sdmx_code <- "WB/WDI/A.SI_POV_DDAY.USA+JPN+CHN+RUS+EUU+EMU+GBR+CAN+KOR+MEX+SWE+FRA+PLN+DNK+HRV+CYP+CZE+EST+FIN+ESP+DEU+GRC+ITA+NLD+HUN+LVA+LTU+IRL+LUX+BEL+MLT+SVK+SVN+AUT+BGR+PRT+ROU+NOR+ISL+CHE+SRB+AUS+NZL+ARG"
    povhc3_a_wb <- as.data.table(mds(sdmx_code, 
                                     #startPeriod = format(Sys.Date() - 365, "%Y"), 
                                     ccode = "EC"))
    setnames(povhc3_a_wb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading povhc3_a_wb:", e$message, "\n")
    data.table()
  }
)

# Poverty headcount ratio at $4.20 a day (2021 PPP) (% of population)
povhc42_a_wb <- tryCatch(
  {
    sdmx_code <- "WB/WDI/A.SI_POV_LMIC.USA+JPN+CHN+RUS+EUU+EMU+GBR+CAN+KOR+MEX+SWE+FRA+PLN+DNK+HRV+CYP+CZE+EST+FIN+ESP+DEU+GRC+ITA+NLD+HUN+LVA+LTU+IRL+LUX+BEL+MLT+SVK+SVN+AUT+BGR+PRT+ROU+NOR+ISL+CHE+SRB+AUS+NZL+ARG"
    povhc42_a_wb <- as.data.table(mds(sdmx_code, 
                                      #startPeriod = format(Sys.Date() - 365, "%Y"), 
                                      ccode = "EC"))
    setnames(povhc42_a_wb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading povhc42_a_wb:", e$message, "\n")
    data.table()
  }
)

# Poverty headcount ratio at $8.30 a day (2021 PPP) (% of population)
povhc83_a_wb <- tryCatch(
  {
    sdmx_code <- "WB/WDI/A.SI_POV_UMIC.USA+JPN+CHN+RUS+EUU+EMU+GBR+CAN+KOR+MEX+SWE+FRA+PLN+DNK+HRV+CYP+CZE+EST+FIN+ESP+DEU+GRC+ITA+NLD+HUN+LVA+LTU+IRL+LUX+BEL+MLT+SVK+SVN+AUT+BGR+PRT+ROU+NOR+ISL+CHE+SRB+AUS+NZL+ARG"
    povhc83_a_wb <- as.data.table(mds(sdmx_code, 
                                      #startPeriod = format(Sys.Date() - 365, "%Y"), 
                                      ccode = "EC"))
    setnames(povhc83_a_wb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading povhc83_a_wb:", e$message, "\n")
    data.table()
  }
)

# Poverty gap at $3.00 a day (2021 PPP) (%)
povgap3_a_wb <- tryCatch(
  {
    sdmx_code <- "WB/WDI/A.SI_POV_GAPS.USA+JPN+CHN+RUS+EUU+EMU+GBR+CAN+KOR+MEX+SWE+FRA+PLN+DNK+HRV+CYP+CZE+EST+FIN+ESP+DEU+GRC+ITA+NLD+HUN+LVA+LTU+IRL+LUX+BEL+MLT+SVK+SVN+AUT+BGR+PRT+ROU+NOR+ISL+CHE+SRB+AUS+NZL+ARG"
    povgap3_a_wb <- as.data.table(mds(sdmx_code, 
                                      #startPeriod = format(Sys.Date() - 365, "%Y"), 
                                      ccode = "EC"))
    setnames(povgap3_a_wb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading povgap3_a_wb:", e$message, "\n")
    data.table()
  }
)

# Poverty gap at $4.20 a day (2021 PPP) (%)
povgap42_a_wb <- tryCatch(
  {
    sdmx_code <- "WB/WDI/A.SI_POV_LMIC_GP.USA+JPN+CHN+RUS+EUU+EMU+GBR+CAN+KOR+MEX+SWE+FRA+PLN+DNK+HRV+CYP+CZE+EST+FIN+ESP+DEU+GRC+ITA+NLD+HUN+LVA+LTU+IRL+LUX+BEL+MLT+SVK+SVN+AUT+BGR+PRT+ROU+NOR+ISL+CHE+SRB+AUS+NZL+ARG"
    povgap42_a_wb <- as.data.table(mds(sdmx_code, 
                                       #startPeriod = format(Sys.Date() - 365, "%Y"), 
                                       ccode = "EC"))
    setnames(povgap42_a_wb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading povgap42_a_wb:", e$message, "\n")
    data.table()
  }
)

# Poverty gap at $8.30 a day (2021 PPP) (%)
povgap83_a_wb <- tryCatch(
  {
    sdmx_code <- "WB/WDI/A.SI_POV_UMIC_GP.USA+JPN+CHN+RUS+EUU+EMU+GBR+CAN+KOR+MEX+SWE+FRA+PLN+DNK+HRV+CYP+CZE+EST+FIN+ESP+DEU+GRC+ITA+NLD+HUN+LVA+LTU+IRL+LUX+BEL+MLT+SVK+SVN+AUT+BGR+PRT+ROU+NOR+ISL+CHE+SRB+AUS+NZL+ARG"
    povgap83_a_wb <- as.data.table(mds(sdmx_code, 
                                       #startPeriod = format(Sys.Date() - 365, "%Y"), 
                                       ccode = "EC"))
    setnames(povgap83_a_wb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading povgap83_a_wb:", e$message, "\n")
    data.table()
  }
)




### Organisation for economic cooperation and development ###
# Government debt
# Government deficit
# Inflation
# GDP growth


#EU B0 57
#EA U2 47



raw_data_list <- list(
  
  "Exchange rates" = list(
    
    "exreur_d_ecb" = 
      list("title" = "Exchange rates in Euro, daily data",
           "data" = exreur_d_ecb,
           "unit" = "Currency per Euro",
           "source" = "European Central Bank",
           "link" = "https://data.ecb.europa.eu/main-figures/ecb-interest-rates-and-exchange-rates/exchange-rates",
           "currency" = unique(exreur_d_ecb$CURRENCY),
           "dropdown" = "CURRENCY",
           "contains_geo" = FALSE
      ),
    "reer_m_estat" = 
      list("title" = "Real effective exchange rate (against 42 advanced economies), monthly data",
           "data" = reer_m_estat,
           "unit" = "Index - 2015 = 100",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/ert_eff_ic_m__custom_19121885/default/table",
           "geo" = unique(reer_m_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "reer_q_estat" = 
      list("title" = "Real effective exchange rate (against 42 advanced economies), quarterly data",
           "data" = reer_q_estat,
           "unit" = "Index - 2015 = 100",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/ert_eff_ic_q__custom_19121891/default/table",
           "geo" = unique(reer_q_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "reer_a_estat" = 
      list("title" = "Real effective exchange rate (against 42 advanced economies), annual data",
           "data" = reer_a_estat,
           "unit" = "Index - 2015 = 100",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/ert_eff_ic_a__custom_19121899/default/table",
           "geo" = unique(reer_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "reermip_a_estat_2" =
      list("title" = "Real effective exchange rate (against 42 advanced economies), annual data",
           "data" = reermip_a_estat,
           "unit" = "3-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipser10__custom_19122344/default/table",
           "geo" = unique(reermip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      )
  ),
  
  "Inflation" = list(
    
    "infl_m_estat" = 
      list("title" = "Inflation, monthly data",
           "data" = infl_m_estat,
           "unit" = "1-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/prc_hicp_manr__custom_19121552/default/table",
           "geo" = unique(infl_m_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "infl_a_estat" = 
      list("title" = "Inflation, annual data",
           "data" = infl_a_estat,
           "unit" = "Average 1-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/prc_hicp_aind__custom_19121545/default/table",
           "geo" = unique(infl_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "infdiff_a_estat_mip_2" =
      list("title" = "Core inflation differential vis-à-vis the euro area, annual data",
           "data" = infdiff_a_estat_mip,
           "unit" = "Percentage points",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipscp10__custom_19122112/default/table",
           "geo" = unique(infdiff_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "infl_a_wb" =
      list("title" = "Inflation, annual data",
           "data" = infl_a_wb,
           "unit" = "1-year % change",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "geo" = unique(infl_a_wb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      )
  ),
  
  "Interest rates" = list(
    
    "gbyemu_m_estat" = 
      list("title" = "Government bond yields (EMU convergence data) - 10 year maturity, monthly data",
           "data" = gbyemu_m_estat,
           "unit" = "%",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/irt_lt_mcby_m__custom_19121918/default/table",
           "geo" = unique(gbyemu_m_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "gbyemu_q_estat" = 
      list("title" = "Government bond yields (EMU convergence data) - 10 year maturity, quarterly data",
           "data" = gbyemu_q_estat,
           "unit" = "%",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/irt_lt_mcby_q__custom_19121928/default/table",
           "geo" = unique(gbyemu_q_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "gbyemu_a_estat" = 
      list("title" = "Government bond yields (EMU convergence data) - 10 year maturity, annual data",
           "data" = gbyemu_a_estat,
           "unit" = "%",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/irt_lt_mcby_a__custom_19121932/default/table",
           "geo" = unique(gbyemu_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "gby_m_estat" = 
      list("title" = "Government bond yields - 10 year maturity, monthly data",
           "data" = gby_m_estat,
           "unit" = "%",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/irt_lt_gby10_m__custom_19121907/default/table",
           "geo" = unique(gby_m_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "gby_a_estat" = 
      list("title" = "Government bond yields - 10 year maturity, annual data",
           "data" = gby_a_estat,
           "unit" = "%",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/irt_lt_gby10_a__custom_19121912/default/table",
           "geo" = unique(gby_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "mmir_m_estat" = 
      list("title" = "Money market interest rates (3-month rate), monthly data",
           "data" = mmir_m_estat,
           "unit" = "%",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/irt_st_m__custom_19121938/default/table",
           "geo" = unique(mmir_m_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "mmir_q_estat" = 
      list("title" = "Money market interest rates (3-month rate), quarterly data",
           "data" = mmir_q_estat,
           "unit" = "%",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/irt_st_q__custom_19121941/default/table",
           "geo" = unique(mmir_q_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "mmir_a_estat" = 
      list("title" = "Money market interest rates (3-month rate), annual data",
           "data" = mmir_a_estat,
           "unit" = "%",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/irt_st_a__custom_19121947/default/table",
           "geo" = unique(mmir_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      )
  ),
  
  "Economic growth" = list(
    
    "gdp_q_estat" =
      list("title" = "Real GDP growth (seasonally and calendar adjusted), quarterly data",
           "data" = gdp_q_estat,
           "unit" = "1-quarter % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/namq_10_gdp__custom_19121538/default/table",
           "geo" = unique(gdp_q_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "gdp_a_estat" =
      list("title" = "Real GDP growth, annual data",
           "data" = gdp_a_estat,
           "unit" = "1-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/nama_10_gdp__custom_19121561/default/table",
           "geo" = unique(gdp_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "gdpcap_a_estat_mip_2" =
      list("title" = "Real GDP per capita, annual data",
           "data" = gdpcap_a_estat_mip,
           "unit" = "EUR",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsna40__custom_19122090/default/table",
           "geo" = unique(gdpcap_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "gfcf_a_estat_mip_2" =
      list("title" = "Investment in fixed assets (gross fixed capital formation), annual data",
           "data" = gfcf_a_estat_mip,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsna20__custom_19122093/default/table",
           "geo" = unique(gfcf_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    
    "gerd_a_estat_mip_2" =
      list("title" = "Gross expenditure on research and development, annual data",
           "data" = gerd_a_estat_mip,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsst10__custom_19122099/default/table",
           "geo" = unique(gerd_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "gdpg_a_wb" =
      list("title" = "Real GDP growth (constant 2015 prices), annual data",
           "data" = gdpg_a_wb,
           "unit" = "1-year % change",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "geo" = unique(gdpg_a_wb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "gdpcg_a_wb" =
      list("title" = "Real GDP per capita growth (constant 2015 prices), annual data",
           "data" = gdpcg_a_wb,
           "unit" = "1-year % change",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "geo" = unique(gdpcg_a_wb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "gdp_a_wb" =
      list("title" = "Real GDP, annual data",
           "data" = gdp_a_wb,
           "unit" = "2015 USD",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "geo" = unique(gdp_a_wb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "gdpc_a_wb" =
      list("title" = "Real GDP per capita, annual data",
           "data" = gdpc_a_wb,
           "unit" = "2015 USD",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "geo" = unique(gdpc_a_wb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      )
  ),
  
  "Housing" = list(
    
    "hpi_q_estat" =
      list("title" = "Nominal house price index, quarterly data",
           "data" = hpi_q_estat,
           "unit" = "Index - 2015 = 100",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/prc_hpi_q__custom_19121612/default/table",
           "geo" = unique(hpi_q_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "hpc_q_estat" =
      list("title" = "Nominal house price index, quarterly data",
           "data" = hpc_q_estat,
           "unit" = "1-quarter % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/prc_hpi_q__custom_19122422/default/table",
           "geo" = unique(hpc_q_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "hpca_q_estat" =
      list("title" = "Nominal house price index, quarterly data",
           "data" = hpca_q_estat,
           "unit" = "1-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/prc_hpi_q__custom_19121636/default/table",
           "geo" = unique(hpca_q_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "hpi_a_estat" =
      list("title" = "Nomnal house price index, annual data",
           "data" = hpi_a_estat,
           "unit" = "Annual average index - 2015 = 100",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/prc_hpi_a__custom_19121643/default/table",
           "geo" = unique(hpi_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "hpc_a_estat" =
      list("title" = "Nominal house price index, annual data",
           "data" = hpc_a_estat,
           "unit" = "Average 1-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/prc_hpi_a__custom_19121646/default/table",
           "geo" = unique(hpc_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "pti_a_estat_mip_2" =
      list("title" = "Standardised house price-to-income ratio, annual data",
           "data" = pti_a_estat_mip,
           "unit" = "% deviation from long term average",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsho60__custom_19122153/default/table",
           "geo" = unique(pti_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "buildp_a_estat_mip_2" =
      list("title" = "Building permits, annual data",
           "data" = buildp_a_estat_mip,
           "unit" = "m2 per 1000 inhabitants",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsho50__custom_19122160/default/table",
           "geo" = unique(buildp_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      )
  ),
  
  "Financial sector" = list(
    
    "tfsl_a_estat" =
      list("title" = "Total financial sector liabilites (non-consolidated), annual data",
           "data" = tfsl_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/nasa_10_f_bs__custom_19121953/default/table",
           "geo" = unique(tfsl_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "gnpls_a_ecb" =
      list("title" = "Gross non-performing loans, domestic and foreign entities, annual data",
           "data" = gnpls_a_ecb,
           "unit" = "% of gross loans",
           "source" = "European Central Bank",
           "link" = "https://data.ecb.europa.eu/data/datasets/CBD2?dataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29&advFilterDataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29",
           "geo" = unique(gnpls_a_ecb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "t1cr_a_ecb" =
      list("title" = "Tier-1 capital ratio banking sector, annual data",
           "data" = t1cr_a_ecb,
           "unit" = "% of risk-weighted assets",
           "source" = "European Central Bank",
           "link" = "https://data.ecb.europa.eu/data/datasets/CBD2?dataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29&advFilterDataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29",
           "geo" = unique(t1cr_a_ecb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "roeb_a_ecb" =
      list("title" = "Return on equity of banks, annual data",
           "data" = roeb_a_ecb,
           "unit" = "%",
           "source" = "European Central Bank",
           "link" = "https://data.ecb.europa.eu/data/datasets/CBD2?dataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29&advFilterDataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29",
           "geo" = unique(roeb_a_ecb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "cbl_a_ecb" =
      list("title" = "Consolidated banking leverage, domestic and foreign entities (asset-to-equity multiple), annual data",
           "data" = cbl_a_ecb,
           "unit" = "% of GDP",
           "source" = "European Central Bank",
           "link" = "https://data.ecb.europa.eu/data/datasets/CBD2?dataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29&advFilterDataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29",
           "geo" = unique(cbl_a_ecb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      )
  ),
  "International trade" = list(
    
    "exp_m_estat" =
      list("title" = "Export of goods (seasonally and calendar adjusted), monthly data",
           "data" = exp_m_estat,
           "unit" = "1-month % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/EXT_ST_27_2020MSBEC__custom_19495872/default/table",
           "geo" = unique(exp_m_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "imp_m_estat" =
      list("title" = "Import of goods (seasonally and calendar adjusted), monthly data",
           "data" = imp_m_estat,
           "unit" = "1-month % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/EXT_ST_27_2020MSBEC__custom_19495960/default/table",
           "geo" = unique(imp_m_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "expy_m_estat" =
      list("title" = "Export of goods, monthly data",
           "data" = expy_m_estat,
           "unit" = "1-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/EXT_ST_27_2020MSBEC__custom_19496074/default/table",
           "geo" = unique(expy_m_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "impy_m_estat" =
      list("title" = "Import of goods, monthly data",
           "data" = impy_m_estat,
           "unit" = "1-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/EXT_ST_27_2020MSBEC__custom_19496491/default/table",
           "geo" = unique(impy_m_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "expi_a_estat" =
      list("title" = "Export volume index (goods), annual data",
           "data" = expi_a_estat,
           "unit" = "Index - 2021 = 100",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tet00001__custom_19121579/default/table",
           "geo" = unique(expi_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "impi_a_estat" =
      list("title" = "Import volume index (goods), annual data",
           "data" = impi_a_estat,
           "unit" = "Index - 2021 = 100",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tet00001__custom_19496870/default/table",
           "geo" = unique(impi_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "epmip_a_estat_2" =
      list("title" = "Export performance against advanced economies, annual data",
           "data" = epmip_a_estat,
           "unit" = "3-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsbp60__custom_19122349/default/table",
           "geo" = unique(epmip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "ems_a_estat_mip_2" =
      list("title" = "Export market shares of world exports, annual data",
           "data" = ems_a_estat_mip,
           "unit" = "3-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsex10__custom_19122105/default/table",
           "geo" = unique(ems_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "ntbe_a_estat_mip_2" =
      list("title" = "Trade balance in energy, annual data",
           "data" = ntbe_a_estat_mip,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsen10__custom_19122087/default/table",
           "geo" = unique(ntbe_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "exp_a_wb" =
      list("title" = "Exports of goods and services, annual data",
           "data" = exp_a_wb,
           "unit" = "% of GDP",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "geo" = unique(exp_a_wb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "imp_a_wb" =
      list("title" = "Imports of goods and services, annual data",
           "data" = imp_a_wb,
           "unit" = "% of GDP",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "geo" = unique(imp_a_wb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      )
  ),
    
  
  "External balances" = list(
    
    "ca_q_estat" =
      list("title" = "Current account balance, quarterly data",
           "data" = ca_q_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/bop_gdp6_q__custom_19121687/default/table",
           "geo" = unique(ca_q_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "ca_a_estat" =
      list("title" = "Current account balance, annual data",
           "data" = ca_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/bop_gdp6_q__custom_19121669/default/table",
           "geo" = unique(ca_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "nlb_q_estat" =
      list("title" = "Net-lending borrowing (current plus capital account), quarterly data",
           "data" = nlb_q_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/bop_gdp6_q__custom_19121682/default/table",
           "geo" = unique(nlb_q_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "nlb_a_estat" =
      list("title" = "Net-lending borrowing (current plus capital account), annual data",
           "data" = nlb_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/bop_gdp6_q__custom_19121674/default/table",
           "geo" = unique(nlb_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "niip_q_estat" =
      list("title" = "Net international investment position, quarterly data",
           "data" = niip_q_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/bop_gdp6_q__custom_19121699/default/table",
           "geo" = unique(niip_q_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "niip_a_estat" =
      list("title" = "Net international investment position, annual data",
           "data" = niip_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/bop_gdp6_q__custom_19121708/default/table",
           "geo" = unique(niip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "camip_a_estat_2" =
      list("title" = "Current account balance, annual data",
           "data" = camip_a_estat,
           "unit" = "% of GDP - 3-year average",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsbp10__custom_19122337/default/table",
           "geo" = unique(camip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "nendi_a_estat_mip_2" =
      list("title" = "Net international investment position excluding non-defaultable instruments, annual data",
           "data" = nendi_a_estat_mip,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsii50__custom_19122073/default/table",
           "geo" = unique(nendi_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "ca_a_wb" =
      list("title" = "Current account balance, annual data",
           "data" = ca_a_wb,
           "unit" = "% of GDP",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "geo" = unique(ca_a_wb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "fdiin_a_wb" =
      list("title" = "Net inflows of foreign direct investment, annual data",
           "data" = fdiin_a_wb,
           "unit" = "% of GDP",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "geo" = unique(fdiin_a_wb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "fdiout_a_wb" =
      list("title" = "Net outflows of foreign direct investment, annual data",
           "data" = fdiout_a_wb,
           "unit" = "% of GDP",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "geo" = unique(fdiout_a_wb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      )
  ),
  
  "Fiscal" = list(
    
    "ggdef_q_estat" =
      list("title" = "General government balance (net lending-borrowing), quarterly data",
           "data" = ggdef_q_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/gov_10q_ggnfa__custom_19121591/default/table",
           "geo" = unique(ggdef_q_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "ggdef_a_estat" =
      list("title" = "General government balance (net lending-borrowing), annual data",
           "data" = ggdef_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/gov_10dd_edpt1__custom_19122425/default/table",
           "geo" = unique(ggdef_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "ggdeb_q_estat" =
      list("title" = "General government gross debt, quarterly data",
           "data" = ggdeb_q_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/gov_10q_ggdebt__custom_19121596/default/table",
           "geo" = unique(ggdeb_q_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "ggdeb_a_estat" =
      list("title" = "General government gross debt, annual data",
           "data" = ggdeb_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/gov_10dd_edpt1__custom_19121604/default/table",
           "geo" = unique(ggdeb_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      )
  ),
  
  "Private sector debt" = list(
    
    "hhdmip_a_estat_2" =
      list("title" = "Household debt (including non-profit institutions serving households), annual data",
           "data" = hhdmip_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipspd22__custom_19122360/default/table",
           "geo" = unique(hhdmip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "nfcdmip_a_estat_2" =
      list("title" = "Non-financial corporation debt, annual data",
           "data" = nfcdmip_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipspd30__custom_19122366/default/table",
           "geo" = unique(nfcdmip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "hhcfmip_a_estat_2" =
      list("title" = "Household credit flow (including non-profit institutions serving households), annual data",
           "data" = hhcfmip_a_estat,
           "unit" = "% of debt stock t-1",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipspc40__custom_19122368/default/table",
           "geo" = unique(hhcfmip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "nfccfmip_a_estat_2" =
      list("title" = "Non-financial corporation credit flow (excluding foreign direct investments), annual data",
           "data" = nfccfmip_a_estat,
           "unit" = "% of debt stock t-1 (excluding foreign direct investments)",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipspc30__custom_19122371/default/table",
           "geo" = unique(nfccfmip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "hhdgdi_a_estat_mip_2" =
      list("title" = "Household debt (including non-profit institutions serving households), annual data",
           "data" = hhdgdi_a_estat_mip,
           "unit" = "% of GDI",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipspd40__custom_19122114/default/table",
           "geo" = unique(hhdgdi_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      )
  ),
  
  "Productivity" = list(
    "nulcmip_a_estat_2" =
      list("title" = "Nominal unit labour cost per hour worked, annual data",
           "data" = nulcmip_a_estat,
           "unit" = "3-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm10__custom_19122351/default/table",
           "geo" = unique(nulcmip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "lpr_a_estat_mip_2" =
      list("title" = "Real labour productivity per hour worked, annual data",
           "data" = lpr_a_estat_mip,
           "unit" = "1-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsna70__custom_19122109/default/table",
           "geo" = unique(lpr_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      )
  ),
  
  "Labour market" = list(
    "une_m_estat" =
      list("title" = "Unemployment rate (seasonally adjusted), monthly data",
           "data" = une_m_estat,
           "unit" = "% of total labour force",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/une_rt_m__custom_19121564/default/table",
           "geo" = unique(une_m_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "une_q_estat" =
      list("title" = "Unemployment rate (seasonally adjusted), quarterly data",
           "data" = une_q_estat,
           "unit" = "% of labour force aged 15-74",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/une_rt_q__custom_19121570/default/table",
           "geo" = unique(une_q_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "une_a_estat" =
      list("title" = "Unemployment rate, annual data",
           "data" = une_a_estat,
           "unit" = "% of labour force aged 15-74",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/une_rt_a__custom_19121576/default/table",
           "geo" = unique(une_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "lfprmip_a_estat_2" =
      list("title" = "Labour force participation rate, annual data",
           "data" = lfprmip_a_estat,
           "unit" = "3-year change in percentage points",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm60__custom_19122385/default/table",
           "geo" = unique(lfprmip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "ltunem_a_estat_mip_2" =
      list("title" = "Long-term unemployment rate, annual data",
           "data" = ltunem_a_estat_mip,
           "unit" = "% of total population aged 15-74",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm70__custom_19122227/default/table",
           "geo" = unique(ltunem_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "yunem_a_estat_mip_2" =
      list("title" = "Youth unemployment rate, annual data",
           "data" = yunem_a_estat_mip,
           "unit" = "% of total population aged 15-24",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm80__custom_19122233/default/table",
           "geo" = unique(yunem_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "emp_a_estat_mip_2" =
      list("title" = "Employment rate, annual data",
           "data" = emp_a_estat_mip,
           "unit" = "% of total population aged 20-64",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm100__custom_19122238/default/table",
           "geo" = unique(emp_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    
    "neet_a_estat_mip_2" =
      list("title" = "Young people neither in employment nor in education or training, annual data",
           "data" = neet_a_estat_mip,
           "unit" = "% of total population aged 15-29",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm90__custom_19122241/default/table",
           "geo" = unique(neet_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      )
    
  ),
  
  "Social and poverty" = list(
    "arope_a_estat_mip_2" =
      list("title" = "People at risk of poverty or social exclusion, annual data",
           "data" = arope_a_estat_mip,
           "unit" = "% of total population",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslc10__custom_19122246/default/table",
           "geo" = unique(arope_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "arope1_a_estat_mip_2" =
      list("title" = "People at risk of poverty after social transfers, annual data",
           "data" = arope1_a_estat_mip,
           "unit" = "% of total population",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslc20__custom_19122247/default/table",
           "geo" = unique(arope1_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "arope2_a_estat_mip_2" =
      list("title" = "Severely materially and socially deprived people, annual data",
           "data" = arope2_a_estat_mip,
           "unit" = "% of total population",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslc30__custom_19122250/default/table",
           "geo" = unique(arope2_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "arope3_a_estat_mip_2" =
      list("title" = "People living in households with very low work intensity, annual data",
           "data" = arope3_a_estat_mip,
           "unit" = "% of total population aged 0-64",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslc40__custom_19122252/default/table",
           "geo" = unique(arope3_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "ist10_a_wb" =
      list("title" = "Income share held by top 10%, annual data",
           "data" = ist10_a_wb,
           "unit" = "%",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "geo" = unique(ist10_a_wb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "ist20_a_wb" =
      list("title" = "Income share held by top 20%, annual data",
           "data" = ist20_a_wb,
           "unit" = "%",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "geo" = unique(ist20_a_wb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "isl10_a_wb" =
      list("title" = "Income share held by lowest 10%, annual data",
           "data" = isl10_a_wb,
           "unit" = "%",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "geo" = unique(isl10_a_wb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "isl20_a_wb" =
      list("title" = "Income share held by lowest 20%, annual data",
           "data" = isl20_a_wb,
           "unit" = "%",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "geo" = unique(isl20_a_wb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "povhc3_a_wb" =
      list("title" = "Poverty headcount ratio at $3.00 a day (2021 PPP), annual data",
           "data" = povhc3_a_wb,
           "unit" = "% of population",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "geo" = unique(povhc3_a_wb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "povhc42_a_wb" =
      list("title" = "Poverty headcount ratio at $4.20 a day (2021 PPP), annual data",
           "data" = povhc42_a_wb,
           "unit" = "% of population",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "geo" = unique(povhc42_a_wb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "povhc83_a_wb" =
      list("title" = "Poverty headcount ratio at $8.30 a day (2021 PPP), annual data",
           "data" = povhc83_a_wb,
           "unit" = "% of population",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "geo" = unique(povhc83_a_wb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "povgap3_a_wb" =
      list("title" = "Poverty gap at $3.00 a day (2021 PPP), annual data",
           "data" = povgap3_a_wb,
           "unit" = "% of poverty line",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "geo" = unique(povgap3_a_wb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "povgap42_a_wb" =
      list("title" = "Poverty gap at $4.20 a day (2021 PPP), annual data",
           "data" = povgap42_a_wb,
           "unit" = "% of poverty line",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "geo" = unique(povgap42_a_wb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "povgap83_a_wb" =
      list("title" = "Poverty gap at $8.30 a day (2021 PPP), annual data",
           "data" = povgap83_a_wb,
           "unit" = "% of poverty line",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "geo" = unique(povgap83_a_wb$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      )
  ),
  
  "MIP Scoreboard indicators" = list(
    
    "camip_a_estat" =
      list("title" = "Current account balance, annual data",
           "data" = camip_a_estat,
           "unit" = "% of GDP - 3-year average",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsbp10__custom_19122337/default/table",
           "geo" = unique(camip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "niipmip_a_estat" =
      list("title" = "Net international investment position, annual data",
           "data" = niipmip_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsii10__custom_19122341/default/table",
           "geo" = unique(niipmip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "reermip_a_estat" =
      list("title" = "Real effective exchange rate (against 42 advanced economies), annual data",
           "data" = reermip_a_estat,
           "unit" = "3-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipser10__custom_19122344/default/table",
           "geo" = unique(reermip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "epmip_a_estat" =
      list("title" = "Export performance against advanced economies, annual data",
           "data" = epmip_a_estat,
           "unit" = "3-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsbp60__custom_19122349/default/table",
           "geo" = unique(epmip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "nulcmip_a_estat" =
      list("title" = "Nominal unit labour cost per hour worked, annual data",
           "data" = nulcmip_a_estat,
           "unit" = "3-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm10__custom_19122351/default/table",
           "geo" = unique(nulcmip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "ggdmip_a_estat" =
      list("title" = "General government gross debt, annual data",
           "data" = ggdmip_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsgo10__custom_19122357/default/table",
           "geo" = unique(ggdmip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "hhdmip_a_estat" =
      list("title" = "Household debt (including non-profit institutions serving households), annual data",
           "data" = hhdmip_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipspd22__custom_19122360/default/table",
           "geo" = unique(hhdmip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "nfcdmip_a_estat" =
      list("title" = "Non-financial corporation debt, annual data",
           "data" = nfcdmip_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipspd30__custom_19122366/default/table",
           "geo" = unique(nfcdmip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "hhcfmip_a_estat" =
      list("title" = "Household credit flow (including non-profit institutions serving households), annual data",
           "data" = hhcfmip_a_estat,
           "unit" = "% of debt stock t-1",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipspc40__custom_19122368/default/table",
           "geo" = unique(hhcfmip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "nfccfmip_a_estat" =
      list("title" = "Non-financial corporation credit flow (excluding foreign direct investments), annual data",
           "data" = nfccfmip_a_estat,
           "unit" = "% of debt stock t-1 (excluding foreign direct investments)",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipspc30__custom_19122371/default/table",
           "geo" = unique(nfccfmip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "hpimip_a_estat" =
      list("title" = "Nominal house price index, annual data",
           "data" = hpimip_a_estat,
           "unit" = "1-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsho20__custom_19122378/default/table",
           "geo" = unique(hpimip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "unemip_a_estat" =
      list("title" = "Unemployment rate, annual data",
           "data" = unemip_a_estat,
           "unit" = "% of labour force aged 15-74",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsun20__custom_19122382/default/table",
           "geo" = unique(unemip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "lfprmip_a_estat" =
      list("title" = "Labour force participation rate, annual data",
           "data" = lfprmip_a_estat,
           "unit" = "3-year change in percentage points",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm60__custom_19122385/default/table",
           "geo" = unique(lfprmip_a_estat$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      )
  ),
  
  "MIP Auxiliary indicators" = list(
    
    "nendi_a_estat_mip" =
      list("title" = "Net international investment position excluding non-defaultable instruments, annual data",
           "data" = nendi_a_estat_mip,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/032a1933-cf5f-4007-bedf-4febd4c495f6?lang=en&createdAt=2025-09-14T09:47:13Z",
           "geo" = unique(nendi_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    
    "nlb_a_estat_mip" =
      list("title" = "Net lending-borrowing (current plus capital account), annual data",
           "data" = nlb_a_estat_mip,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsbp70__custom_19122080/default/table",
           "geo" = unique(nlb_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    
    "ntbe_a_estat_mip" =
      list("title" = "Trade balance in energy, annual data",
           "data" = ntbe_a_estat_mip,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/032a1933-cf5f-4007-bedf-4febd4c495f6?lang=en&createdAt=2025-09-14T09:47:13Z",
           "geo" = unique(ntbe_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    
    "gdpcap_a_estat_mip" =
      list("title" = "Real GDP per capita, annual data",
           "data" = gdpcap_a_estat_mip,
           "unit" = "EUR",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsna40__custom_19122090/default/table",
           "geo" = unique(gdpcap_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    
    "gfcf_a_estat_mip" =
      list("title" = "Investment in fixed assets (gross fixed capital formation), annual data",
           "data" = gfcf_a_estat_mip,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsna20__custom_19122093/default/table",
           "geo" = unique(gfcf_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    
    "gerd_a_estat_mip" =
      list("title" = "Gross expenditure on research and development, annual data",
           "data" = gerd_a_estat_mip,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/bookmark/032a1933-cf5f-4007-bedf-4febd4c495f6?lang=en&createdAt=2025-09-14T09:47:13Z",
           "geo" = unique(gerd_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    
    "ems_a_estat_mip" =
      list("title" = "Export market shares of world exports, annual data",
           "data" = ems_a_estat_mip,
           "unit" = "3-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsex10__custom_19122105/default/table",
           "geo" = unique(ems_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    
    "lpr_a_estat_mip" =
      list("title" = "Real labour productivity per hour worked, annual data",
           "data" = lpr_a_estat_mip,
           "unit" = "1-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsna70__custom_19122109/default/table",
           "geo" = unique(lpr_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    
    "infdiff_a_estat_mip" =
      list("title" = "Core inflation differential vis-à-vis the euro area, annual data",
           "data" = infdiff_a_estat_mip,
           "unit" = "Percentage points",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipscp10__custom_19122112/default/table",
           "geo" = unique(infdiff_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    
    "hhdgdi_a_estat_mip" =
      list("title" = "Household debt (including non-profit institutions serving households), annual data",
           "data" = hhdgdi_a_estat_mip,
           "unit" = "% of GDI",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipspd40__custom_19122114/default/table",
           "geo" = unique(hhdgdi_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    
    "gnpls_a_estat_mip" =
      list("title" = "Gross non-performing loans, domestic and foreign entities, annual data",
           "data" = gnpls_a_estat_mip,
           "unit" = "% of gross loans",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsbd10__custom_19122134/default/table",
           "geo" = unique(gnpls_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "t1cr_a_estat_mip" =
      list("title" = "Tier-1 capital ratio banking sector, annual data",
           "data" = t1cr_a_estat_mip,
           "unit" = "% of risk-weighted assets",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsbd30__custom_19122143/default/table",
           "geo" = unique(t1cr_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "roeb_a_estat_mip" =
      list("title" = "Return on equity of banks, annual data",
           "data" = roeb_a_estat_mip,
           "unit" = "%",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsbd40__custom_19122149/default/table",
           "geo" = unique(roeb_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "pti_a_estat_mip" =
      list("title" = "Standardised house price-to-income ratio, annual data",
           "data" = pti_a_estat_mip,
           "unit" = "% deviation from long term average",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsho60__custom_19122153/default/table",
           "geo" = unique(pti_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "buildp_a_estat_mip" =
      list("title" = "Building permits, annual data",
           "data" = buildp_a_estat_mip,
           "unit" = "m2 per 1000 inhabitants",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsho50__custom_19122160/default/table",
           "geo" = unique(buildp_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "ltunem_a_estat_mip" =
      list("title" = "Long-term unemployment rate, annual data",
           "data" = ltunem_a_estat_mip,
           "unit" = "% of total population aged 15-74",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm70__custom_19122227/default/table",
           "geo" = unique(ltunem_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "yunem_a_estat_mip" =
      list("title" = "Youth unemployment rate, annual data",
           "data" = yunem_a_estat_mip,
           "unit" = "% of total population aged 15-24",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm80__custom_19122233/default/table",
           "geo" = unique(yunem_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "emp_a_estat_mip" =
      list("title" = "Employment rate, annual data",
           "data" = emp_a_estat_mip,
           "unit" = "% of total population aged 20-64",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm100__custom_19122238/default/table",
           "geo" = unique(emp_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    
    "neet_a_estat_mip" =
      list("title" = "Young people neither in employment nor in education or training, annual data",
           "data" = neet_a_estat_mip,
           "unit" = "% of total population aged 15-29",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm90__custom_19122241/default/table",
           "geo" = unique(neet_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "arope_a_estat_mip" =
      list("title" = "People at risk of poverty or social exclusion, annual data",
           "data" = arope_a_estat_mip,
           "unit" = "% of total population",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslc10__custom_19122246/default/table",
           "geo" = unique(arope_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "arope1_a_estat_mip" =
      list("title" = "People at risk of poverty after social transfers, annual data",
           "data" = arope1_a_estat_mip,
           "unit" = "% of total population",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslc20__custom_19122247/default/table",
           "geo" = unique(arope1_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "arope2_a_estat_mip" =
      list("title" = "Severely materially and socially deprived people, annual data",
           "data" = arope2_a_estat_mip,
           "unit" = "% of total population",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslc30__custom_19122250/default/table",
           "geo" = unique(arope2_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      ),
    "arope3_a_estat_mip" =
      list("title" = "People living in households with very low work intensity, annual data",
           "data" = arope3_a_estat_mip,
           "unit" = "% of total population aged 0-64",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslc40__custom_19122252/default/table",
           "geo" = unique(arope3_a_estat_mip$geo),
           "dropdown" = "geo",
           "contains_geo" = TRUE
      )
  )
)

