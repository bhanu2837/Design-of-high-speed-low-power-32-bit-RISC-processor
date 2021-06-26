/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001736615792_3069169239_init();
    work_m_00000000001809104223_3381898454_init();
    work_m_00000000001114147092_2064985706_init();
    work_m_00000000003228165716_1756712915_init();
    work_m_00000000002204388895_0394443791_init();
    work_m_00000000003168691712_2381739659_init();
    work_m_00000000000928263902_4017027212_init();
    work_m_00000000000285615424_2387414557_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000285615424_2387414557");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
