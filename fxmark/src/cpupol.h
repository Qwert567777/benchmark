const char *MODEL_NAME                             = "Intel(R) Xeon(R) CPU E7-8870 v2 @ 2.30GHz";
const unsigned int PHYSICAL_CHIPS                  = 8;
const unsigned int CORE_PER_CHIP                   = 15;
const unsigned int SMT_LEVEL                       = 1;
const unsigned int CACHE_PER_CORE                  = 30720;
const unsigned int seq_cores[]                     = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119};
const unsigned int rr_cores[]                      = {0,15,30,45,60,75,90,105,1,16,31,46,61,76,91,106,2,17,32,47,62,77,92,107,3,18,33,48,63,78,93,108,4,19,34,49,64,79,94,109,5,20,35,50,65,80,95,110,6,21,36,51,66,81,96,111,7,22,37,52,67,82,97,112,8,23,38,53,68,83,98,113,9,24,39,54,69,84,99,114,10,25,40,55,70,85,100,115,11,26,41,56,71,86,101,116,12,27,42,57,72,87,102,117,13,28,43,58,73,88,103,118,14,29,44,59,74,89,104,119};
const unsigned int test_hw_thr_cnts_fine_grain[]   = {1,2,4,7,15,21,28,30,35,42,45,49,56,60,63,70,75,77,84,90,98,105,112,120};
const unsigned int test_hw_thr_cnts_coarse_grain[] = {1,2,4,15,30,45,60,75,90,105,120};
