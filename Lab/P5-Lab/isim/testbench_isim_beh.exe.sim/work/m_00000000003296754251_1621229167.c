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
static const char *ng0 = "H:/GitHub/Computer-Organization/Lab/P5-2019-Summer/GRF.v";
static int ng1[] = {0, 0};
static int ng2[] = {31, 0};
static int ng3[] = {1, 0};
static const char *ng4 = "%d@%h: $%d <= %h";



static void Initial_16_0(char *t0)
{
    char t5[8];
    char t14[8];
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    int t27;
    char *t28;
    unsigned int t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    int t34;
    int t35;

LAB0:    xsi_set_current_line(16, ng0);

LAB2:    xsi_set_current_line(17, ng0);
    xsi_set_current_line(17, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1748);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB3:    t1 = (t0 + 1748);
    t2 = (t1 + 36U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng2)));
    memset(t5, 0, 8);
    xsi_vlog_signed_leq(t5, 32, t3, 32, t4, 32);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    xsi_set_current_line(17, ng0);
    t12 = ((char*)((ng1)));
    t13 = (t0 + 1656);
    t16 = (t0 + 1656);
    t17 = (t16 + 44U);
    t18 = *((char **)t17);
    t19 = (t0 + 1656);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    t22 = (t0 + 1748);
    t23 = (t22 + 36U);
    t24 = *((char **)t23);
    xsi_vlog_generic_convert_array_indices(t14, t15, t18, t21, 2, 1, t24, 32, 1);
    t25 = (t14 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t15 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (!(t29));
    t31 = (t27 && t30);
    if (t31 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(17, ng0);
    t1 = (t0 + 1748);
    t2 = (t1 + 36U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng3)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 1748);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB3;

LAB6:    t32 = *((unsigned int *)t14);
    t33 = *((unsigned int *)t15);
    t34 = (t32 - t33);
    t35 = (t34 + 1);
    xsi_vlogvar_assign_value(t13, t12, 0, *((unsigned int *)t15), t35);
    goto LAB7;

}

static void Always_21_1(char *t0)
{
    char t13[8];
    char t15[8];
    char t16[8];
    char t41[8];
    char t72[8];
    char t73[8];
    char t89[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
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
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    unsigned int t82;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    int t87;
    int t88;

LAB0:    t1 = (t0 + 2416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(21, ng0);
    t2 = (t0 + 2900);
    *((int *)t2) = 1;
    t3 = (t0 + 2444);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(21, ng0);

LAB5:    xsi_set_current_line(22, ng0);
    t4 = (t0 + 784U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t2) != 0)
        goto LAB17;

LAB18:    t5 = (t13 + 4);
    t27 = *((unsigned int *)t13);
    t30 = *((unsigned int *)t5);
    t33 = (t27 || t30);
    if (t33 > 0)
        goto LAB19;

LAB20:    memcpy(t41, t13, 8);

LAB21:    t26 = (t41 + 4);
    t66 = *((unsigned int *)t26);
    t67 = (~(t66));
    t68 = *((unsigned int *)t41);
    t69 = (t68 & t67);
    t70 = (t69 != 0);
    if (t70 > 0)
        goto LAB34;

LAB35:
LAB36:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(22, ng0);

LAB9:    xsi_set_current_line(23, ng0);
    xsi_set_current_line(23, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1748);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 32);

LAB10:    t2 = (t0 + 1748);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_signed_leq(t13, 32, t4, 32, t5, 32);
    t11 = (t13 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB11;

LAB12:    goto LAB8;

LAB11:    xsi_set_current_line(23, ng0);
    t12 = ((char*)((ng1)));
    t14 = (t0 + 1656);
    t17 = (t0 + 1656);
    t18 = (t17 + 44U);
    t19 = *((char **)t18);
    t20 = (t0 + 1656);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    t23 = (t0 + 1748);
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
        goto LAB13;

LAB14:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1748);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t13, 0, 8);
    xsi_vlog_signed_add(t13, 32, t4, 32, t5, 32);
    t11 = (t0 + 1748);
    xsi_vlogvar_assign_value(t11, t13, 0, 0, 32);
    goto LAB10;

LAB13:    t33 = *((unsigned int *)t15);
    t34 = *((unsigned int *)t16);
    t35 = (t33 - t34);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t14, t12, 0, *((unsigned int *)t16), t36, 0LL);
    goto LAB14;

LAB15:    *((unsigned int *)t13) = 1;
    goto LAB18;

LAB17:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB18;

LAB19:    t11 = (t0 + 1060U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng1)));
    memset(t15, 0, 8);
    t14 = (t12 + 4);
    if (*((unsigned int *)t14) != 0)
        goto LAB23;

LAB22:    t17 = (t11 + 4);
    if (*((unsigned int *)t17) != 0)
        goto LAB23;

LAB26:    if (*((unsigned int *)t12) > *((unsigned int *)t11))
        goto LAB24;

LAB25:    memset(t16, 0, 8);
    t19 = (t15 + 4);
    t34 = *((unsigned int *)t19);
    t37 = (~(t34));
    t38 = *((unsigned int *)t15);
    t39 = (t38 & t37);
    t40 = (t39 & 1U);
    if (t40 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t19) != 0)
        goto LAB29;

LAB30:    t42 = *((unsigned int *)t13);
    t43 = *((unsigned int *)t16);
    t44 = (t42 & t43);
    *((unsigned int *)t41) = t44;
    t21 = (t13 + 4);
    t22 = (t16 + 4);
    t23 = (t41 + 4);
    t45 = *((unsigned int *)t21);
    t46 = *((unsigned int *)t22);
    t47 = (t45 | t46);
    *((unsigned int *)t23) = t47;
    t48 = *((unsigned int *)t23);
    t49 = (t48 != 0);
    if (t49 == 1)
        goto LAB31;

LAB32:
LAB33:    goto LAB21;

LAB23:    t18 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB25;

LAB24:    *((unsigned int *)t15) = 1;
    goto LAB25;

LAB27:    *((unsigned int *)t16) = 1;
    goto LAB30;

LAB29:    t20 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB30;

LAB31:    t50 = *((unsigned int *)t41);
    t51 = *((unsigned int *)t23);
    *((unsigned int *)t41) = (t50 | t51);
    t24 = (t13 + 4);
    t25 = (t16 + 4);
    t52 = *((unsigned int *)t13);
    t53 = (~(t52));
    t54 = *((unsigned int *)t24);
    t55 = (~(t54));
    t56 = *((unsigned int *)t16);
    t57 = (~(t56));
    t58 = *((unsigned int *)t25);
    t59 = (~(t58));
    t28 = (t53 & t55);
    t31 = (t57 & t59);
    t60 = (~(t28));
    t61 = (~(t31));
    t62 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t62 & t60);
    t63 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t63 & t61);
    t64 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t64 & t60);
    t65 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t65 & t61);
    goto LAB33;

LAB34:    xsi_set_current_line(27, ng0);

LAB37:    xsi_set_current_line(28, ng0);
    t29 = (t0 + 1152U);
    t71 = *((char **)t29);
    t29 = (t0 + 1656);
    t74 = (t0 + 1656);
    t75 = (t74 + 44U);
    t76 = *((char **)t75);
    t77 = (t0 + 1656);
    t78 = (t77 + 40U);
    t79 = *((char **)t78);
    t80 = (t0 + 1060U);
    t81 = *((char **)t80);
    xsi_vlog_generic_convert_array_indices(t72, t73, t76, t79, 2, 1, t81, 5, 2);
    t80 = (t72 + 4);
    t82 = *((unsigned int *)t80);
    t32 = (!(t82));
    t83 = (t73 + 4);
    t84 = *((unsigned int *)t83);
    t35 = (!(t84));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB38;

LAB39:    xsi_set_current_line(29, ng0);
    t2 = xsi_vlog_time(t89, 1000.0000000000000, 1.0000000000000000);
    t3 = (t0 + 1244U);
    t4 = *((char **)t3);
    t3 = (t0 + 1060U);
    t5 = *((char **)t3);
    t3 = (t0 + 1152U);
    t11 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng4, 5, t0, (char)118, t89, 64, (char)118, t4, 32, (char)118, t5, 5, (char)118, t11, 32);
    goto LAB36;

LAB38:    t85 = *((unsigned int *)t72);
    t86 = *((unsigned int *)t73);
    t87 = (t85 - t86);
    t88 = (t87 + 1);
    xsi_vlogvar_wait_assign_value(t29, t71, 0, *((unsigned int *)t73), t88, 0LL);
    goto LAB39;

}

static void Cont_32_2(char *t0)
{
    char t5[8];
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
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    t1 = (t0 + 2560U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1656);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t6 = (t0 + 1656);
    t7 = (t6 + 44U);
    t8 = *((char **)t7);
    t9 = (t0 + 1656);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    t12 = (t0 + 876U);
    t13 = *((char **)t12);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t13, 5, 2);
    t12 = (t0 + 2960);
    t14 = (t12 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 8);
    xsi_driver_vfirst_trans(t12, 0, 31);
    t18 = (t0 + 2908);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_33_3(char *t0)
{
    char t5[8];
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
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    t1 = (t0 + 2704U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1656);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t6 = (t0 + 1656);
    t7 = (t6 + 44U);
    t8 = *((char **)t7);
    t9 = (t0 + 1656);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    t12 = (t0 + 968U);
    t13 = *((char **)t12);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t13, 5, 2);
    t12 = (t0 + 2996);
    t14 = (t12 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 8);
    xsi_driver_vfirst_trans(t12, 0, 31);
    t18 = (t0 + 2916);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000003296754251_1621229167_init()
{
	static char *pe[] = {(void *)Initial_16_0,(void *)Always_21_1,(void *)Cont_32_2,(void *)Cont_33_3};
	xsi_register_didat("work_m_00000000003296754251_1621229167", "isim/testbench_isim_beh.exe.sim/work/m_00000000003296754251_1621229167.didat");
	xsi_register_executes(pe);
}
