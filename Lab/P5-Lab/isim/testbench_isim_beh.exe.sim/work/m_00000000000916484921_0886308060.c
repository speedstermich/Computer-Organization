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
static const char *ng0 = "H:/GitHub/Computer-Organization/Lab/P5-2019-Summer/ALU.v";
static int ng1[] = {32, 0};
static int ng2[] = {31, 0};
static int ng3[] = {0, 0};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {0U, 0U};
static int ng6[] = {2, 0};
static int ng7[] = {3, 0};
static int ng8[] = {4, 0};
static int ng9[] = {5, 0};
static int ng10[] = {6, 0};
static int ng11[] = {7, 0};
static int ng12[] = {8, 0};
static int ng13[] = {9, 0};
static int ng14[] = {10, 0};
static int ng15[] = {11, 0};
static int ng16[] = {12, 0};
static int ng17[] = {13, 0};
static int ng18[] = {14, 0};
static int ng19[] = {15, 0};



static void Always_12_0(char *t0)
{
    char t6[8];
    char t15[8];
    char t22[8];
    char t48[8];
    char t59[8];
    char t71[8];
    char t77[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t49;
    int t50;
    int t51;
    int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
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
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    char *t105;

LAB0:    t1 = (t0 + 1904U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(12, ng0);
    t2 = (t0 + 2244);
    *((int *)t2) = 1;
    t3 = (t0 + 1932);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(12, ng0);

LAB5:    xsi_set_current_line(13, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(14, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    xsi_set_current_line(16, ng0);
    xsi_set_current_line(16, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB6:    t2 = (t0 + 1380);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_greatereq(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB7;

LAB8:    xsi_set_current_line(23, ng0);
    xsi_set_current_line(23, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB18:    t2 = (t0 + 1380);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_greatereq(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);

LAB30:    t2 = ((char*)((ng3)));
    t50 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t50 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng4)));
    t50 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t50 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng6)));
    t50 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t50 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng7)));
    t50 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t50 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng8)));
    t50 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t50 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng9)));
    t50 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t50 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng10)));
    t50 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t50 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng11)));
    t50 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t50 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng12)));
    t50 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t50 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng13)));
    t50 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t50 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng14)));
    t50 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t50 == 1)
        goto LAB51;

LAB52:    t2 = ((char*)((ng15)));
    t50 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t50 == 1)
        goto LAB53;

LAB54:    t2 = ((char*)((ng16)));
    t50 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t50 == 1)
        goto LAB55;

LAB56:    t2 = ((char*)((ng17)));
    t50 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t50 == 1)
        goto LAB57;

LAB58:    t2 = ((char*)((ng18)));
    t50 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t50 == 1)
        goto LAB59;

LAB60:    t2 = ((char*)((ng19)));
    t50 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 32);
    if (t50 == 1)
        goto LAB61;

LAB62:
LAB63:    goto LAB2;

LAB7:    xsi_set_current_line(16, ng0);

LAB9:    xsi_set_current_line(17, ng0);
    t13 = (t0 + 600U);
    t14 = *((char **)t13);
    t13 = (t0 + 576U);
    t16 = (t13 + 44U);
    t17 = *((char **)t16);
    t18 = (t0 + 1380);
    t19 = (t18 + 36U);
    t20 = *((char **)t19);
    xsi_vlog_generic_get_index_select_value(t15, 32, t14, t17, 2, t20, 32, 1);
    t21 = ((char*)((ng4)));
    memset(t22, 0, 8);
    t23 = (t15 + 4);
    t24 = (t21 + 4);
    t25 = *((unsigned int *)t15);
    t26 = *((unsigned int *)t21);
    t27 = (t25 ^ t26);
    t28 = *((unsigned int *)t23);
    t29 = *((unsigned int *)t24);
    t30 = (t28 ^ t29);
    t31 = (t27 | t30);
    t32 = *((unsigned int *)t23);
    t33 = *((unsigned int *)t24);
    t34 = (t32 | t33);
    t35 = (~(t34));
    t36 = (t31 & t35);
    if (t36 != 0)
        goto LAB13;

LAB10:    if (t34 != 0)
        goto LAB12;

LAB11:    *((unsigned int *)t22) = 1;

LAB13:    t38 = (t22 + 4);
    t39 = *((unsigned int *)t38);
    t40 = (~(t39));
    t41 = *((unsigned int *)t22);
    t42 = (t41 & t40);
    t43 = (t42 != 0);
    if (t43 > 0)
        goto LAB14;

LAB15:
LAB16:    xsi_set_current_line(16, ng0);
    t2 = (t0 + 1380);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_minus(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1380);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB6;

LAB12:    t37 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB13;

LAB14:    xsi_set_current_line(17, ng0);

LAB17:    xsi_set_current_line(18, ng0);
    t44 = ((char*)((ng2)));
    t45 = (t0 + 1380);
    t46 = (t45 + 36U);
    t47 = *((char **)t46);
    memset(t48, 0, 8);
    xsi_vlog_signed_minus(t48, 32, t44, 32, t47, 32);
    t49 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t49, t48, 0, 0, 8, 0LL);
    xsi_set_current_line(19, ng0);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_unary_minus(t6, 32, t2, 32);
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t6, 0, 0, 32);
    goto LAB16;

LAB19:    xsi_set_current_line(23, ng0);

LAB21:    xsi_set_current_line(24, ng0);
    t13 = (t0 + 600U);
    t14 = *((char **)t13);
    t13 = (t0 + 576U);
    t16 = (t13 + 44U);
    t17 = *((char **)t16);
    t18 = (t0 + 1380);
    t19 = (t18 + 36U);
    t20 = *((char **)t19);
    xsi_vlog_generic_get_index_select_value(t15, 32, t14, t17, 2, t20, 32, 1);
    t21 = ((char*)((ng3)));
    memset(t22, 0, 8);
    t23 = (t15 + 4);
    t24 = (t21 + 4);
    t25 = *((unsigned int *)t15);
    t26 = *((unsigned int *)t21);
    t27 = (t25 ^ t26);
    t28 = *((unsigned int *)t23);
    t29 = *((unsigned int *)t24);
    t30 = (t28 ^ t29);
    t31 = (t27 | t30);
    t32 = *((unsigned int *)t23);
    t33 = *((unsigned int *)t24);
    t34 = (t32 | t33);
    t35 = (~(t34));
    t36 = (t31 & t35);
    if (t36 != 0)
        goto LAB25;

LAB22:    if (t34 != 0)
        goto LAB24;

LAB23:    *((unsigned int *)t22) = 1;

LAB25:    t38 = (t22 + 4);
    t39 = *((unsigned int *)t38);
    t40 = (~(t39));
    t41 = *((unsigned int *)t22);
    t42 = (t41 & t40);
    t43 = (t42 != 0);
    if (t43 > 0)
        goto LAB26;

LAB27:
LAB28:    xsi_set_current_line(23, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1380);
    t4 = (t3 + 36U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    xsi_vlog_signed_minus(t6, 32, t2, 32, t5, 32);
    t7 = (t0 + 1380);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB18;

LAB24:    t37 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB25;

LAB26:    xsi_set_current_line(24, ng0);

LAB29:    xsi_set_current_line(25, ng0);
    t44 = ((char*)((ng2)));
    t45 = (t0 + 1380);
    t46 = (t45 + 36U);
    t47 = *((char **)t46);
    memset(t48, 0, 8);
    xsi_vlog_signed_minus(t48, 32, t44, 32, t47, 32);
    t49 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t49, t48, 0, 0, 8, 0LL);
    xsi_set_current_line(26, ng0);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_unary_minus(t6, 32, t2, 32);
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t6, 0, 0, 32);
    goto LAB28;

LAB31:    xsi_set_current_line(31, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    memset(t22, 0, 8);
    t4 = (t22 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 31);
    t10 = (t9 & 1);
    *((unsigned int *)t22) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 31);
    t25 = (t12 & 1);
    *((unsigned int *)t4) = t25;
    memset(t15, 0, 8);
    t13 = (t22 + 4);
    t26 = *((unsigned int *)t13);
    t27 = (~(t26));
    t28 = *((unsigned int *)t22);
    t29 = (t28 & t27);
    t30 = (t29 & 1U);
    if (t30 != 0)
        goto LAB67;

LAB65:    if (*((unsigned int *)t13) == 0)
        goto LAB64;

LAB66:    t14 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t14) = 1;

LAB67:    t16 = (t15 + 4);
    t17 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = (~(t31));
    *((unsigned int *)t15) = t32;
    *((unsigned int *)t16) = 0;
    if (*((unsigned int *)t17) != 0)
        goto LAB69;

LAB68:    t39 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t39 & 1U);
    t40 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t40 & 1U);
    t18 = ((char*)((ng5)));
    xsi_vlogtype_concat(t6, 32, 32, 2U, t18, 31, t15, 1);
    t19 = (t0 + 1104);
    xsi_vlogvar_assign_value(t19, t6, 0, 0, 32);
    goto LAB63;

LAB33:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    memset(t15, 0, 8);
    t4 = (t15 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 31);
    t10 = (t9 & 1);
    *((unsigned int *)t15) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 31);
    t25 = (t12 & 1);
    *((unsigned int *)t4) = t25;
    t13 = ((char*)((ng5)));
    xsi_vlogtype_concat(t6, 32, 32, 2U, t13, 31, t15, 1);
    t14 = (t0 + 1104);
    xsi_vlogvar_assign_value(t14, t6, 0, 0, 32);
    goto LAB63;

LAB35:    xsi_set_current_line(33, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = (t0 + 692U);
    t7 = *((char **)t4);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t5, 32, t7, 32);
    t4 = (t0 + 1104);
    xsi_vlogvar_assign_value(t4, t6, 0, 0, 32);
    goto LAB63;

LAB37:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = (t0 + 692U);
    t7 = *((char **)t4);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_minus(t6, 32, t5, 32, t7, 32);
    t4 = (t0 + 1104);
    xsi_vlogvar_assign_value(t4, t6, 0, 0, 32);
    goto LAB63;

LAB39:    xsi_set_current_line(35, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = (t0 + 692U);
    t7 = *((char **)t4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t7);
    t10 = (t8 & t9);
    *((unsigned int *)t6) = t10;
    t4 = (t5 + 4);
    t13 = (t7 + 4);
    t14 = (t6 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t13);
    t25 = (t11 | t12);
    *((unsigned int *)t14) = t25;
    t26 = *((unsigned int *)t14);
    t27 = (t26 != 0);
    if (t27 == 1)
        goto LAB70;

LAB71:
LAB72:    t18 = (t0 + 1104);
    xsi_vlogvar_assign_value(t18, t6, 0, 0, 32);
    goto LAB63;

LAB41:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = (t0 + 692U);
    t7 = *((char **)t4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t7);
    t10 = (t8 | t9);
    *((unsigned int *)t6) = t10;
    t4 = (t5 + 4);
    t13 = (t7 + 4);
    t14 = (t6 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t13);
    t25 = (t11 | t12);
    *((unsigned int *)t14) = t25;
    t26 = *((unsigned int *)t14);
    t27 = (t26 != 0);
    if (t27 == 1)
        goto LAB73;

LAB74:
LAB75:    t18 = (t0 + 1104);
    xsi_vlogvar_assign_value(t18, t6, 0, 0, 32);
    goto LAB63;

LAB43:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = (t0 + 692U);
    t7 = *((char **)t4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t7);
    t10 = (t8 ^ t9);
    *((unsigned int *)t6) = t10;
    t4 = (t5 + 4);
    t13 = (t7 + 4);
    t14 = (t6 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t13);
    t25 = (t11 | t12);
    *((unsigned int *)t14) = t25;
    t26 = *((unsigned int *)t14);
    t27 = (t26 != 0);
    if (t27 == 1)
        goto LAB76;

LAB77:
LAB78:    t16 = (t0 + 1104);
    xsi_vlogvar_assign_value(t16, t6, 0, 0, 32);
    goto LAB63;

LAB45:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = (t0 + 692U);
    t7 = *((char **)t4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t7);
    t10 = (t8 | t9);
    *((unsigned int *)t15) = t10;
    t4 = (t5 + 4);
    t13 = (t7 + 4);
    t14 = (t15 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t13);
    t25 = (t11 | t12);
    *((unsigned int *)t14) = t25;
    t26 = *((unsigned int *)t14);
    t27 = (t26 != 0);
    if (t27 == 1)
        goto LAB79;

LAB80:
LAB81:    memset(t6, 0, 8);
    t18 = (t6 + 4);
    t19 = (t15 + 4);
    t42 = *((unsigned int *)t15);
    t43 = (~(t42));
    *((unsigned int *)t6) = t43;
    *((unsigned int *)t18) = 0;
    if (*((unsigned int *)t19) != 0)
        goto LAB83;

LAB82:    t57 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t57 & 4294967295U);
    t58 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t58 & 4294967295U);
    t20 = (t0 + 1104);
    xsi_vlogvar_assign_value(t20, t6, 0, 0, 32);
    goto LAB63;

LAB47:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);
    t4 = (t0 + 600U);
    t7 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t6 + 4);
    t13 = (t7 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (t8 >> 0);
    *((unsigned int *)t6) = t9;
    t10 = *((unsigned int *)t13);
    t11 = (t10 >> 0);
    *((unsigned int *)t4) = t11;
    t12 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t12 & 31U);
    t25 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t25 & 31U);
    memset(t15, 0, 8);
    xsi_vlog_unsigned_rshift(t15, 32, t5, 32, t6, 5);
    t14 = (t0 + 1104);
    xsi_vlogvar_assign_value(t14, t15, 0, 0, 32);
    goto LAB63;

LAB49:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 1196);
    t5 = (t4 + 36U);
    t7 = *((char **)t5);
    memcpy(t6, t7, 8);
    t13 = (t0 + 1104);
    xsi_vlogvar_assign_value(t13, t6, 0, 0, 32);
    goto LAB63;

LAB51:    xsi_set_current_line(44, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);
    t4 = (t0 + 600U);
    t7 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t6 + 4);
    t13 = (t7 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (t8 >> 0);
    *((unsigned int *)t6) = t9;
    t10 = *((unsigned int *)t13);
    t11 = (t10 >> 0);
    *((unsigned int *)t4) = t11;
    t12 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t12 & 31U);
    t25 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t25 & 31U);
    memset(t15, 0, 8);
    xsi_vlog_unsigned_lshift(t15, 32, t5, 32, t6, 5);
    t14 = (t0 + 1104);
    xsi_vlogvar_assign_value(t14, t15, 0, 0, 32);
    goto LAB63;

LAB53:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = (t0 + 692U);
    t7 = *((char **)t4);
    memset(t15, 0, 8);
    t4 = (t5 + 4);
    t13 = (t7 + 4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t7);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t13);
    t25 = (t11 ^ t12);
    t26 = (t10 | t25);
    t27 = *((unsigned int *)t4);
    t28 = *((unsigned int *)t13);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t31 = (t26 & t30);
    if (t31 != 0)
        goto LAB87;

LAB84:    if (t29 != 0)
        goto LAB86;

LAB85:    *((unsigned int *)t15) = 1;

LAB87:    t16 = ((char*)((ng5)));
    xsi_vlogtype_concat(t6, 32, 32, 2U, t16, 31, t15, 1);
    t17 = (t0 + 1104);
    xsi_vlogvar_assign_value(t17, t6, 0, 0, 32);
    goto LAB63;

LAB55:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = (t0 + 692U);
    t7 = *((char **)t4);
    memset(t48, 0, 8);
    xsi_vlog_signed_less(t48, 32, t5, 32, t7, 32);
    t4 = ((char*)((ng5)));
    xsi_vlogtype_concat(t6, 32, 32, 2U, t4, 31, t48, 1);
    t13 = (t0 + 1104);
    xsi_vlogvar_assign_value(t13, t6, 0, 0, 32);
    goto LAB63;

LAB57:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = (t0 + 692U);
    t7 = *((char **)t4);
    memset(t15, 0, 8);
    t4 = (t5 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB89;

LAB88:    t13 = (t7 + 4);
    if (*((unsigned int *)t13) != 0)
        goto LAB89;

LAB92:    if (*((unsigned int *)t5) < *((unsigned int *)t7))
        goto LAB90;

LAB91:    t16 = ((char*)((ng5)));
    xsi_vlogtype_concat(t6, 32, 32, 2U, t16, 31, t15, 1);
    t17 = (t0 + 1104);
    xsi_vlogvar_assign_value(t17, t6, 0, 0, 32);
    goto LAB63;

LAB59:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng3)));
    memset(t15, 0, 8);
    t7 = (t5 + 4);
    t13 = (t4 + 4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t4);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t25 = (t11 ^ t12);
    t26 = (t10 | t25);
    t27 = *((unsigned int *)t7);
    t28 = *((unsigned int *)t13);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t31 = (t26 & t30);
    if (t31 != 0)
        goto LAB94;

LAB93:    if (t29 != 0)
        goto LAB95;

LAB96:    memset(t22, 0, 8);
    t16 = (t15 + 4);
    t32 = *((unsigned int *)t16);
    t33 = (~(t32));
    t34 = *((unsigned int *)t15);
    t35 = (t34 & t33);
    t36 = (t35 & 1U);
    if (t36 != 0)
        goto LAB97;

LAB98:    if (*((unsigned int *)t16) != 0)
        goto LAB99;

LAB100:    t18 = (t22 + 4);
    t39 = *((unsigned int *)t22);
    t40 = *((unsigned int *)t18);
    t41 = (t39 || t40);
    if (t41 > 0)
        goto LAB101;

LAB102:    memcpy(t77, t22, 8);

LAB103:    t104 = ((char*)((ng5)));
    xsi_vlogtype_concat(t6, 32, 32, 2U, t104, 31, t77, 1);
    t105 = (t0 + 1104);
    xsi_vlogvar_assign_value(t105, t6, 0, 0, 32);
    goto LAB63;

LAB61:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng3)));
    memset(t15, 0, 8);
    t7 = (t5 + 4);
    t13 = (t4 + 4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t4);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t13);
    t25 = (t11 ^ t12);
    t26 = (t10 | t25);
    t27 = *((unsigned int *)t7);
    t28 = *((unsigned int *)t13);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t31 = (t26 & t30);
    if (t31 != 0)
        goto LAB120;

LAB117:    if (t29 != 0)
        goto LAB119;

LAB118:    *((unsigned int *)t15) = 1;

LAB120:    memset(t22, 0, 8);
    t16 = (t15 + 4);
    t32 = *((unsigned int *)t16);
    t33 = (~(t32));
    t34 = *((unsigned int *)t15);
    t35 = (t34 & t33);
    t36 = (t35 & 1U);
    if (t36 != 0)
        goto LAB121;

LAB122:    if (*((unsigned int *)t16) != 0)
        goto LAB123;

LAB124:    t18 = (t22 + 4);
    t39 = *((unsigned int *)t22);
    t40 = (!(t39));
    t41 = *((unsigned int *)t18);
    t42 = (t40 || t41);
    if (t42 > 0)
        goto LAB125;

LAB126:    memcpy(t71, t22, 8);

LAB127:    t47 = ((char*)((ng5)));
    xsi_vlogtype_concat(t6, 32, 32, 2U, t47, 31, t71, 1);
    t49 = (t0 + 1104);
    xsi_vlogvar_assign_value(t49, t6, 0, 0, 32);
    goto LAB63;

LAB64:    *((unsigned int *)t15) = 1;
    goto LAB67;

LAB69:    t33 = *((unsigned int *)t15);
    t34 = *((unsigned int *)t17);
    *((unsigned int *)t15) = (t33 | t34);
    t35 = *((unsigned int *)t16);
    t36 = *((unsigned int *)t17);
    *((unsigned int *)t16) = (t35 | t36);
    goto LAB68;

LAB70:    t28 = *((unsigned int *)t6);
    t29 = *((unsigned int *)t14);
    *((unsigned int *)t6) = (t28 | t29);
    t16 = (t5 + 4);
    t17 = (t7 + 4);
    t30 = *((unsigned int *)t5);
    t31 = (~(t30));
    t32 = *((unsigned int *)t16);
    t33 = (~(t32));
    t34 = *((unsigned int *)t7);
    t35 = (~(t34));
    t36 = *((unsigned int *)t17);
    t39 = (~(t36));
    t51 = (t31 & t33);
    t52 = (t35 & t39);
    t40 = (~(t51));
    t41 = (~(t52));
    t42 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t42 & t40);
    t43 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t43 & t41);
    t53 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t53 & t40);
    t54 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t54 & t41);
    goto LAB72;

LAB73:    t28 = *((unsigned int *)t6);
    t29 = *((unsigned int *)t14);
    *((unsigned int *)t6) = (t28 | t29);
    t16 = (t5 + 4);
    t17 = (t7 + 4);
    t30 = *((unsigned int *)t16);
    t31 = (~(t30));
    t32 = *((unsigned int *)t5);
    t51 = (t32 & t31);
    t33 = *((unsigned int *)t17);
    t34 = (~(t33));
    t35 = *((unsigned int *)t7);
    t52 = (t35 & t34);
    t36 = (~(t51));
    t39 = (~(t52));
    t40 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t40 & t36);
    t41 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t41 & t39);
    goto LAB75;

LAB76:    t28 = *((unsigned int *)t6);
    t29 = *((unsigned int *)t14);
    *((unsigned int *)t6) = (t28 | t29);
    goto LAB78;

LAB79:    t28 = *((unsigned int *)t15);
    t29 = *((unsigned int *)t14);
    *((unsigned int *)t15) = (t28 | t29);
    t16 = (t5 + 4);
    t17 = (t7 + 4);
    t30 = *((unsigned int *)t16);
    t31 = (~(t30));
    t32 = *((unsigned int *)t5);
    t51 = (t32 & t31);
    t33 = *((unsigned int *)t17);
    t34 = (~(t33));
    t35 = *((unsigned int *)t7);
    t52 = (t35 & t34);
    t36 = (~(t51));
    t39 = (~(t52));
    t40 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t40 & t36);
    t41 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t41 & t39);
    goto LAB81;

LAB83:    t53 = *((unsigned int *)t6);
    t54 = *((unsigned int *)t19);
    *((unsigned int *)t6) = (t53 | t54);
    t55 = *((unsigned int *)t18);
    t56 = *((unsigned int *)t19);
    *((unsigned int *)t18) = (t55 | t56);
    goto LAB82;

LAB86:    t14 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB87;

LAB89:    t14 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB91;

LAB90:    *((unsigned int *)t15) = 1;
    goto LAB91;

LAB94:    *((unsigned int *)t15) = 1;
    goto LAB96;

LAB95:    t14 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB96;

LAB97:    *((unsigned int *)t22) = 1;
    goto LAB100;

LAB99:    t17 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB100;

LAB101:    t19 = (t0 + 600U);
    t20 = *((char **)t19);
    memset(t59, 0, 8);
    t19 = (t59 + 4);
    t21 = (t20 + 4);
    t42 = *((unsigned int *)t20);
    t43 = (t42 >> 31);
    t53 = (t43 & 1);
    *((unsigned int *)t59) = t53;
    t54 = *((unsigned int *)t21);
    t55 = (t54 >> 31);
    t56 = (t55 & 1);
    *((unsigned int *)t19) = t56;
    memset(t48, 0, 8);
    t23 = (t59 + 4);
    t57 = *((unsigned int *)t23);
    t58 = (~(t57));
    t60 = *((unsigned int *)t59);
    t61 = (t60 & t58);
    t62 = (t61 & 1U);
    if (t62 != 0)
        goto LAB107;

LAB105:    if (*((unsigned int *)t23) == 0)
        goto LAB104;

LAB106:    t24 = (t48 + 4);
    *((unsigned int *)t48) = 1;
    *((unsigned int *)t24) = 1;

LAB107:    t37 = (t48 + 4);
    t38 = (t59 + 4);
    t63 = *((unsigned int *)t59);
    t64 = (~(t63));
    *((unsigned int *)t48) = t64;
    *((unsigned int *)t37) = 0;
    if (*((unsigned int *)t38) != 0)
        goto LAB109;

LAB108:    t69 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t69 & 1U);
    t70 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t70 & 1U);
    memset(t71, 0, 8);
    t44 = (t48 + 4);
    t72 = *((unsigned int *)t44);
    t73 = (~(t72));
    t74 = *((unsigned int *)t48);
    t75 = (t74 & t73);
    t76 = (t75 & 1U);
    if (t76 != 0)
        goto LAB110;

LAB111:    if (*((unsigned int *)t44) != 0)
        goto LAB112;

LAB113:    t78 = *((unsigned int *)t22);
    t79 = *((unsigned int *)t71);
    t80 = (t78 & t79);
    *((unsigned int *)t77) = t80;
    t46 = (t22 + 4);
    t47 = (t71 + 4);
    t49 = (t77 + 4);
    t81 = *((unsigned int *)t46);
    t82 = *((unsigned int *)t47);
    t83 = (t81 | t82);
    *((unsigned int *)t49) = t83;
    t84 = *((unsigned int *)t49);
    t85 = (t84 != 0);
    if (t85 == 1)
        goto LAB114;

LAB115:
LAB116:    goto LAB103;

LAB104:    *((unsigned int *)t48) = 1;
    goto LAB107;

LAB109:    t65 = *((unsigned int *)t48);
    t66 = *((unsigned int *)t38);
    *((unsigned int *)t48) = (t65 | t66);
    t67 = *((unsigned int *)t37);
    t68 = *((unsigned int *)t38);
    *((unsigned int *)t37) = (t67 | t68);
    goto LAB108;

LAB110:    *((unsigned int *)t71) = 1;
    goto LAB113;

LAB112:    t45 = (t71 + 4);
    *((unsigned int *)t71) = 1;
    *((unsigned int *)t45) = 1;
    goto LAB113;

LAB114:    t86 = *((unsigned int *)t77);
    t87 = *((unsigned int *)t49);
    *((unsigned int *)t77) = (t86 | t87);
    t88 = (t22 + 4);
    t89 = (t71 + 4);
    t90 = *((unsigned int *)t22);
    t91 = (~(t90));
    t92 = *((unsigned int *)t88);
    t93 = (~(t92));
    t94 = *((unsigned int *)t71);
    t95 = (~(t94));
    t96 = *((unsigned int *)t89);
    t97 = (~(t96));
    t51 = (t91 & t93);
    t52 = (t95 & t97);
    t98 = (~(t51));
    t99 = (~(t52));
    t100 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t100 & t98);
    t101 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t101 & t99);
    t102 = *((unsigned int *)t77);
    *((unsigned int *)t77) = (t102 & t98);
    t103 = *((unsigned int *)t77);
    *((unsigned int *)t77) = (t103 & t99);
    goto LAB116;

LAB119:    t14 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB120;

LAB121:    *((unsigned int *)t22) = 1;
    goto LAB124;

LAB123:    t17 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB124;

LAB125:    t19 = (t0 + 600U);
    t20 = *((char **)t19);
    memset(t48, 0, 8);
    t19 = (t48 + 4);
    t21 = (t20 + 4);
    t43 = *((unsigned int *)t20);
    t53 = (t43 >> 31);
    t54 = (t53 & 1);
    *((unsigned int *)t48) = t54;
    t55 = *((unsigned int *)t21);
    t56 = (t55 >> 31);
    t57 = (t56 & 1);
    *((unsigned int *)t19) = t57;
    memset(t59, 0, 8);
    t23 = (t48 + 4);
    t58 = *((unsigned int *)t23);
    t60 = (~(t58));
    t61 = *((unsigned int *)t48);
    t62 = (t61 & t60);
    t63 = (t62 & 1U);
    if (t63 != 0)
        goto LAB128;

LAB129:    if (*((unsigned int *)t23) != 0)
        goto LAB130;

LAB131:    t64 = *((unsigned int *)t22);
    t65 = *((unsigned int *)t59);
    t66 = (t64 | t65);
    *((unsigned int *)t71) = t66;
    t37 = (t22 + 4);
    t38 = (t59 + 4);
    t44 = (t71 + 4);
    t67 = *((unsigned int *)t37);
    t68 = *((unsigned int *)t38);
    t69 = (t67 | t68);
    *((unsigned int *)t44) = t69;
    t70 = *((unsigned int *)t44);
    t72 = (t70 != 0);
    if (t72 == 1)
        goto LAB132;

LAB133:
LAB134:    goto LAB127;

LAB128:    *((unsigned int *)t59) = 1;
    goto LAB131;

LAB130:    t24 = (t59 + 4);
    *((unsigned int *)t59) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB131;

LAB132:    t73 = *((unsigned int *)t71);
    t74 = *((unsigned int *)t44);
    *((unsigned int *)t71) = (t73 | t74);
    t45 = (t22 + 4);
    t46 = (t59 + 4);
    t75 = *((unsigned int *)t45);
    t76 = (~(t75));
    t78 = *((unsigned int *)t22);
    t51 = (t78 & t76);
    t79 = *((unsigned int *)t46);
    t80 = (~(t79));
    t81 = *((unsigned int *)t59);
    t52 = (t81 & t80);
    t82 = (~(t51));
    t83 = (~(t52));
    t84 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t84 & t82);
    t85 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t85 & t83);
    goto LAB134;

}

static void Cont_52_1(char *t0)
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

LAB0:    t1 = (t0 + 2048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2296);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 2252);
    *((int *)t10) = 1;

LAB1:    return;
}


extern void work_m_00000000000916484921_0886308060_init()
{
	static char *pe[] = {(void *)Always_12_0,(void *)Cont_52_1};
	xsi_register_didat("work_m_00000000000916484921_0886308060", "isim/testbench_isim_beh.exe.sim/work/m_00000000000916484921_0886308060.didat");
	xsi_register_executes(pe);
}
