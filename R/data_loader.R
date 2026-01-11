# Script loading data from different SDMX databases, and storing it into one list
# Dataloading from IMF and OECD are not yet implemented


# Eurostat

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


# European Central Bank

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
    gnpls_a_ecb <- as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y"),
                                     ccode = "EC"))
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
    t1cr_a_ecb <- as.data.table(mds(sdmx_code, startPeriod = format(Sys.Date() - (20*YEAR), "%Y"),
                                    ccode = "EC"))
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
                                    startPeriod = format(Sys.Date() - (20*YEAR), "%Y"),
                                    ccode = "EC"))
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
                                   startPeriod = format(Sys.Date() - (20*YEAR), "%Y"), 
                                   ccode = "EC"))
    setnames(cbl_a_ecb, "REF_AREA", "geo")
  },
  error = function(e) {
    cat("Error loading cbl_a_ecb:", e$message, "\n")
    data.table()
  }
)


# International Monetary Fund

#HICP
### year on year inflation, monthly
#infl_m_imf <- as.data.table(mds("IMF_DATA/CPI/.HICP._T.YOY_PCH_PA_PT.M", startPeriod = format(Sys.Date() - (20*MONTH), "%Y-%m")))
#ccode(infl_m_imf$COUNTRY, "iso3c", "iso2c")
#setnames(infl_m_imf, "COUNTRY", "geo")

### year on year inflation, quarterly
#mds("IMF_DATA/CPI/.HICP._T.YOY_PCH_PA_PT.Q", startPeriod = format(Sys.Date() - (20*QUARTER), "%Y-%m"))
### year on year inflation, annual
#mds("IMF_DATA/CPI/.HICP._T.YOY_PCH_PA_PT.A", startPeriod = format(Sys.Date() - (20*YEAR), "%Y"))

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


# World Bank

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

# Organisation for economic cooperation and development
# Government debt
# Government deficit
# Inflation
# GDP growth


#EU B0 57
#EA U2 47


# Merge into one list
raw_data_list <- list(
  
  "Exchange rates" = list(
    
    "exreur_d_ecb" = 
      list("title" = "Exchange rates in Euro, daily data",
           "data" = exreur_d_ecb,
           "unit" = "Currency per Euro",
           "source" = "European Central Bank",
           "link" = "https://data.ecb.europa.eu/main-figures/ecb-interest-rates-and-exchange-rates/exchange-rates",
           "dropdown" = "CURRENCY"
      ),
    
    "reer_m_estat" = 
      list("title" = "Real effective exchange rate (against 42 advanced economies), monthly data",
           "data" = reer_m_estat,
           "unit" = "Index - 2015 = 100",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/ert_eff_ic_m__custom_19121885/default/table",
           "dropdown" = "geo"
      ),
    
    "reer_q_estat" = 
      list("title" = "Real effective exchange rate (against 42 advanced economies), quarterly data",
           "data" = reer_q_estat,
           "unit" = "Index - 2015 = 100",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/ert_eff_ic_q__custom_19121891/default/table",
           "dropdown" = "geo",
           "filter" = "COMP5"
      ),
    
    "reer_a_estat" = 
      list("title" = "Real effective exchange rate (against 42 advanced economies), annual data",
           "data" = reer_a_estat,
           "unit" = "Index - 2015 = 100",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/ert_eff_ic_a__custom_19121899/default/table",
           "dropdown" = "geo"
      ),
    
    "reermip_a_estat_2" =
      list("title" = "Real effective exchange rate (against 42 advanced economies), annual data",
           "data" = reermip_a_estat,
           "unit" = "3-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipser10__custom_19122344/default/table",
           "dropdown" = "geo"
      )
  ),
  
  "Inflation" = list(
    
    "infl_m_estat" = 
      list("title" = "Inflation, monthly data",
           "data" = infl_m_estat,
           "unit" = "1-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/prc_hicp_manr__custom_19121552/default/table",
           "dropdown" = "geo"
      ),
    
    "infl_a_estat" = 
      list("title" = "Inflation, annual data",
           "data" = infl_a_estat,
           "unit" = "Average 1-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/prc_hicp_aind__custom_19121545/default/table",
           "dropdown" = "geo"
      ),
    
    "infdiff_a_estat_mip_2" =
      list("title" = "Core inflation differential vis-à-vis the euro area, annual data",
           "data" = infdiff_a_estat_mip,
           "unit" = "Percentage points",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipscp10__custom_19122112/default/table",
           "dropdown" = "geo"
      ),
    
    "infl_a_wb" =
      list("title" = "Inflation, annual data",
           "data" = infl_a_wb,
           "unit" = "1-year % change",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "dropdown" = "geo"
      )
  ),
  
  "Economic growth" = list(
    
    "gdp_q_estat" =
      list("title" = "Real GDP growth (seasonally and calendar adjusted), quarterly data",
           "data" = gdp_q_estat,
           "unit" = "1-quarter % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/namq_10_gdp__custom_19121538/default/table",
           "dropdown" = "geo"
      ),
    
    "gdp_a_estat" =
      list("title" = "Real GDP growth, annual data",
           "data" = gdp_a_estat,
           "unit" = "1-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/nama_10_gdp__custom_19121561/default/table",
           "dropdown" = "geo"
      ),
    
    "gdpcap_a_estat_mip_2" =
      list("title" = "Real GDP per capita, annual data",
           "data" = gdpcap_a_estat_mip,
           "unit" = "EUR",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsna40__custom_19122090/default/table",
           "dropdown" = "geo"
      ),
    
    "gfcf_a_estat_mip_2" =
      list("title" = "Investment in fixed assets (gross fixed capital formation), annual data",
           "data" = gfcf_a_estat_mip,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsna20__custom_19122093/default/table",
           "dropdown" = "geo"
      ),
    
    "gerd_a_estat_mip_2" =
      list("title" = "Gross expenditure on research and development, annual data",
           "data" = gerd_a_estat_mip,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsst10__custom_19122099/default/table",
           "dropdown" = "geo"
      ),
    
    "gdpg_a_wb" =
      list("title" = "Real GDP growth (constant 2015 prices), annual data",
           "data" = gdpg_a_wb,
           "unit" = "1-year % change",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "dropdown" = "geo"
      ),
    
    "gdpcg_a_wb" =
      list("title" = "Real GDP per capita growth (constant 2015 prices), annual data",
           "data" = gdpcg_a_wb,
           "unit" = "1-year % change",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "dropdown" = "geo"
      ),
    
    "gdp_a_wb" =
      list("title" = "Real GDP, annual data",
           "data" = gdp_a_wb,
           "unit" = "2015 USD",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "dropdown" = "geo"
      ),
    
    "gdpc_a_wb" =
      list("title" = "Real GDP per capita, annual data",
           "data" = gdpc_a_wb,
           "unit" = "2015 USD",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "dropdown" = "geo"
      )
  ),
  
  "External sector" = list(
    
    "exp_m_estat" =
      list("title" = "Export of goods (seasonally and calendar adjusted), monthly data",
           "data" = exp_m_estat,
           "unit" = "1-month % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/EXT_ST_27_2020MSBEC__custom_19495872/default/table",
           "dropdown" = "geo"
      ),
    
    "imp_m_estat" =
      list("title" = "Import of goods (seasonally and calendar adjusted), monthly data",
           "data" = imp_m_estat,
           "unit" = "1-month % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/EXT_ST_27_2020MSBEC__custom_19495960/default/table",
           "dropdown" = "geo"
      ),
    
    "expy_m_estat" =
      list("title" = "Export of goods, monthly data",
           "data" = expy_m_estat,
           "unit" = "1-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/EXT_ST_27_2020MSBEC__custom_19496074/default/table",
           "dropdown" = "geo"
      ),
    
    "impy_m_estat" =
      list("title" = "Import of goods, monthly data",
           "data" = impy_m_estat,
           "unit" = "1-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/EXT_ST_27_2020MSBEC__custom_19496491/default/table",
           "dropdown" = "geo"
      ),
    
    "expi_a_estat" =
      list("title" = "Export volume index (goods), annual data",
           "data" = expi_a_estat,
           "unit" = "Index - 2021 = 100",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tet00001__custom_19608344/default/table",
           "dropdown" = "geo"
      ),
    
    "impi_a_estat" =
      list("title" = "Import volume index (goods), annual data",
           "data" = impi_a_estat,
           "unit" = "Index - 2021 = 100",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tet00001__custom_19608358/default/table",
           "dropdown" = "geo"
      ),
    
    "epmip_a_estat_2" =
      list("title" = "Export performance against advanced economies, annual data",
           "data" = epmip_a_estat,
           "unit" = "3-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsbp60__custom_19122349/default/table",
           "dropdown" = "geo"
      ),
    
    "ems_a_estat_mip_2" =
      list("title" = "Export market shares of world exports, annual data",
           "data" = ems_a_estat_mip,
           "unit" = "3-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsex10__custom_19122105/default/table",
           "dropdown" = "geo"
      ),
    
    "ntbe_a_estat_mip_2" =
      list("title" = "Trade balance in energy, annual data",
           "data" = ntbe_a_estat_mip,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsen10__custom_19122087/default/table",
           "dropdown" = "geo"
      ),
    
    "exp_a_wb" =
      list("title" = "Exports of goods and services, annual data",
           "data" = exp_a_wb,
           "unit" = "% of GDP",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "dropdown" = "geo"
      ),
    
    "imp_a_wb" =
      list("title" = "Imports of goods and services, annual data",
           "data" = imp_a_wb,
           "unit" = "% of GDP",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "dropdown" = "geo"
      ),
    
    "ca_q_estat" =
      list("title" = "Current account balance, quarterly data",
           "data" = ca_q_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/bop_gdp6_q__custom_19121687/default/table",
           "dropdown" = "geo"
      ),
    
    "ca_a_estat" =
      list("title" = "Current account balance, annual data",
           "data" = ca_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/bop_gdp6_q__custom_19121669/default/table",
           "dropdown" = "geo"
      ),
    
    "nlb_q_estat" =
      list("title" = "Net-lending borrowing (current plus capital account), quarterly data",
           "data" = nlb_q_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/bop_gdp6_q__custom_19121682/default/table",
           "dropdown" = "geo"
      ),
    
    "nlb_a_estat" =
      list("title" = "Net-lending borrowing (current plus capital account), annual data",
           "data" = nlb_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/bop_gdp6_q__custom_19121674/default/table",
           "dropdown" = "geo"
      ),
    
    "niip_q_estat" =
      list("title" = "Net international investment position, quarterly data",
           "data" = niip_q_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/bop_gdp6_q__custom_19121699/default/table",
           "dropdown" = "geo"
      ),
    
    "niip_a_estat" =
      list("title" = "Net international investment position, annual data",
           "data" = niip_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/bop_gdp6_q__custom_19121708/default/table",
           "dropdown" = "geo"
      ),
    
    "camip_a_estat_2" =
      list("title" = "Current account balance, annual data",
           "data" = camip_a_estat,
           "unit" = "% of GDP - 3-year average",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsbp10__custom_19122337/default/table",
           "dropdown" = "geo"
      ),
    
    "nendi_a_estat_mip_2" =
      list("title" = "Net international investment position excluding non-defaultable instruments, annual data",
           "data" = nendi_a_estat_mip,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsii50__custom_19122073/default/table",
           "dropdown" = "geo"
      ),
    
    "ca_a_wb" =
      list("title" = "Current account balance, annual data",
           "data" = ca_a_wb,
           "unit" = "% of GDP",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "dropdown" = "geo"
      ),
    
    "fdiin_a_wb" =
      list("title" = "Net inflows of foreign direct investment, annual data",
           "data" = fdiin_a_wb,
           "unit" = "% of GDP",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "dropdown" = "geo"
      ),
    
    "fdiout_a_wb" =
      list("title" = "Net outflows of foreign direct investment, annual data",
           "data" = fdiout_a_wb,
           "unit" = "% of GDP",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "dropdown" = "geo"
      )
  ),
  
  "Fiscal" = list(
    
    "ggdef_q_estat" =
      list("title" = "General government balance (net lending-borrowing), quarterly data",
           "data" = ggdef_q_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/gov_10q_ggnfa__custom_19121591/default/table",
           "dropdown" = "geo"
      ),
    
    "ggdef_a_estat" =
      list("title" = "General government balance (net lending-borrowing), annual data",
           "data" = ggdef_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/gov_10dd_edpt1__custom_19122425/default/table",
           "dropdown" = "geo"
      ),
    
    "ggdeb_q_estat" =
      list("title" = "General government gross debt, quarterly data",
           "data" = ggdeb_q_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/gov_10q_ggdebt__custom_19121596/default/table",
           "dropdown" = "geo"
      ),
    
    "ggdeb_a_estat" =
      list("title" = "General government gross debt, annual data",
           "data" = ggdeb_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/gov_10dd_edpt1__custom_19121604/default/table",
           "dropdown" = "geo"
      )
  ),
  
  "Interest rates" = list(
    
    "gbyemu_m_estat" = 
      list("title" = "Government bond yields (EMU convergence data) - 10 year maturity, monthly data",
           "data" = gbyemu_m_estat,
           "unit" = "%",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/irt_lt_mcby_m__custom_19121918/default/table",
           "dropdown" = "geo"
      ),
    
    "gbyemu_q_estat" = 
      list("title" = "Government bond yields (EMU convergence data) - 10 year maturity, quarterly data",
           "data" = gbyemu_q_estat,
           "unit" = "%",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/irt_lt_mcby_q__custom_19121928/default/table",
           "dropdown" = "geo"
      ),
    
    "gbyemu_a_estat" = 
      list("title" = "Government bond yields (EMU convergence data) - 10 year maturity, annual data",
           "data" = gbyemu_a_estat,
           "unit" = "%",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/irt_lt_mcby_a__custom_19121932/default/table",
           "dropdown" = "geo"
      ),
    
    "gby_m_estat" = 
      list("title" = "Government bond yields - 10 year maturity, monthly data",
           "data" = gby_m_estat,
           "unit" = "%",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/irt_lt_gby10_m__custom_19121907/default/table",
           "dropdown" = "geo"
      ),
    
    "gby_a_estat" = 
      list("title" = "Government bond yields - 10 year maturity, annual data",
           "data" = gby_a_estat,
           "unit" = "%",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/irt_lt_gby10_a__custom_19121912/default/table",
           "dropdown" = "geo"
      ),
    
    "mmir_m_estat" = 
      list("title" = "Money market interest rates (3-month rate), monthly data",
           "data" = mmir_m_estat,
           "unit" = "%",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/irt_st_m__custom_19121938/default/table",
           "dropdown" = "geo"
      ),
    
    "mmir_q_estat" = 
      list("title" = "Money market interest rates (3-month rate), quarterly data",
           "data" = mmir_q_estat,
           "unit" = "%",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/irt_st_q__custom_19121941/default/table",
           "dropdown" = "geo"
      ),
    
    "mmir_a_estat" = 
      list("title" = "Money market interest rates (3-month rate), annual data",
           "data" = mmir_a_estat,
           "unit" = "%",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/irt_st_a__custom_19121947/default/table",
           "dropdown" = "geo"
      )
  ),
  
  "Financial sector" = list(
    
    "tfsl_a_estat" =
      list("title" = "Total financial sector liabilites (non-consolidated), annual data",
           "data" = tfsl_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/nasa_10_f_bs__custom_19121953/default/table",
           "dropdown" = "geo"
      ),
    
    "gnpls_a_ecb" =
      list("title" = "Gross non-performing loans, domestic and foreign entities, annual data",
           "data" = gnpls_a_ecb,
           "unit" = "% of gross loans",
           "source" = "European Central Bank",
           "link" = "https://data.ecb.europa.eu/data/datasets/CBD2?dataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29&advFilterDataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29",
           "dropdown" = "geo"
      ),
    
    "t1cr_a_ecb" =
      list("title" = "Tier-1 capital ratio banking sector, annual data",
           "data" = t1cr_a_ecb,
           "unit" = "% of risk-weighted assets",
           "source" = "European Central Bank",
           "link" = "https://data.ecb.europa.eu/data/datasets/CBD2?dataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29&advFilterDataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29",
           "dropdown" = "geo"
      ),
    
    "roeb_a_ecb" =
      list("title" = "Return on equity of banks, annual data",
           "data" = roeb_a_ecb,
           "unit" = "%",
           "source" = "European Central Bank",
           "link" = "https://data.ecb.europa.eu/data/datasets/CBD2?dataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29&advFilterDataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29",
           "dropdown" = "geo"
      ),
    
    "cbl_a_ecb" =
      list("title" = "Consolidated banking leverage, domestic and foreign entities (asset-to-equity multiple), annual data",
           "data" = cbl_a_ecb,
           "unit" = "% of GDP",
           "source" = "European Central Bank",
           "link" = "https://data.ecb.europa.eu/data/datasets/CBD2?dataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29&advFilterDataset%5B0%5D=Consolidated%20Banking%20data%20%28CBD2%29",
           "dropdown" = "geo"
      )
  ),
  
  "Housing" = list(
    
    "hpi_q_estat" =
      list("title" = "Nominal house price index, quarterly data",
           "data" = hpi_q_estat,
           "unit" = "Index - 2015 = 100",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/prc_hpi_q__custom_19608526/default/table",
           "dropdown" = "geo"
      ),
    
    "hpc_q_estat" =
      list("title" = "Nominal house price index, quarterly data",
           "data" = hpc_q_estat,
           "unit" = "1-quarter % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/prc_hpi_q__custom_19608536/default/table",
           "dropdown" = "geo"
      ),
    
    "hpca_q_estat" =
      list("title" = "Nominal house price index, quarterly data",
           "data" = hpca_q_estat,
           "unit" = "1-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/prc_hpi_q__custom_19608543/default/table",
           "dropdown" = "geo"
      ),
    
    "hpi_a_estat" =
      list("title" = "Nomnal house price index, annual data",
           "data" = hpi_a_estat,
           "unit" = "Annual average index - 2015 = 100",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/prc_hpi_a__custom_19608552/default/table",
           "dropdown" = "geo"
      ),
    
    "hpc_a_estat" =
      list("title" = "Nominal house price index, annual data",
           "data" = hpc_a_estat,
           "unit" = "Average 1-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/prc_hpi_a__custom_19608563/default/table",
           "dropdown" = "geo"
      ),
    
    "pti_a_estat_mip_2" =
      list("title" = "Standardised house price-to-income ratio, annual data",
           "data" = pti_a_estat_mip,
           "unit" = "% deviation from long term average",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsho60__custom_19608575/default/table",
           "dropdown" = "geo"
      ),
    
    "buildp_a_estat_mip_2" =
      list("title" = "Building permits, annual data",
           "data" = buildp_a_estat_mip,
           "unit" = "m2 per 1000 inhabitants",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsho50__custom_19122160/default/table",
           "dropdown" = "geo"
      )
  ),
  
  "Private sector debt" = list(
    
    "hhdmip_a_estat_2" =
      list("title" = "Household debt (including non-profit institutions serving households), annual data",
           "data" = hhdmip_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipspd22__custom_19122360/default/table",
           "dropdown" = "geo"
      ),
    
    "nfcdmip_a_estat_2" =
      list("title" = "Non-financial corporation debt, annual data",
           "data" = nfcdmip_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipspd30__custom_19122366/default/table",
           "dropdown" = "geo"
      ),
    
    "hhcfmip_a_estat_2" =
      list("title" = "Household credit flow (including non-profit institutions serving households), annual data",
           "data" = hhcfmip_a_estat,
           "unit" = "% of debt stock t-1",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipspc40__custom_19122368/default/table",
           "dropdown" = "geo"
      ),
    
    "nfccfmip_a_estat_2" =
      list("title" = "Non-financial corporation credit flow (excluding foreign direct investments), annual data",
           "data" = nfccfmip_a_estat,
           "unit" = "% of debt stock t-1 (excluding foreign direct investments)",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipspc30__custom_19122371/default/table",
           "dropdown" = "geo"
      ),
    
    "hhdgdi_a_estat_mip_2" =
      list("title" = "Household debt (including non-profit institutions serving households), annual data",
           "data" = hhdgdi_a_estat_mip,
           "unit" = "% of GDI",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipspd40__custom_19122114/default/table",
           "dropdown" = "geo"
      )
  ),
  
  "Productivity" = list(
    
    "nulcmip_a_estat_2" =
      list("title" = "Nominal unit labour cost per hour worked, annual data",
           "data" = nulcmip_a_estat,
           "unit" = "3-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm10__custom_19122351/default/table",
           "dropdown" = "geo"
      ),
    
    "lpr_a_estat_mip_2" =
      list("title" = "Real labour productivity per hour worked, annual data",
           "data" = lpr_a_estat_mip,
           "unit" = "1-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsna70__custom_19122109/default/table",
           "dropdown" = "geo"
      )
  ),
  
  "Labour market" = list(
    
    "une_m_estat" =
      list("title" = "Unemployment rate (seasonally adjusted), monthly data",
           "data" = une_m_estat,
           "unit" = "% of total labour force",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/une_rt_m__custom_19608640/default/table",
           "dropdown" = "geo"
      ),
    
    "une_q_estat" =
      list("title" = "Unemployment rate (seasonally adjusted), quarterly data",
           "data" = une_q_estat,
           "unit" = "% of labour force aged 15-74",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/une_rt_q__custom_19608648/default/table",
           "dropdown" = "geo"
      ),
    
    "une_a_estat" =
      list("title" = "Unemployment rate, annual data",
           "data" = une_a_estat,
           "unit" = "% of labour force aged 15-74",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/une_rt_a__custom_19608671/default/table",
           "dropdown" = "geo"
      ),
    
    "lfprmip_a_estat_2" =
      list("title" = "Labour force participation rate, annual data",
           "data" = lfprmip_a_estat,
           "unit" = "3-year change in percentage points",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm60__custom_19608676/default/table",
           "dropdown" = "geo"
      ),
    
    "ltunem_a_estat_mip_2" =
      list("title" = "Long-term unemployment rate, annual data",
           "data" = ltunem_a_estat_mip,
           "unit" = "% of total population aged 15-74",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm70__custom_19608680/default/table",
           "dropdown" = "geo"
      ),
    
    "yunem_a_estat_mip_2" =
      list("title" = "Youth unemployment rate, annual data",
           "data" = yunem_a_estat_mip,
           "unit" = "% of total population aged 15-24",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm80__custom_19608684/default/table",
           "dropdown" = "geo"
      ),
    
    "emp_a_estat_mip_2" =
      list("title" = "Employment rate, annual data",
           "data" = emp_a_estat_mip,
           "unit" = "% of total population aged 20-64",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm100__custom_19608686/default/table",
           "dropdown" = "geo"
      ),
    
    "neet_a_estat_mip_2" =
      list("title" = "Young people neither in employment nor in education or training, annual data",
           "data" = neet_a_estat_mip,
           "unit" = "% of total population aged 15-29",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm90__custom_19608691/default/table",
           "dropdown" = "geo"
      )
    
  ),
  
  "Social and poverty" = list(
    
    "arope_a_estat_mip_2" =
      list("title" = "People at risk of poverty or social exclusion, annual data",
           "data" = arope_a_estat_mip,
           "unit" = "% of total population",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslc10__custom_19122246/default/table",
           "dropdown" = "geo"
      ),
    
    "arope1_a_estat_mip_2" =
      list("title" = "People at risk of poverty after social transfers, annual data",
           "data" = arope1_a_estat_mip,
           "unit" = "% of total population",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslc20__custom_19122247/default/table",
           "dropdown" = "geo"
      ),
    
    "arope2_a_estat_mip_2" =
      list("title" = "Severely materially and socially deprived people, annual data",
           "data" = arope2_a_estat_mip,
           "unit" = "% of total population",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslc30__custom_19122250/default/table",
           "dropdown" = "geo"
      ),
    
    "arope3_a_estat_mip_2" =
      list("title" = "People living in households with very low work intensity, annual data",
           "data" = arope3_a_estat_mip,
           "unit" = "% of total population aged 0-64",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslc40__custom_19122252/default/table",
           "dropdown" = "geo"
      ),
    
    "ist10_a_wb" =
      list("title" = "Income share held by top 10%, annual data",
           "data" = ist10_a_wb,
           "unit" = "%",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "dropdown" = "geo"
      ),
    
    "ist20_a_wb" =
      list("title" = "Income share held by top 20%, annual data",
           "data" = ist20_a_wb,
           "unit" = "%",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "dropdown" = "geo"
      ),
    
    "isl10_a_wb" =
      list("title" = "Income share held by lowest 10%, annual data",
           "data" = isl10_a_wb,
           "unit" = "%",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "dropdown" = "geo"
      ),
    
    "isl20_a_wb" =
      list("title" = "Income share held by lowest 20%, annual data",
           "data" = isl20_a_wb,
           "unit" = "%",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "dropdown" = "geo"
      ),
    
    "povhc3_a_wb" =
      list("title" = "Poverty headcount ratio at $3.00 a day (2021 PPP), annual data",
           "data" = povhc3_a_wb,
           "unit" = "% of population",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "dropdown" = "geo"
      ),
    
    "povhc42_a_wb" =
      list("title" = "Poverty headcount ratio at $4.20 a day (2021 PPP), annual data",
           "data" = povhc42_a_wb,
           "unit" = "% of population",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "dropdown" = "geo"
      ),
    
    "povhc83_a_wb" =
      list("title" = "Poverty headcount ratio at $8.30 a day (2021 PPP), annual data",
           "data" = povhc83_a_wb,
           "unit" = "% of population",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "dropdown" = "geo"
      ),
    
    "povgap3_a_wb" =
      list("title" = "Poverty gap at $3.00 a day (2021 PPP), annual data",
           "data" = povgap3_a_wb,
           "unit" = "% of poverty line",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "dropdown" = "geo"
      ),
    
    "povgap42_a_wb" =
      list("title" = "Poverty gap at $4.20 a day (2021 PPP), annual data",
           "data" = povgap42_a_wb,
           "unit" = "% of poverty line",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "dropdown" = "geo"
      ),
    
    "povgap83_a_wb" =
      list("title" = "Poverty gap at $8.30 a day (2021 PPP), annual data",
           "data" = povgap83_a_wb,
           "unit" = "% of poverty line",
           "source" = "World Bank",
           "link" = "https://databank.worldbank.org/source/world-development-indicators",
           "dropdown" = "geo"
      )
  ),
  
  "MIP Scoreboard indicators" = list(
    
    "camip_a_estat" =
      list("title" = "Current account balance, annual data",
           "data" = camip_a_estat,
           "unit" = "% of GDP - 3-year average",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsbp10__custom_19122337/default/table",
           "dropdown" = "geo"
      ),
    
    "niipmip_a_estat" =
      list("title" = "Net international investment position, annual data",
           "data" = niipmip_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsii10__custom_19122341/default/table",
           "dropdown" = "geo"
      ),
    
    "reermip_a_estat" =
      list("title" = "Real effective exchange rate (against 42 advanced economies), annual data",
           "data" = reermip_a_estat,
           "unit" = "3-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipser10__custom_19122344/default/table",
           "dropdown" = "geo"
      ),
    
    "epmip_a_estat" =
      list("title" = "Export performance against advanced economies, annual data",
           "data" = epmip_a_estat,
           "unit" = "3-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsbp60__custom_19122349/default/table",
           "dropdown" = "geo"
      ),
    
    "nulcmip_a_estat" =
      list("title" = "Nominal unit labour cost per hour worked, annual data",
           "data" = nulcmip_a_estat,
           "unit" = "3-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm10__custom_19122351/default/table",
           "dropdown" = "geo"
      ),
    
    "ggdmip_a_estat" =
      list("title" = "General government gross debt, annual data",
           "data" = ggdmip_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsgo10__custom_19122357/default/table",
           "dropdown" = "geo"
      ),
    
    "hhdmip_a_estat" =
      list("title" = "Household debt (including non-profit institutions serving households), annual data",
           "data" = hhdmip_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipspd22__custom_19122360/default/table",
           "dropdown" = "geo"
      ),
    
    "nfcdmip_a_estat" =
      list("title" = "Non-financial corporation debt, annual data",
           "data" = nfcdmip_a_estat,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipspd30__custom_19122366/default/table",
           "dropdown" = "geo"
      ),
    
    "hhcfmip_a_estat" =
      list("title" = "Household credit flow (including non-profit institutions serving households), annual data",
           "data" = hhcfmip_a_estat,
           "unit" = "% of debt stock t-1",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipspc40__custom_19122368/default/table",
           "dropdown" = "geo"
      ),
    
    "nfccfmip_a_estat" =
      list("title" = "Non-financial corporation credit flow (excluding foreign direct investments), annual data",
           "data" = nfccfmip_a_estat,
           "unit" = "% of debt stock t-1 (excluding foreign direct investments)",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipspc30__custom_19122371/default/table",
           "dropdown" = "geo"
      ),
    
    "hpimip_a_estat" =
      list("title" = "Nominal house price index, annual data",
           "data" = hpimip_a_estat,
           "unit" = "1-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsho20__custom_19608721/default/table",
           "dropdown" = "geo"
      ),
    
    "unemip_a_estat" =
      list("title" = "Unemployment rate, annual data",
           "data" = unemip_a_estat,
           "unit" = "% of labour force aged 15-74",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsun20__custom_19608726/default/table",
           "dropdown" = "geo"
      ),
    
    "lfprmip_a_estat" =
      list("title" = "Labour force participation rate, annual data",
           "data" = lfprmip_a_estat,
           "unit" = "3-year change in percentage points",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm60__custom_19608730/default/table",
           "dropdown" = "geo"
      )
  ),
  
  "MIP Auxiliary indicators" = list(
    
    "nendi_a_estat_mip" =
      list("title" = "Net international investment position excluding non-defaultable instruments, annual data",
           "data" = nendi_a_estat_mip,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsii50__custom_19614476/default/table",
           "dropdown" = "geo"
      ),
    
    "nlb_a_estat_mip" =
      list("title" = "Net lending-borrowing (current plus capital account), annual data",
           "data" = nlb_a_estat_mip,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsbp70__custom_19122080/default/table",
           "dropdown" = "geo"
      ),
    
    "ntbe_a_estat_mip" =
      list("title" = "Trade balance in energy, annual data",
           "data" = ntbe_a_estat_mip,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsen10__custom_19614471/default/table",
           "dropdown" = "geo"
      ),
    
    "gdpcap_a_estat_mip" =
      list("title" = "Real GDP per capita, annual data",
           "data" = gdpcap_a_estat_mip,
           "unit" = "EUR",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsna40__custom_19122090/default/table",
           "dropdown" = "geo"
      ),
    
    "gfcf_a_estat_mip" =
      list("title" = "Investment in fixed assets (gross fixed capital formation), annual data",
           "data" = gfcf_a_estat_mip,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsna20__custom_19122093/default/table",
           "dropdown" = "geo"
      ),
    
    "gerd_a_estat_mip" =
      list("title" = "Gross expenditure on research and development, annual data",
           "data" = gerd_a_estat_mip,
           "unit" = "% of GDP",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsst10__custom_19614464/default/table",
           "dropdown" = "geo"
      ),
    
    "ems_a_estat_mip" =
      list("title" = "Export market shares of world exports, annual data",
           "data" = ems_a_estat_mip,
           "unit" = "3-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsex10__custom_19122105/default/table",
           "dropdown" = "geo"
      ),
    
    "lpr_a_estat_mip" =
      list("title" = "Real labour productivity per hour worked, annual data",
           "data" = lpr_a_estat_mip,
           "unit" = "1-year % change",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsna70__custom_19122109/default/table",
           "dropdown" = "geo"
      ),
    
    "infdiff_a_estat_mip" =
      list("title" = "Core inflation differential vis-à-vis the euro area, annual data",
           "data" = infdiff_a_estat_mip,
           "unit" = "Percentage points",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipscp10__custom_19122112/default/table",
           "dropdown" = "geo"
      ),
    
    "hhdgdi_a_estat_mip" =
      list("title" = "Household debt (including non-profit institutions serving households), annual data",
           "data" = hhdgdi_a_estat_mip,
           "unit" = "% of GDI",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipspd40__custom_19122114/default/table",
           "dropdown" = "geo"
      ),
    
    "gnpls_a_estat_mip" =
      list("title" = "Gross non-performing loans, domestic and foreign entities, annual data",
           "data" = gnpls_a_estat_mip,
           "unit" = "% of gross loans",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsbd10__custom_19122134/default/table",
           "dropdown" = "geo"
      ),
    
    "t1cr_a_estat_mip" =
      list("title" = "Tier-1 capital ratio banking sector, annual data",
           "data" = t1cr_a_estat_mip,
           "unit" = "% of risk-weighted assets",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsbd30__custom_19122143/default/table",
           "dropdown" = "geo"
      ),
    
    "roeb_a_estat_mip" =
      list("title" = "Return on equity of banks, annual data",
           "data" = roeb_a_estat_mip,
           "unit" = "%",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsbd40__custom_19122149/default/table",
           "dropdown" = "geo"
      ),
    
    "pti_a_estat_mip" =
      list("title" = "Standardised house price-to-income ratio, annual data",
           "data" = pti_a_estat_mip,
           "unit" = "% deviation from long term average",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsho60__custom_19122153/default/table",
           "dropdown" = "geo"
      ),
    
    "buildp_a_estat_mip" =
      list("title" = "Building permits, annual data",
           "data" = buildp_a_estat_mip,
           "unit" = "m2 per 1000 inhabitants",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipsho50__custom_19122160/default/table",
           "dropdown" = "geo"
      ),
    
    "ltunem_a_estat_mip" =
      list("title" = "Long-term unemployment rate, annual data",
           "data" = ltunem_a_estat_mip,
           "unit" = "% of total population aged 15-74",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm70__custom_19608768/default/table",
           "dropdown" = "geo"
      ),
    
    "yunem_a_estat_mip" =
      list("title" = "Youth unemployment rate, annual data",
           "data" = yunem_a_estat_mip,
           "unit" = "% of total population aged 15-24",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm80__custom_19608781/default/table",
           "dropdown" = "geo"
      ),
    
    "emp_a_estat_mip" =
      list("title" = "Employment rate, annual data",
           "data" = emp_a_estat_mip,
           "unit" = "% of total population aged 20-64",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm100__custom_19608777/default/table",
           "dropdown" = "geo"
      ),
    
    "neet_a_estat_mip" =
      list("title" = "Young people neither in employment nor in education or training, annual data",
           "data" = neet_a_estat_mip,
           "unit" = "% of total population aged 15-29",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslm90__custom_19608776/default/table",
           "dropdown" = "geo"
      ),
    
    "arope_a_estat_mip" =
      list("title" = "People at risk of poverty or social exclusion, annual data",
           "data" = arope_a_estat_mip,
           "unit" = "% of total population",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslc10__custom_19122246/default/table",
           "dropdown" = "geo"
      ),
    
    "arope1_a_estat_mip" =
      list("title" = "People at risk of poverty after social transfers, annual data",
           "data" = arope1_a_estat_mip,
           "unit" = "% of total population",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslc20__custom_19122247/default/table",
           "dropdown" = "geo"
      ),
    
    "arope2_a_estat_mip" =
      list("title" = "Severely materially and socially deprived people, annual data",
           "data" = arope2_a_estat_mip,
           "unit" = "% of total population",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslc30__custom_19122250/default/table",
           "dropdown" = "geo"
      ),
    
    "arope3_a_estat_mip" =
      list("title" = "People living in households with very low work intensity, annual data",
           "data" = arope3_a_estat_mip,
           "unit" = "% of total population aged 0-64",
           "source" = "Eurostat",
           "link" = "https://ec.europa.eu/eurostat/databrowser/view/tipslc40__custom_19122252/default/table",
           "dropdown" = "geo"
      )
  )
)

