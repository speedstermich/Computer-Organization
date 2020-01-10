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
static const char *ng0 = "H:/GitHub/Computer-Organization/Lab/P5-2019-Summer/ext.v";
static int ng1[] = {0, 0};
static int ng2[] = {16, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {0U, 0U};
static int ng5[] = {2, 0};
static int ng6[] = {3, 0};
static int ng7[] = {14, 0};



static void Always_8_0(char *t0)
{
    char t7[8];
    char t10[8];
    char t13[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;

LAB0:    t1 = (t0 + 1536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(8, ng0);
    t2 = (t0 + 1876);
    *((int *)t2) = 1;
    t3 = (t0 + 1564);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(8, ng0);

LAB5:    xsi_set_current_line(9, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(10, ng0);
    t8 = (t0 + 600U);
    t9 = *((char **)t8);
    t8 = ((char*)((ng2)));
    t11 = (t0 + 600U);
    t12 = *((char **)t11);
    memset(t13, 0, 8);
    t11 = (t13 + 4);
    t14 = (t12 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (t15 >> 15);
    t17 = (t16 & 1);
    *((unsigned int *)t13) = t17;
    t18 = *((unsigned int *)t14);
    t19 = (t18 >> 15);
    t20 = (t19 & 1);
    *((unsigned int *)t11) = t20;
    xsi_vlog_mul_concat(t10, 16, 1, t8, 1U, t13, 1);
    xsi_vlogtype_concat(t7, 32, 32, 2U, t10, 16, t9, 16);
    t21 = (t0 + 1012);
    xsi_vlogvar_assign_value(t21, t7, 0, 0, 32);
    goto LAB15;

LAB9:    xsi_set_current_line(11, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    xsi_vlogtype_concat(t7, 32, 32, 2U, t3, 16, t4, 16);
    t8 = (t0 + 1012);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    goto LAB15;

LAB11:    xsi_set_current_line(12, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 600U);
    t8 = *((char **)t4);
    xsi_vlogtype_concat(t7, 32, 32, 2U, t8, 16, t3, 16);
    t4 = (t0 + 1012);
    xsi_vlogvar_assign_value(t4, t7, 0, 0, 32);
    goto LAB15;

LAB13:    xsi_set_current_line(13, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 600U);
    t8 = *((char **)t4);
    t4 = ((char*)((ng7)));
    t9 = (t0 + 600U);
    t11 = *((char **)t9);
    memset(t13, 0, 8);
    t9 = (t13 + 4);
    t12 = (t11 + 4);
    t15 = *((unsigned int *)t11);
    t16 = (t15 >> 15);
    t17 = (t16 & 1);
    *((unsigned int *)t13) = t17;
    t18 = *((unsigned int *)t12);
    t19 = (t18 >> 15);
    t20 = (t19 & 1);
    *((unsigned int *)t9) = t20;
    xsi_vlog_mul_concat(t10, 14, 1, t4, 1U, t13, 1);
    xsi_vlogtype_concat(t7, 32, 32, 3U, t10, 14, t8, 16, t3, 2);
    t14 = (t0 + 1012);
    xsi_vlogvar_assign_value(t14, t7, 0, 0, 32);
    goto LAB15;

}

static void Cont_16_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 1680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(16, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1928);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 1884);
    *((int *)t10) = 1;

LAB1:    return;
}


extern void work_m_00000000001033748572_4241813833_init()
{
	static char *pe[] = {(void *)Always_8_0,(void *)Cont_16_1};
	xsi_register_didat("work_m_00000000001033748572_4241813833", "isim/testbench_isim_beh.exe.sim/work/m_00000000001033748572_4241813833.didat");
	xsi_register_executes(pe);
}
