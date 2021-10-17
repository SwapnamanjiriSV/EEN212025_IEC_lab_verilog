

set search_path "/afs/iitd.ac.in/service/tools/public/asiclib/umcoa/L65/libraries/UMC65LLSC/synopsys/ccs"
set_attribute lib_search_path "/afs/iitd.ac.in/service/tools/public/asiclib/umcoa/L65/libraries/UMC65LLSC/synopsys/ccs/"
set_attribute hdl_search_path "./rtl/counter/pd.v"
set_attribute library "uk65lscllmvbbr_100c25_tc_ccs.lib"

read_hdl counter.v
elaborate 
check_design -unresolved
read_sdc ./synthesis/counter/pd.sdc
synthesize -to_mapped -effort high
write_hdl > ./pd/counter/typical/synth_typical.v
write_sdc > ./pd/counter/typical/sdc_typical.sdc
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge  -setuphold split > ./pd/counter/typical/delays.sdf
