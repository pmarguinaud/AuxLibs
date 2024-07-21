cmake_minimum_required (VERSION 3.24)

project (AuxLibs VERSION 0.0.0 LANGUAGES C)

function (add_dummy_library lib)

  add_library ("${lib}" "${lib}.c")

  add_custom_command (OUTPUT "${lib}.c" COMMAND "${CMAKE_SOURCE_DIR}/dummy.pl" 
  ${ARGN} > "${lib}.c" VERBATIM)

  install (TARGETS "${lib}" DESTINATION lib COMPONENT "${lib}")

endfunction (add_dummy_library)

add_dummy_library (rgb 
--abort wdhniv_ wdugsi_ wdugln_ rgb_getparam_ rgb_gridctrl1_ rgb_sort_ rgb_modctrl_
rgb_grid_ rgb_init_ rgb_gridctrl2_ rgb_dates_ wdugli_ wdhlis_  wdhdat_ wdhech_)

add_dummy_library (bufr 
--abort abortx_ addFile addRead addWrite adjustGridAreaDefinition allocateMemory    
bbuprs0_ bbuprs1_ bbuprs2_ bbuprs3_ bbuprt_ bbuprtbox_ bfkey_ bfprs2_               
big_endian_ binaryChopI binaryChopR bitmapValue bitmapValueTotal blokex_ blprs0_    
blprs1_ btable_ btable1_ buaug_ bubox_ bucrekey_ bucrkey_ buedd_ buens0_ buens1_    
buens2_ buens3_ buens4_ buens5_ buepmrk_ buepmrkc_ buepwt_ buepwtc_ buerr_          
buetab_ buetd_ buetdr_ buevar_ buexs0_ buexs1_ buexs2_ buexs3_ buexs33_ buexs3p_    
buexs4_ buexs5_ bufren_ bufrex_ bufrin_ bufrread bufrread_ bugbts_ bugbytesr4_      
bugbytesr8_ bugetbm_ buget_opera_image_ bugtll_ buivar_ bunexs_ bunpck_ bunpks_     
buoctn_ buoper_ buoperc_ bupck_ bupkey_ bupks_ bupmrk_ buprco_ buprq_ buprs0_       
buprs1_ buprs2_ buprs3_ buprt_ buprtbox_ buprt_tab_ burep_ burepc_ burqc_           
burquc_ bus012_ bus0123_ busbytesr4_ busbytesr8_ busel_ busel2_ buset_ busrp_       
busrq_ bustdr_ bustop_ buuatb_ buukey_ buunp_ buunps_ buupwt_ buxdes_ c2bitw_       
c2cwid_ c2dosd_ c2gene_ c2ordr_ c2pack_ c2pkvw_ c2rnge_ c2rows_ calcop_             
check_s4s_ cheknum_ chktab2_ cmpck_ codeps_ confp_ confp2_ confp3_ confpa_          
convertGRIBFloatToIEEE copyExistingGrib copyName copyNameLoc                        
createLocalDefinition createLocalDefinitionHandler crexrd crexrd_ csect4_ csgnbt    
csgnbt_ ctable_ ctable1_ d13flag d13flag_ d_190_x d_190_x_ d2ordr_ d2rosd_          
date_to_julian d_def_1 d_def_1_ d_def_10 d_def_10_ d_def_11 d_def_11_ d_def_13      
d_def_13_ d_def_14 d_def_14_ d_def_15 d_def_15_ d_def_16 d_def_16_ d_def_17         
d_def_17_ d_def_18 d_def_18_ d_def_19 d_def_19_ d_def_190 d_def_190_ d_def_191      
d_def_191_ d_def_2 d_def_2_ d_def_20 d_def_20_ d_def_21 d_def_21_ d_def_22          
d_def_22_ d_def_23 d_def_23_ d_def_24 d_def_24_ d_def_25 d_def_25_ d_def_3          
d_def_3_ d_def_4 d_def_4_ d_def_5 d_def_5_ d_def_50 d_def_50_ d_def_6 d_def_6_      
d_def_7 d_def_7_ d_def_8 d_def_8_ d_def_9 d_def_9_ d_def_x d_def_x_ decext_         
decfp_ decfp2_ decode decodeLocalDefinition decodeLocalDefinitionValues             
decodeMarsPart decodeNonMarsPartOfDefinition4 decogb_ decogc_ decogd_ decogr_       
decops_ decops2_ definitionIsDefined dggsec2_ displayUnpackedSection1Values         
dlasec2_ dldefs dldefs_ dllsec2_ dmesec2_ docsec2_ dpssec2_ dsect4a_ dsgnbt         
dsgnbt_ dshsec2_ dsvsec2_ dtable_ dtable1_ e_190_x e_190_x_ ecdef1_ ecdef10_        
ecdef11_ ecdef12_ ecdef13_ ecdef14_ ecdef15_ ecdef16_ ecdef17_ ecdef18_ ecdef19_    
ecdef2_ ecdef3_ ecdef4_ ecdef5_ ecdef50_ ecdef6_ ecdef7_ ecdef8_ ecdef9_            
ecdf191_ ecloc1_ e_def_1 e_def_1_ e_def_10 e_def_10_ e_def_11 e_def_11_ e_def_13    
e_def_13_ e_def_14 e_def_14_ e_def_15 e_def_15_ e_def_16 e_def_16_ e_def_17         
e_def_17_ e_def_18 e_def_18_ e_def_19 e_def_19_ e_def_190 e_def_190_ e_def_191      
e_def_191_ e_def_2 e_def_2_ e_def_20 e_def_20_ e_def_21 e_def_21_ e_def_22          
e_def_22_ e_def_23 e_def_23_ e_def_24 e_def_24_ e_def_25 e_def_25_ e_def_3          
e_def_3_ e_def_4 e_def_4_ e_def_5 e_def_5_ e_def_50 e_def_50_ e_def_6 e_def_6_      
e_def_7 e_def_7_ e_def_8 e_def_8_ e_def_9 e_def_9_ e_def_x e_def_x_ eggsec2_        
elasec2_ eldefs eldefs_ ellsec2_ emesec2_ emosnum_ encode encodeLocalDefinition     
encodeLocalDefinitionValues encodeMarsPart encodeNonMarsPartOfDefinition4           
eocsec2_ epssec2_ eshsec2_ esvsec2_ exists exscal_ extmap_ fcd2char f_getenv        
f_getenv_ fileExists fileRead fileSeek fileTell findLocalDefinitionFile             
findSectionOffsets fmmh_ freeMemory ftn1cr_ g4_offset gbitmap_ gbyte_ gbytes_       
gdecode_ genbin_ gendir_ getchd_ getcode_ getfb2_ getflag_ getfpd_                  
get_free_unit_ getib1_ getib2_ getib3_ getind_ getint_ getIntegerValue getlgd_      
get_name_unit_ getreal_ getRealValue getSingleMapBit getsys_ get_tables_            
get_tables1_ getusr_ gpl_ gpv_ grchk1_ grchk2_ grchk3_ grchk4_ gribdata gribex_     
gribin_ gribnum_ gribread gribread_ grpr190 grpr190_ grprs0_ grprs1_ grprs1b_       
grprs2_ grprs3_ grprs4_ grprs4w_ grsdbg_ grsdef_ grsmax_         grsmok_ grsn2o_    
grsref_         grsubc_ grsvck_ grsx2o_ gscale_ gvalues_ gvector_ gvend_            
ig1numb_ ig1totl_ ig2cfcl_ ig2elon_ ig2end_ ig2list_ ig2meth_ ig2nlat_ ig2nucl_     
ig2numb_ ig2opcl_ ig2slat_ ig2star_ ig2totl_ ig2wlon_ igbtspv_ igcentr_ igclass_    
igdate_ igdefin_ IGDI IGDJ IGDSCAL IGDUMMY igexpvr_ iggauss_ IGIP igj_ igk_         
IGLATRP IGLATSP iglevel iglevl1 iglevl2 iglevty_ iglngth_ IGLONRP IGLONSP igm_      
igni_ ignj_ ignumav_ ignumms_ ignumpv_ ignvalu_ IGNWLAT IGNWLON igparam_ IGREFVL    
igrepmo_ igreprs_ igresco_ IGROTAT igscanm_ IGSELAT IGSELON IGSFACT igstep_         
igstep1_ igstep2_ igstrem_ igsubid_ igtable_ igtime_ igtj_ igtk_ igtm_ IGTRIND      
IGTUNIT igtype_ IGUDECF igunusd_ init initENDIF initENDLIST initialiseNewGrib       
init_reference inscal_ insertSection1Length insmp1_ insmp2_ inxbit_ inxmap_         
is1numb_ is1totl_ is2cfcl_ is2elon_ is2end_ is2list_ is2meth_ is2nlat_ is2nucl_     
is2numb_ is2opcl_ is2slat_ is2star_ is2totl_ is2wlon_ ISBTSPV ISCENTR ISCLASS       
isdate_ ISDEFIN ISDI ISDIJ ISDJ ISDUMMY isec1l isec1l_ ISEXPVR ISJ ISJKM ISK        
ISLATRP ISLATSP ISLEVEL ISLEVTY ISLONRP ISLONSP ISM ISNI ISNJ ISNUMAV ISNUMMS       
ISNWLAT ISNWLON ISPARAM ISREPRS ISROTAT ISSELAT ISSELON ISSETRG ISSFACT ISSTEP      
ISSTEP1 ISSTEP2 ISSTREM ISSUBID ISTABLE istime_ ISTJ ISTJKM ISTK ISTM ISTRIND       
ISTUNIT ISTYPE ISUDECF jfree jfree_ jmalloc jmalloc_ jmemove jmemove_               
julian_to_date kwchk1_ kwloc1_ kwprs1_ ldefnum ldefnum_ ldefprt ldefprt_ len3oct    
loadPrintLine lwsize lwsize_ maxmin_ maxmn2_ maxmni_ mbufr_mars_filter_ modval_     
mvchars mvchars_ numberOfValuesInSection4 numvals numvals_ offset_ offset2_         
onebits onebits_ orefdat orefdat_ packA1 packA4 packA8 packBYTES packcf_ packD3     
packENDIF packENDLIST packF1 packI1 packI2 packI3 packI4 pack_if packIn packL3      
packLIST packLOCAL packLP_I1 packLP_I2 packLP_I3 packLP_I4 packLP_I4M1 packLP_In    
packLP_S1 packLP_S2 packLP_S3 packLP_S4 packLP_Sn packNOOP packPAD packPADFROM      
packPADMULT packPADTO packS1 packS2 packS3 packS4 packSn packSP_TO packUP_TO        
pbbufr_ pbclose pbclose_ pbclose3 pbclose3_ pbcrex_ pbflush pbflush_ pbfp           
pbgafind pbgafind_ pbgbfind pbgbfind_ pbgclos pbgclos_ pbgdate pbgdate_ pbgfind     
pbgfind_ pbgget pbgget_ pbggeth012_ pbgindx pbginitInput pbginitOutput pbgleng      
pbgleng_ pbglevl pbglevl_ pbglevt pbglevt_ pbgoffs pbgoffs_ pbgparm pbgparm_        
pbgput pbgput_ pbgrepr pbgrepr_ pbgrib_ pbgstep pbgstep_ pbgstrm pbgstrm_           
pbgtime pbgtime_ pbgtotl pbgtotl_ pbgtype pbgtype_ pbgvfind pbgvfind_ pbgxfind      
pbgxfind_ pbionum_ pbopen pbopen_ pbopen3 pbopen3_ pbpseu_ pbread pbread_           
pbread2 pbread2_ pbread3 pbread3_ pbseek pbseek_ pbseek3 pbseek3_ pbseek64          
pbseek64_ pbsize pbsize_ pbtell pbtell_ pbtell64 pbtell64_ pbwrite pbwrite_         
pbwrite3 pbwrite3_ prepareGrib prtbin_ prtbk1_ prtbk2_ prtbl1_ prtbl2_ pseuread     
pseuread_ ptquasi_ qu2reg_ qu2reg3_ readany readbufr readcrex readgrib readnext     
readprod readprod_decode_unsigned_byte_long realValue recheckLength reclen_         
ref2grb_ referenceValue releaseAction removeFile remsp_ repchr_ revero_ rg1numb_    
rg1totl_ rg2cfcl_ rg2elon_ rg2end_ rg2meth_ rg2nlat_ rg2nucl_ rg2numb_ rg2opcl_     
rg2slat_ rg2star_ rg2totl_ rg2wlon_ RGBTSPV RGCENTR RGCLASS RGDATE RGDEFIN rgdi_    
rgdj_ rgdscal_ RGDUMMY RGEXPVR RGGAUSS rgip_ RGJ RGK rglatrp_ rglatsp_ RGLEVEL      
RGLEVL1 RGLEVL2 rglevty_ RGLNGTH rglonrp_ rglonsp_ RGM RGNI RGNJ rgnumav_           
rgnumms_ RGNUMPV RGNVALU rgnwlat_ rgnwlon_ RGPARAM rgrefvl_ RGREPMO RGREPRS         
RGRESCO rgrotat_ RGSCANM rgselat_ rgselon_ rgsfact_ RGSTEP RGSTEP1 RGSTEP2          
RGSTREM rgsubid_ RGTABLE RGTIME RGTJ RGTK RGTM RGTRIND RGTUNIT RGTYPE RGUDECF       
RGUNUSD rorint_ rowina_ rowina2_ rowina3_ rs1numb_ rs1totl_ rs2cfcl_ rs2elon_       
rs2end_ rs2meth_ rs2nlat_ rs2nucl_ rs2numb_ rs2opcl_ rs2slat_ rs2star_ rs2totl_     
rs2wlon_ RSBTSPV RSCENTR RSCLASS rsdate_ RSDEFIN RSDI RSDIJ RSDJ RSDUMMY RSEXPVR    
RSJ RSJKM RSK RSLATRP RSLATSP RSLEVEL RSLEVTY RSLONRP RSLONSP RSM RSNI RSNJ         
RSNUMAV RSNUMMS RSNWLAT RSNWLON RSPARAM RSREPRS RSROTAT RSSELAT RSSELON RSSETRG     
RSSFACT RSSTEP RSSTEP1 RSSTEP2 RSSTREM RSSUBID RSTABLE rstime_ RSTJ RSTJKM RSTK     
RSTM RSTRIND RSTUNIT RSTYPE RSUDECF rtb_ sbyte_ sbytes_ scm0_ sencode_ senpack_     
separationBetweenValues setBitMap setint_ setIntegerValue setlalo_ setpar_          
setreal_ setRealValue setupIrregularLongitudeIncrements soffset012_ spv_            
stringIsNotANumber svalues_ swap4 swap4_ swap_bytes4_ swap_bytes8_ tab2fil_         
test_bit test_eq test_ge test_gt test_le test_lt test_ne u2l1cr_ uncmpck_           
unpackA1 unpackA4 unpackA8 unpackBYTES unpackD3 unpackENDIF unpackENDLIST           
unpackF1 unpackI1 unpackI2 unpackI3 unpackI4 unpack_if unpackIn unpackL3            
unpackLIST unpackLOCAL unpackLP_I1 unpackLP_I2 unpackLP_I3 unpackLP_I4              
unpackLP_I4M1 unpackLP_In unpackLP_S1 unpackLP_S2 unpackLP_S3 unpackLP_S4           
unpackLP_Sn unpackNOOP unpackPAD unpackPADFROM unpackPADMULT unpackPADTO            
unpackS1 unpackS2 unpackS3 unpackS4 unpackSn unpackSP_TO unpkcf_ updateOffsets      
valpina valpina_ vod2uv_ yyyy2cy_                                                   
--dummy grsmkp_ grsrnd_)

add_dummy_library (gribex)

add_dummy_library (fdbdummy 
--abort iinitfdb_vpp_ iinitfdb_ imultio_flush_ isetrankfdb_ iwritefdb_               
imultio_encode_bitspervalue_ ireadfdb_ iopenfdb_ imultio_notify_step_                
imultio_write_ isetvalfdb_ iflushfdb_ isetcommfdb_ isetfieldcountfdb_ iclosefdb_     
iset_fdb_root_)

add_dummy_library (wamdummy 
--abort wvalloc_ incdate_ wvwaminit_ wavemdl_ wvdealloc_)

add_dummy_library (naglitedummy 
--abort f02faf_ e02bcf_)

add_dummy_library (oasisdummy 
--abort getoasis3_ inioasis3_ setoasis3_ endoasis3_ putoasis3_)

add_dummy_library (ibmdummy 
--abort vsin_ vasin_ vlog_ vpow_ vrec_ dgbs_ dgbf_ vexp_ vacos_ vcos_ isortx_ vdiv_)

add_dummy_library (mpidummy
--abort mpi_file_iwrite_shared_ mpi_end_ mpi_file_read_shared_                      
mpi_file_read_ordered_begin_ mpi_comm_create_ mpi_isend_ mpi_comm_split_            
mpi_abort_ mpi_get_count_ mpi_iscatterv_ mpi_comm_dup_fn_ mpi_cart_rank_            
mpi_win_dup_fn_ mpi_comm_null_delete_fn_ mpi_file_write_ordered_ MPI_Get_version    
mpi_iprobe_ MPI_Initialized mpi_comm_rank_ mpi_type_size_ mpi_gather_ mpi_wait_     
mpi_wtime_ mpi_wtick_ mpi_file_close_ mpi_file_open_ mpi_cart_coords_               
pmpi_wtick_ mpi_initialized_ PMPI_Init mpi_comm_null_copy_fn_ mpi_scatterv_         
pmpi_wtime_ MPI_Get_processor_name mpi_dup_fn_ mpi_waitall_ mpi_ssend_              
MPI_Comm_size mpi_null_delete_fn_ mpi_igatherv_ mpi_testsome_ mpi_irecv_            
mpi_type_null_copy_fn_ mpi_error_string_ mpi_init_thread_ mpi_ibcast_               
mpi_barrier_ mpi_buffer_detach_ mpi_comm_group_ mpi_igather_ mpi_cart_create_       
MPI_Comm_free mpi_nec_block_time_ mpi_alltoallv_ mpi_cart_sub_ mpi_finalized_       
mpi_probe_ MPI_Comm_rank mpi_recv_ mpi_ialltoallv_ mpi_null_copy_fn_                
mpi_type_null_delete_fn_ mpi_comm_free_ MPI_Comm_split mpi_ibsend_ mpi_send_        
mpi_file_iread_shared_ mpi_gatherv_ mpi_allreduce_ mpi_waitsome_ mpi_allgatherv_    
ompi_mpi_comm_world MPI_Get_library_version mpi_win_null_copy_fn_                   
mpi_iallgatherv_ mpi_type_dup_fn_ mpi_file_write_shared_ mpi_file_read_ordered_     
mpi_init_ mpi_bsend_ mpi_group_incl_ mpi_file_write_ordered_begin_ mpi_finalize_    
mpi_comm_size_ mpi_file_write_ordered_end_ mpi_file_read_ordered_end_               
mpi_buffer_attach_ mpi_win_null_delete_fn_ mpi_waitany_ mpi_bcast_)


add_dummy_library (codbdummy 
--abort apply_poolmasking_ blackbox_ blackbox_init_ cma_close_ cma_open_ cmdb_addr_   
cmdb_debug_ cmdb_get_ cmdb_name_ cmdb_print_ cmdb_reg_ cmdb_reset_ cmdb_set_          
cmdb_vecreg_ cmdb_vecset_ codb_abort_func_ codb_ae_dump_ codb_aggr_info_              
codb_alloc_poolmask_ codb_analysis_datetime_ codb_calc_aggr_ codb_cancel_             
codb_cardinality_ codb_close_ codb_create_pool_ codb_datetime_ codb_detect_dcadir_    
codb_dget_ codb_distribute_str_ codb_distribute_vecstr_ codb_dput_ codb_d_unique_     
codb_end_poolmask_ codb_get_control_word_ codb_getcwd_ codb_getenv_ codb_gethandle_   
codb_getindex_ codb_getnames_ codb_get_npes_ codb_getpid_ codb_get_poolmask_          
codb_get_poolnos_ codb_getprecision_ codb_get_rownum_ codb_get_rowvec_ codb_getsize_  
codb_getsize_aux_ codb_getval_ codb_get_view_info_ codb_hash_init_ codb_hash_set_lock_
codb_hash_unset_lock_ codb_idistribute_ codb_init_ codb_init_omp_locks_               
codb_init_poolmask_ codb_in_permanent_poolmask_ codb_linkdb_ codb_linkview_           
codb_load_ codb_makeview_ codb_mask_control_word_ codb_maxcols_ codb_mp_select_       
codb_packer_ codb_print_flags_file_ codb_print_vars_ codb_put_control_word_           
codb_putenv_ codb_putindex_ codb_read_metadata_ codb_read_metadata2_                  
codb_register_abort_func_ codb_remove_ codb_remove_file_ codb_reset_poolmask_         
codb_restore_peinfo_ codb_save_peinfo_ codb_select_ codb_set_signals_ codb_setval_    
codb_sortkeys_ codb_static_init_ codb_store_ codb_strblank_ codb_swapout_             
codb_tag_delim_ codb_tdiff_ codb_trace_ codb_trace_end_ codb_trace_init_              
codb_twindow_ codb_ui_unique_ codb_update_info_ codb_vechash_ codb_versions_          
codb_write_metadata_ codb_write_metadata2_ codb_write_metadata3_ cread_iomap_         
create_statid_ ctxid_ ctxreg_ fodb_checkviewreg_ fodb_register_in_vector_             
fodb_unregister_in_vector_ fwrite_iomap_ get_incore_ioassign_ init_region_            
lnkdb2_ msgpass_loaddata_ msgpass_loadobs_ msgpass_storedata_ msgpass_storeobs_       
newio_end32_ newio_flush32_ newio_release_pool32_ newio_start32_ odb_darray_dump_     
odb_flpcheck_ preferred_dbname_ioassign_ put_incore_ioassign_ rlnkdb_ rlnkdb2_        
swap8bytes_ util_cgetenv_ util_filesize_ util_igetenv_ util_readraw_ util_writeraw_   
write_ddl_)

install (DIRECTORY DESTINATION "include")
