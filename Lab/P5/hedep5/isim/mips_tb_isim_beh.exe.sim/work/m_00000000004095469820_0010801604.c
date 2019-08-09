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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/yangc/Desktop/hedep5/dm.v";
static int ng1[] = {0, 0};
static int ng2[] = {1024, 0};
static int ng3[] = {1, 0};
static const char *ng4 = "%d@%h: *%h <= %h";



static void Cont_34_0(char *t0)
{
    char t5[8];
    char t12[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    t1 = (t0 + 1996U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1380);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t6 = (t0 + 1380);
    t7 = (t6 + 44U);
    t8 = *((char **)t7);
    t9 = (t0 + 1380);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    t13 = (t0 + 968U);
    t14 = *((char **)t13);
    memset(t12, 0, 8);
    t13 = (t12 + 4);
    t15 = (t14 + 4);
    t16 = *((unsigned int *)t14);
    t17 = (t16 >> 2);
    *((unsigned int *)t12) = t17;
    t18 = *((unsigned int *)t15);
    t19 = (t18 >> 2);
    *((unsigned int *)t13) = t19;
    t20 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t20 & 1023U);
    t21 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t21 & 1023U);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t12, 10, 2);
    t22 = (t0 + 2388);
    t23 = (t22 + 32U);
    t24 = *((char **)t23);
    t25 = (t24 + 40U);
    t26 = *((char **)t25);
    memcpy(t26, t5, 8);
    xsi_driver_vfirst_trans(t22, 0, 31);
    t27 = (t0 + 2336);
    *((int *)t27) = 1;

LAB1:    return;
}

static void Always_36_1(char *t0)
{
    char t11[8];
    char t15[8];
    char t16[8];
    char t43[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    int t28;
    char *t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    int t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;

LAB0:    t1 = (t0 + 2140U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 2344);
    *((int *)t2) = 1;
    t3 = (t0 + 2168);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 2040);
    xsi_process_wait(t4, 0LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t3);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB7;

LAB8:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t5 = *((unsigned int *)t2);
    t6 = (~(t5));
    t7 = *((unsigned int *)t3);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB16;

LAB17:
LAB18:
LAB9:    goto LAB2;

LAB7:    xsi_set_current_line(38, ng0);

LAB10:    xsi_set_current_line(39, ng0);
    xsi_set_current_line(39, ng0);
    t4 = ((char*)((ng1)));
    t10 = (t0 + 1472);
    xsi_vlogvar_assign_value(t10, t4, 0, 0, 32);

LAB11:    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t10 = ((char*)((ng2)));
    memset(t11, 0, 8);
    xsi_vlog_signed_less(t11, 32, t4, 32, t10, 32);
    t12 = (t11 + 4);
    t5 = *((unsigned int *)t12);
    t6 = (~(t5));
    t7 = *((unsigned int *)t11);
    t8 = (t7 & t6);
    t9 = (t8 != 0);
    if (t9 > 0)
        goto LAB12;

LAB13:    goto LAB9;

LAB12:    xsi_set_current_line(40, ng0);
    t13 = ((char*)((ng1)));
    t14 = (t0 + 1380);
    t17 = (t0 + 1380);
    t18 = (t17 + 44U);
    t19 = *((char **)t18);
    t20 = (t0 + 1380);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    t23 = (t0 + 1472);
    t24 = (t23 + 36U);
    t25 = *((char **)t24);
    xsi_vlog_generic_convert_array_indices(t15, t16, t19, t22, 2, 1, t25, 32, 1);
    t26 = (t15 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (!(t27));
    t29 = (t16 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (!(t30));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB14;

LAB15:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t10 = ((char*)((ng3)));
    memset(t11, 0, 8);
    xsi_vlog_signed_add(t11, 32, t4, 32, t10, 32);
    t12 = (t0 + 1472);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 32);
    goto LAB11;

LAB14:    t33 = *((unsigned int *)t15);
    t34 = *((unsigned int *)t16);
    t35 = (t33 - t34);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t14, t13, 0, *((unsigned int *)t16), t36);
    goto LAB15;

LAB16:    xsi_set_current_line(42, ng0);

LAB19:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 1060U);
    t10 = *((char **)t4);
    t4 = (t0 + 1380);
    t12 = (t0 + 1380);
    t13 = (t12 + 44U);
    t14 = *((char **)t13);
    t17 = (t0 + 1380);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    t20 = (t0 + 968U);
    t21 = *((char **)t20);
    memset(t16, 0, 8);
    t20 = (t16 + 4);
    t22 = (t21 + 4);
    t27 = *((unsigned int *)t21);
    t30 = (t27 >> 2);
    *((unsigned int *)t16) = t30;
    t33 = *((unsigned int *)t22);
    t34 = (t33 >> 2);
    *((unsigned int *)t20) = t34;
    t37 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t37 & 1023U);
    t38 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t38 & 1023U);
    xsi_vlog_generic_convert_array_indices(t11, t15, t14, t19, 2, 1, t16, 10, 2);
    t23 = (t11 + 4);
    t39 = *((unsigned int *)t23);
    t28 = (!(t39));
    t24 = (t15 + 4);
    t40 = *((unsigned int *)t24);
    t31 = (!(t40));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB20;

LAB21:    xsi_set_current_line(44, ng0);
    t2 = xsi_vlog_time(t43, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 784U);
    t4 = *((char **)t3);
    t3 = (t0 + 968U);
    t10 = *((char **)t3);
    t3 = (t0 + 1380);
    t12 = (t3 + 36U);
    t13 = *((char **)t12);
    t14 = (t0 + 1380);
    t17 = (t14 + 44U);
    t18 = *((char **)t17);
    t19 = (t0 + 1380);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    t22 = (t0 + 968U);
    t23 = *((char **)t22);
    memset(t15, 0, 8);
    t22 = (t15 + 4);
    t24 = (t23 + 4);
    t5 = *((unsigned int *)t23);
    t6 = (t5 >> 2);
    *((unsigned int *)t15) = t6;
    t7 = *((unsigned int *)t24);
    t8 = (t7 >> 2);
    *((unsigned int *)t22) = t8;
    t9 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t9 & 1023U);
    t27 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t27 & 1023U);
    xsi_vlog_generic_get_array_select_value(t11, 32, t13, t18, t21, 2, 1, t15, 10, 2);
    xsi_vlogfile_write(1, 0, 0, ng4, 5, t0, (char)118, t43, 64, (char)118, t4, 32, (char)118, t10, 32, (char)118, t11, 32);
    goto LAB18;

LAB20:    t41 = *((unsigned int *)t11);
    t42 = *((unsigned int *)t15);
    t35 = (t41 - t42);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t4, t10, 0, *((unsigned int *)t15), t36);
    goto LAB21;

}


extern void work_m_00000000004095469820_0010801604_init()
{
	static char *pe[] = {(void *)Cont_34_0,(void *)Always_36_1};
	xsi_register_didat("work_m_00000000004095469820_0010801604", "isim/mips_tb_isim_beh.exe.sim/work/m_00000000004095469820_0010801604.didat");
	xsi_register_executes(pe);
}
