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
    work_m_00000000002046878102_3430403020_init();
    work_m_00000000003305871394_0439803723_init();
    work_m_00000000003505599943_0177184985_init();
    work_m_00000000004043993451_0213027084_init();
    work_m_00000000001276608309_2615161261_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001276608309_2615161261");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
