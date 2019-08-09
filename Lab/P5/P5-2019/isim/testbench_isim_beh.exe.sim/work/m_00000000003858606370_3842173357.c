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
static const char *ng0 = "C:/Users/Michael Octavianus K/Desktop/P5/compare.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};
static int ng4[] = {3, 0};
static int ng5[] = {4, 0};
static int ng6[] = {5, 0};



static void Always_8_0(char *t0)
{
    char t10[8];
    char t26[8];
    char t38[8];
    char t46[8];
    char t54[8];
    char t83[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    char *t87;
    char *t88;
    unsigned int t89;
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
    char *t103;

LAB0:    t1 = (t0 + 1536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(8, ng0);
    t2 = (t0 + 1732);
    *((int *)t2) = 1;
    t3 = (t0 + 1564);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(8, ng0);

LAB5:    xsi_set_current_line(9, ng0);
    t4 = (t0 + 784U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB17;

LAB18:
LAB19:    goto LAB2;

LAB7:    xsi_set_current_line(10, ng0);
    t7 = (t0 + 600U);
    t8 = *((char **)t7);
    t7 = (t0 + 692U);
    t9 = *((char **)t7);
    memset(t10, 0, 8);
    t7 = (t8 + 4);
    t11 = (t9 + 4);
    t12 = *((unsigned int *)t8);
    t13 = *((unsigned int *)t9);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t11);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t11);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB23;

LAB20:    if (t21 != 0)
        goto LAB22;

LAB21:    *((unsigned int *)t10) = 1;

LAB23:    t25 = (t0 + 1012);
    xsi_vlogvar_assign_value(t25, t10, 0, 0, 1);
    goto LAB19;

LAB9:    xsi_set_current_line(11, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t7);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t3);
    t16 = *((unsigned int *)t8);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t3);
    t20 = *((unsigned int *)t8);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB25;

LAB24:    if (t21 != 0)
        goto LAB26;

LAB27:    t11 = (t0 + 1012);
    xsi_vlogvar_assign_value(t11, t10, 0, 0, 1);
    goto LAB19;

LAB11:    xsi_set_current_line(12, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng1)));
    memset(t10, 0, 8);
    t7 = (t4 + 4);
    t8 = (t3 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t3);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t8);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t8);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB31;

LAB28:    if (t21 != 0)
        goto LAB30;

LAB29:    *((unsigned int *)t10) = 1;

LAB31:    memset(t26, 0, 8);
    t11 = (t10 + 4);
    t27 = *((unsigned int *)t11);
    t28 = (~(t27));
    t29 = *((unsigned int *)t10);
    t30 = (t29 & t28);
    t31 = (t30 & 1U);
    if (t31 != 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t11) != 0)
        goto LAB34;

LAB35:    t25 = (t26 + 4);
    t32 = *((unsigned int *)t26);
    t33 = (!(t32));
    t34 = *((unsigned int *)t25);
    t35 = (t33 || t34);
    if (t35 > 0)
        goto LAB36;

LAB37:    memcpy(t54, t26, 8);

LAB38:    t82 = (t0 + 1012);
    xsi_vlogvar_assign_value(t82, t54, 0, 0, 1);
    goto LAB19;

LAB13:    xsi_set_current_line(13, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng1)));
    memset(t10, 0, 8);
    t7 = (t4 + 4);
    t8 = (t3 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t3);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t7);
    t16 = *((unsigned int *)t8);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t8);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB47;

LAB46:    if (t21 != 0)
        goto LAB48;

LAB49:    memset(t26, 0, 8);
    t11 = (t10 + 4);
    t27 = *((unsigned int *)t11);
    t28 = (~(t27));
    t29 = *((unsigned int *)t10);
    t30 = (t29 & t28);
    t31 = (t30 & 1U);
    if (t31 != 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t11) != 0)
        goto LAB52;

LAB53:    t25 = (t26 + 4);
    t32 = *((unsigned int *)t26);
    t33 = *((unsigned int *)t25);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB54;

LAB55:    memcpy(t83, t26, 8);

LAB56:    t103 = (t0 + 1012);
    xsi_vlogvar_assign_value(t103, t83, 0, 0, 1);
    goto LAB19;

LAB15:    xsi_set_current_line(14, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t10 + 4);
    t7 = (t4 + 4);
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 31);
    t14 = (t13 & 1);
    *((unsigned int *)t10) = t14;
    t15 = *((unsigned int *)t7);
    t16 = (t15 >> 31);
    t17 = (t16 & 1);
    *((unsigned int *)t3) = t17;
    t8 = (t0 + 1012);
    xsi_vlogvar_assign_value(t8, t10, 0, 0, 1);
    goto LAB19;

LAB17:    xsi_set_current_line(15, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    memset(t26, 0, 8);
    t3 = (t26 + 4);
    t7 = (t4 + 4);
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 31);
    t14 = (t13 & 1);
    *((unsigned int *)t26) = t14;
    t15 = *((unsigned int *)t7);
    t16 = (t15 >> 31);
    t17 = (t16 & 1);
    *((unsigned int *)t3) = t17;
    memset(t10, 0, 8);
    t8 = (t26 + 4);
    t18 = *((unsigned int *)t8);
    t19 = (~(t18));
    t20 = *((unsigned int *)t26);
    t21 = (t20 & t19);
    t22 = (t21 & 1U);
    if (t22 != 0)
        goto LAB73;

LAB71:    if (*((unsigned int *)t8) == 0)
        goto LAB70;

LAB72:    t9 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t9) = 1;

LAB73:    t11 = (t10 + 4);
    t24 = (t26 + 4);
    t23 = *((unsigned int *)t26);
    t27 = (~(t23));
    *((unsigned int *)t10) = t27;
    *((unsigned int *)t11) = 0;
    if (*((unsigned int *)t24) != 0)
        goto LAB75;

LAB74:    t32 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t32 & 1U);
    t33 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t33 & 1U);
    t25 = (t0 + 1012);
    xsi_vlogvar_assign_value(t25, t10, 0, 0, 1);
    goto LAB19;

LAB22:    t24 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB23;

LAB25:    *((unsigned int *)t10) = 1;
    goto LAB27;

LAB26:    t9 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB27;

LAB30:    t9 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB31;

LAB32:    *((unsigned int *)t26) = 1;
    goto LAB35;

LAB34:    t24 = (t26 + 4);
    *((unsigned int *)t26) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB35;

LAB36:    t36 = (t0 + 600U);
    t37 = *((char **)t36);
    memset(t38, 0, 8);
    t36 = (t38 + 4);
    t39 = (t37 + 4);
    t40 = *((unsigned int *)t37);
    t41 = (t40 >> 31);
    t42 = (t41 & 1);
    *((unsigned int *)t38) = t42;
    t43 = *((unsigned int *)t39);
    t44 = (t43 >> 31);
    t45 = (t44 & 1);
    *((unsigned int *)t36) = t45;
    memset(t46, 0, 8);
    t47 = (t38 + 4);
    t48 = *((unsigned int *)t47);
    t49 = (~(t48));
    t50 = *((unsigned int *)t38);
    t51 = (t50 & t49);
    t52 = (t51 & 1U);
    if (t52 != 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t47) != 0)
        goto LAB41;

LAB42:    t55 = *((unsigned int *)t26);
    t56 = *((unsigned int *)t46);
    t57 = (t55 | t56);
    *((unsigned int *)t54) = t57;
    t58 = (t26 + 4);
    t59 = (t46 + 4);
    t60 = (t54 + 4);
    t61 = *((unsigned int *)t58);
    t62 = *((unsigned int *)t59);
    t63 = (t61 | t62);
    *((unsigned int *)t60) = t63;
    t64 = *((unsigned int *)t60);
    t65 = (t64 != 0);
    if (t65 == 1)
        goto LAB43;

LAB44:
LAB45:    goto LAB38;

LAB39:    *((unsigned int *)t46) = 1;
    goto LAB42;

LAB41:    t53 = (t46 + 4);
    *((unsigned int *)t46) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB42;

LAB43:    t66 = *((unsigned int *)t54);
    t67 = *((unsigned int *)t60);
    *((unsigned int *)t54) = (t66 | t67);
    t68 = (t26 + 4);
    t69 = (t46 + 4);
    t70 = *((unsigned int *)t68);
    t71 = (~(t70));
    t72 = *((unsigned int *)t26);
    t73 = (t72 & t71);
    t74 = *((unsigned int *)t69);
    t75 = (~(t74));
    t76 = *((unsigned int *)t46);
    t77 = (t76 & t75);
    t78 = (~(t73));
    t79 = (~(t77));
    t80 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t80 & t78);
    t81 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t81 & t79);
    goto LAB45;

LAB47:    *((unsigned int *)t10) = 1;
    goto LAB49;

LAB48:    t9 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB49;

LAB50:    *((unsigned int *)t26) = 1;
    goto LAB53;

LAB52:    t24 = (t26 + 4);
    *((unsigned int *)t26) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB53;

LAB54:    t36 = (t0 + 600U);
    t37 = *((char **)t36);
    memset(t46, 0, 8);
    t36 = (t46 + 4);
    t39 = (t37 + 4);
    t35 = *((unsigned int *)t37);
    t40 = (t35 >> 31);
    t41 = (t40 & 1);
    *((unsigned int *)t46) = t41;
    t42 = *((unsigned int *)t39);
    t43 = (t42 >> 31);
    t44 = (t43 & 1);
    *((unsigned int *)t36) = t44;
    memset(t38, 0, 8);
    t47 = (t46 + 4);
    t45 = *((unsigned int *)t47);
    t48 = (~(t45));
    t49 = *((unsigned int *)t46);
    t50 = (t49 & t48);
    t51 = (t50 & 1U);
    if (t51 != 0)
        goto LAB60;

LAB58:    if (*((unsigned int *)t47) == 0)
        goto LAB57;

LAB59:    t53 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t53) = 1;

LAB60:    t58 = (t38 + 4);
    t59 = (t46 + 4);
    t52 = *((unsigned int *)t46);
    t55 = (~(t52));
    *((unsigned int *)t38) = t55;
    *((unsigned int *)t58) = 0;
    if (*((unsigned int *)t59) != 0)
        goto LAB62;

LAB61:    t63 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t63 & 1U);
    t64 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t64 & 1U);
    memset(t54, 0, 8);
    t60 = (t38 + 4);
    t65 = *((unsigned int *)t60);
    t66 = (~(t65));
    t67 = *((unsigned int *)t38);
    t70 = (t67 & t66);
    t71 = (t70 & 1U);
    if (t71 != 0)
        goto LAB63;

LAB64:    if (*((unsigned int *)t60) != 0)
        goto LAB65;

LAB66:    t72 = *((unsigned int *)t26);
    t74 = *((unsigned int *)t54);
    t75 = (t72 & t74);
    *((unsigned int *)t83) = t75;
    t69 = (t26 + 4);
    t82 = (t54 + 4);
    t84 = (t83 + 4);
    t76 = *((unsigned int *)t69);
    t78 = *((unsigned int *)t82);
    t79 = (t76 | t78);
    *((unsigned int *)t84) = t79;
    t80 = *((unsigned int *)t84);
    t81 = (t80 != 0);
    if (t81 == 1)
        goto LAB67;

LAB68:
LAB69:    goto LAB56;

LAB57:    *((unsigned int *)t38) = 1;
    goto LAB60;

LAB62:    t56 = *((unsigned int *)t38);
    t57 = *((unsigned int *)t59);
    *((unsigned int *)t38) = (t56 | t57);
    t61 = *((unsigned int *)t58);
    t62 = *((unsigned int *)t59);
    *((unsigned int *)t58) = (t61 | t62);
    goto LAB61;

LAB63:    *((unsigned int *)t54) = 1;
    goto LAB66;

LAB65:    t68 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t68) = 1;
    goto LAB66;

LAB67:    t85 = *((unsigned int *)t83);
    t86 = *((unsigned int *)t84);
    *((unsigned int *)t83) = (t85 | t86);
    t87 = (t26 + 4);
    t88 = (t54 + 4);
    t89 = *((unsigned int *)t26);
    t90 = (~(t89));
    t91 = *((unsigned int *)t87);
    t92 = (~(t91));
    t93 = *((unsigned int *)t54);
    t94 = (~(t93));
    t95 = *((unsigned int *)t88);
    t96 = (~(t95));
    t73 = (t90 & t92);
    t77 = (t94 & t96);
    t97 = (~(t73));
    t98 = (~(t77));
    t99 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t99 & t97);
    t100 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t100 & t98);
    t101 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t101 & t97);
    t102 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t102 & t98);
    goto LAB69;

LAB70:    *((unsigned int *)t10) = 1;
    goto LAB73;

LAB75:    t28 = *((unsigned int *)t10);
    t29 = *((unsigned int *)t24);
    *((unsigned int *)t10) = (t28 | t29);
    t30 = *((unsigned int *)t11);
    t31 = *((unsigned int *)t24);
    *((unsigned int *)t11) = (t30 | t31);
    goto LAB74;

}


extern void work_m_00000000003858606370_3842173357_init()
{
	static char *pe[] = {(void *)Always_8_0};
	xsi_register_didat("work_m_00000000003858606370_3842173357", "isim/testbench_isim_beh.exe.sim/work/m_00000000003858606370_3842173357.didat");
	xsi_register_executes(pe);
}
