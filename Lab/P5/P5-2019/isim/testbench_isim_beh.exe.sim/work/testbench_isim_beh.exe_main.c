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
    work_m_00000000000139712715_1733832700_init();
    work_m_00000000003704240925_2109230735_init();
    work_m_00000000001945997975_0599110487_init();
    work_m_00000000004232249409_4144471541_init();
    work_m_00000000003296754251_1621229167_init();
    work_m_00000000001033748572_4241813833_init();
    work_m_00000000003858606370_3842173357_init();
    work_m_00000000001945997975_3256301344_init();
    work_m_00000000002746841300_3313169209_init();
    work_m_00000000003623169282_0886308060_init();
    work_m_00000000003955528318_1267650845_init();
    work_m_00000000001981696664_3791488135_init();
    work_m_00000000003665193446_4223490419_init();
    work_m_00000000002851667828_3877310806_init();
    work_m_00000000001979158114_1949178628_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001979158114_1949178628");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
