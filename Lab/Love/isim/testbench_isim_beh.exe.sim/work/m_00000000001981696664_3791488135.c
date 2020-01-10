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
static const char *ng0 = "C:/Users/Michael Octavianus K/Desktop/P5/DM_8bit.v";
static int ng1[] = {0, 0};
static int ng2[] = {16384, 0};
static int ng3[] = {1, 0};
static int ng4[] = {2, 0};
static int ng5[] = {3, 0};
static int ng6[] = {4, 0};
static unsigned int ng7[] = {0U, 0U};
static const char *ng8 = "%d@%h: *%h <= %h";
static unsigned int ng9[] = {1U, 0U};



static void Initial_18_0(char *t0)
{
    char t5[8];
    char t14[8];
    char t15[8];
    char t37[8];
    char t38[8];
    char t49[8];
    char t62[8];
    char t63[8];
    char t74[8];
    char t87[8];
    char t88[8];
    char t99[8];
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
    char *t36;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t50;
    unsigned int t51;
    int t52;
    char *t53;
    unsigned int t54;
    int t55;
    int t56;
    unsigned int t57;
    unsigned int t58;
    int t59;
    int t60;
    char *t61;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    char *t75;
    unsigned int t76;
    int t77;
    char *t78;
    unsigned int t79;
    int t80;
    int t81;
    unsigned int t82;
    unsigned int t83;
    int t84;
    int t85;
    char *t86;
    char *t89;
    char *t90;
    char *t91;
    char *t92;
    char *t93;
    char *t94;
    char *t95;
    char *t96;
    char *t97;
    char *t98;
    char *t100;
    unsigned int t101;
    int t102;
    char *t103;
    unsigned int t104;
    int t105;
    int t106;
    unsigned int t107;
    unsigned int t108;
    int t109;
    int t110;

LAB0:    xsi_set_current_line(18, ng0);

LAB2:    xsi_set_current_line(19, ng0);
    xsi_set_current_line(19, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2116);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB3:    t1 = (t0 + 2116);
    t2 = (t1 + 36U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng2)));
    memset(t5, 0, 8);
    xsi_vlog_signed_less(t5, 32, t3, 32, t4, 32);
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
LAB4:    xsi_set_current_line(19, ng0);
    t12 = ((char*)((ng1)));
    t13 = (t0 + 2024);
    t16 = (t0 + 2024);
    t17 = (t16 + 44U);
    t18 = *((char **)t17);
    t19 = (t0 + 2024);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    t22 = (t0 + 2116);
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

LAB7:    t36 = (t0 + 2024);
    t39 = (t0 + 2024);
    t40 = (t39 + 44U);
    t41 = *((char **)t40);
    t42 = (t0 + 2024);
    t43 = (t42 + 40U);
    t44 = *((char **)t43);
    t45 = (t0 + 2116);
    t46 = (t45 + 36U);
    t47 = *((char **)t46);
    t48 = ((char*)((ng3)));
    memset(t49, 0, 8);
    xsi_vlog_signed_add(t49, 32, t47, 32, t48, 32);
    xsi_vlog_generic_convert_array_indices(t37, t38, t41, t44, 2, 1, t49, 32, 1);
    t50 = (t37 + 4);
    t51 = *((unsigned int *)t50);
    t52 = (!(t51));
    t53 = (t38 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (!(t54));
    t56 = (t52 && t55);
    if (t56 == 1)
        goto LAB8;

LAB9:    t61 = (t0 + 2024);
    t64 = (t0 + 2024);
    t65 = (t64 + 44U);
    t66 = *((char **)t65);
    t67 = (t0 + 2024);
    t68 = (t67 + 40U);
    t69 = *((char **)t68);
    t70 = (t0 + 2116);
    t71 = (t70 + 36U);
    t72 = *((char **)t71);
    t73 = ((char*)((ng4)));
    memset(t74, 0, 8);
    xsi_vlog_signed_add(t74, 32, t72, 32, t73, 32);
    xsi_vlog_generic_convert_array_indices(t62, t63, t66, t69, 2, 1, t74, 32, 1);
    t75 = (t62 + 4);
    t76 = *((unsigned int *)t75);
    t77 = (!(t76));
    t78 = (t63 + 4);
    t79 = *((unsigned int *)t78);
    t80 = (!(t79));
    t81 = (t77 && t80);
    if (t81 == 1)
        goto LAB10;

LAB11:    t86 = (t0 + 2024);
    t89 = (t0 + 2024);
    t90 = (t89 + 44U);
    t91 = *((char **)t90);
    t92 = (t0 + 2024);
    t93 = (t92 + 40U);
    t94 = *((char **)t93);
    t95 = (t0 + 2116);
    t96 = (t95 + 36U);
    t97 = *((char **)t96);
    t98 = ((char*)((ng5)));
    memset(t99, 0, 8);
    xsi_vlog_signed_add(t99, 32, t97, 32, t98, 32);
    xsi_vlog_generic_convert_array_indices(t87, t88, t91, t94, 2, 1, t99, 32, 1);
    t100 = (t87 + 4);
    t101 = *((unsigned int *)t100);
    t102 = (!(t101));
    t103 = (t88 + 4);
    t104 = *((unsigned int *)t103);
    t105 = (!(t104));
    t106 = (t102 && t105);
    if (t106 == 1)
        goto LAB12;

LAB13:    xsi_set_current_line(19, ng0);
    t1 = (t0 + 2116);
    t2 = (t1 + 36U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng6)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 2116);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB3;

LAB6:    t32 = *((unsigned int *)t14);
    t33 = *((unsigned int *)t15);
    t34 = (t32 - t33);
    t35 = (t34 + 1);
    xsi_vlogvar_assign_value(t13, t12, 0, *((unsigned int *)t15), t35);
    goto LAB7;

LAB8:    t57 = *((unsigned int *)t37);
    t58 = *((unsigned int *)t38);
    t59 = (t57 - t58);
    t60 = (t59 + 1);
    xsi_vlogvar_assign_value(t36, t12, 8, *((unsigned int *)t38), t60);
    goto LAB9;

LAB10:    t82 = *((unsigned int *)t62);
    t83 = *((unsigned int *)t63);
    t84 = (t82 - t83);
    t85 = (t84 + 1);
    xsi_vlogvar_assign_value(t61, t12, 16, *((unsigned int *)t63), t85);
    goto LAB11;

LAB12:    t107 = *((unsigned int *)t87);
    t108 = *((unsigned int *)t88);
    t109 = (t107 - t108);
    t110 = (t109 + 1);
    xsi_vlogvar_assign_value(t86, t12, 24, *((unsigned int *)t88), t110);
    goto LAB13;

}

static void Always_21_1(char *t0)
{
    char t13[8];
    char t15[8];
    char t16[8];
    char t38[8];
    char t39[8];
    char t50[8];
    char t63[8];
    char t64[8];
    char t75[8];
    char t88[8];
    char t89[8];
    char t100[8];
    char t112[16];
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
    char *t37;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t51;
    unsigned int t52;
    int t53;
    char *t54;
    unsigned int t55;
    int t56;
    int t57;
    unsigned int t58;
    unsigned int t59;
    int t60;
    int t61;
    char *t62;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    char *t76;
    unsigned int t77;
    int t78;
    char *t79;
    unsigned int t80;
    int t81;
    int t82;
    unsigned int t83;
    unsigned int t84;
    int t85;
    int t86;
    char *t87;
    char *t90;
    char *t91;
    char *t92;
    char *t93;
    char *t94;
    char *t95;
    char *t96;
    char *t97;
    char *t98;
    char *t99;
    char *t101;
    unsigned int t102;
    int t103;
    char *t104;
    unsigned int t105;
    int t106;
    int t107;
    unsigned int t108;
    unsigned int t109;
    int t110;
    int t111;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    int t118;

LAB0:    t1 = (t0 + 2784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(21, ng0);
    t2 = (t0 + 3556);
    *((int *)t2) = 1;
    t3 = (t0 + 2812);
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

LAB7:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB20;

LAB21:
LAB22:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(22, ng0);
    xsi_set_current_line(22, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2116);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 32);

LAB9:    t2 = (t0 + 2116);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    xsi_vlog_signed_less(t13, 32, t4, 32, t5, 32);
    t11 = (t13 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:    goto LAB8;

LAB10:    xsi_set_current_line(22, ng0);
    t12 = ((char*)((ng1)));
    t14 = (t0 + 2024);
    t17 = (t0 + 2024);
    t18 = (t17 + 44U);
    t19 = *((char **)t18);
    t20 = (t0 + 2024);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    t23 = (t0 + 2116);
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
        goto LAB12;

LAB13:    t37 = (t0 + 2024);
    t40 = (t0 + 2024);
    t41 = (t40 + 44U);
    t42 = *((char **)t41);
    t43 = (t0 + 2024);
    t44 = (t43 + 40U);
    t45 = *((char **)t44);
    t46 = (t0 + 2116);
    t47 = (t46 + 36U);
    t48 = *((char **)t47);
    t49 = ((char*)((ng3)));
    memset(t50, 0, 8);
    xsi_vlog_signed_add(t50, 32, t48, 32, t49, 32);
    xsi_vlog_generic_convert_array_indices(t38, t39, t42, t45, 2, 1, t50, 32, 1);
    t51 = (t38 + 4);
    t52 = *((unsigned int *)t51);
    t53 = (!(t52));
    t54 = (t39 + 4);
    t55 = *((unsigned int *)t54);
    t56 = (!(t55));
    t57 = (t53 && t56);
    if (t57 == 1)
        goto LAB14;

LAB15:    t62 = (t0 + 2024);
    t65 = (t0 + 2024);
    t66 = (t65 + 44U);
    t67 = *((char **)t66);
    t68 = (t0 + 2024);
    t69 = (t68 + 40U);
    t70 = *((char **)t69);
    t71 = (t0 + 2116);
    t72 = (t71 + 36U);
    t73 = *((char **)t72);
    t74 = ((char*)((ng4)));
    memset(t75, 0, 8);
    xsi_vlog_signed_add(t75, 32, t73, 32, t74, 32);
    xsi_vlog_generic_convert_array_indices(t63, t64, t67, t70, 2, 1, t75, 32, 1);
    t76 = (t63 + 4);
    t77 = *((unsigned int *)t76);
    t78 = (!(t77));
    t79 = (t64 + 4);
    t80 = *((unsigned int *)t79);
    t81 = (!(t80));
    t82 = (t78 && t81);
    if (t82 == 1)
        goto LAB16;

LAB17:    t87 = (t0 + 2024);
    t90 = (t0 + 2024);
    t91 = (t90 + 44U);
    t92 = *((char **)t91);
    t93 = (t0 + 2024);
    t94 = (t93 + 40U);
    t95 = *((char **)t94);
    t96 = (t0 + 2116);
    t97 = (t96 + 36U);
    t98 = *((char **)t97);
    t99 = ((char*)((ng5)));
    memset(t100, 0, 8);
    xsi_vlog_signed_add(t100, 32, t98, 32, t99, 32);
    xsi_vlog_generic_convert_array_indices(t88, t89, t92, t95, 2, 1, t100, 32, 1);
    t101 = (t88 + 4);
    t102 = *((unsigned int *)t101);
    t103 = (!(t102));
    t104 = (t89 + 4);
    t105 = *((unsigned int *)t104);
    t106 = (!(t105));
    t107 = (t103 && t106);
    if (t107 == 1)
        goto LAB18;

LAB19:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 2116);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t13, 0, 8);
    xsi_vlog_signed_add(t13, 32, t4, 32, t5, 32);
    t11 = (t0 + 2116);
    xsi_vlogvar_assign_value(t11, t13, 0, 0, 32);
    goto LAB9;

LAB12:    t33 = *((unsigned int *)t15);
    t34 = *((unsigned int *)t16);
    t35 = (t33 - t34);
    t36 = (t35 + 1);
    xsi_vlogvar_assign_value(t14, t12, 0, *((unsigned int *)t16), t36);
    goto LAB13;

LAB14:    t58 = *((unsigned int *)t38);
    t59 = *((unsigned int *)t39);
    t60 = (t58 - t59);
    t61 = (t60 + 1);
    xsi_vlogvar_assign_value(t37, t12, 8, *((unsigned int *)t39), t61);
    goto LAB15;

LAB16:    t83 = *((unsigned int *)t63);
    t84 = *((unsigned int *)t64);
    t85 = (t83 - t84);
    t86 = (t85 + 1);
    xsi_vlogvar_assign_value(t62, t12, 16, *((unsigned int *)t64), t86);
    goto LAB17;

LAB18:    t108 = *((unsigned int *)t88);
    t109 = *((unsigned int *)t89);
    t110 = (t108 - t109);
    t111 = (t110 + 1);
    xsi_vlogvar_assign_value(t87, t12, 24, *((unsigned int *)t89), t111);
    goto LAB19;

LAB20:    xsi_set_current_line(23, ng0);

LAB23:    xsi_set_current_line(24, ng0);
    t4 = ((char*)((ng7)));
    t5 = (t0 + 1060U);
    t11 = *((char **)t5);
    memset(t15, 0, 8);
    t5 = (t15 + 4);
    t12 = (t11 + 4);
    t27 = *((unsigned int *)t11);
    t30 = (t27 >> 2);
    *((unsigned int *)t15) = t30;
    t33 = *((unsigned int *)t12);
    t34 = (t33 >> 2);
    *((unsigned int *)t5) = t34;
    t52 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t52 & 4095U);
    t55 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t55 & 4095U);
    t14 = ((char*)((ng7)));
    xsi_vlogtype_concat(t13, 32, 32, 3U, t14, 18, t15, 12, t4, 2);
    t17 = (t0 + 2116);
    xsi_vlogvar_assign_value(t17, t13, 0, 0, 32);
    xsi_set_current_line(25, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);

LAB24:    t2 = ((char*)((ng1)));
    t28 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 32);
    if (t28 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng3)));
    t28 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 32);
    if (t28 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng5)));
    t28 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 32);
    if (t28 == 1)
        goto LAB29;

LAB30:
LAB31:    goto LAB22;

LAB25:    xsi_set_current_line(26, ng0);

LAB32:    xsi_set_current_line(27, ng0);
    t4 = (t0 + 1152U);
    t5 = *((char **)t4);
    memset(t13, 0, 8);
    t4 = (t13 + 4);
    t11 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 0);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t11);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 255U);
    t27 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t27 & 255U);
    t12 = (t0 + 2024);
    t14 = (t0 + 2024);
    t17 = (t14 + 44U);
    t18 = *((char **)t17);
    t19 = (t0 + 2024);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    t22 = (t0 + 1060U);
    t23 = *((char **)t22);
    xsi_vlog_generic_convert_array_indices(t15, t16, t18, t21, 2, 1, t23, 14, 2);
    t22 = (t15 + 4);
    t30 = *((unsigned int *)t22);
    t31 = (!(t30));
    t24 = (t16 + 4);
    t33 = *((unsigned int *)t24);
    t32 = (!(t33));
    t35 = (t31 && t32);
    if (t35 == 1)
        goto LAB33;

LAB34:    xsi_set_current_line(28, ng0);
    t2 = xsi_vlog_time(t112, 1000.0000000000000, 1.0000000000000000);
    t4 = (t0 + 1244U);
    t5 = *((char **)t4);
    t4 = (t0 + 2116);
    t11 = (t4 + 36U);
    t12 = *((char **)t11);
    t14 = (t0 + 2024);
    t17 = (t14 + 36U);
    t18 = *((char **)t17);
    t19 = (t0 + 2024);
    t20 = (t19 + 44U);
    t21 = *((char **)t20);
    t22 = (t0 + 2024);
    t23 = (t22 + 40U);
    t24 = *((char **)t23);
    t25 = (t0 + 2116);
    t26 = (t25 + 36U);
    t29 = *((char **)t26);
    xsi_vlog_generic_get_array_select_value(t15, 8, t18, t21, t24, 2, 1, t29, 32, 1);
    t37 = (t0 + 2024);
    t40 = (t37 + 36U);
    t41 = *((char **)t40);
    t42 = (t0 + 2024);
    t43 = (t42 + 44U);
    t44 = *((char **)t43);
    t45 = (t0 + 2024);
    t46 = (t45 + 40U);
    t47 = *((char **)t46);
    t48 = (t0 + 2116);
    t49 = (t48 + 36U);
    t51 = *((char **)t49);
    t54 = ((char*)((ng3)));
    memset(t38, 0, 8);
    xsi_vlog_signed_add(t38, 32, t51, 32, t54, 32);
    xsi_vlog_generic_get_array_select_value(t16, 8, t41, t44, t47, 2, 1, t38, 32, 1);
    t62 = (t0 + 2024);
    t65 = (t62 + 36U);
    t66 = *((char **)t65);
    t67 = (t0 + 2024);
    t68 = (t67 + 44U);
    t69 = *((char **)t68);
    t70 = (t0 + 2024);
    t71 = (t70 + 40U);
    t72 = *((char **)t71);
    t73 = (t0 + 2116);
    t74 = (t73 + 36U);
    t76 = *((char **)t74);
    t79 = ((char*)((ng4)));
    memset(t50, 0, 8);
    xsi_vlog_signed_add(t50, 32, t76, 32, t79, 32);
    xsi_vlog_generic_get_array_select_value(t39, 8, t66, t69, t72, 2, 1, t50, 32, 1);
    t87 = (t0 + 2024);
    t90 = (t87 + 36U);
    t91 = *((char **)t90);
    t92 = (t0 + 2024);
    t93 = (t92 + 44U);
    t94 = *((char **)t93);
    t95 = (t0 + 2024);
    t96 = (t95 + 40U);
    t97 = *((char **)t96);
    t98 = (t0 + 2116);
    t99 = (t98 + 36U);
    t101 = *((char **)t99);
    t104 = ((char*)((ng5)));
    memset(t64, 0, 8);
    xsi_vlog_signed_add(t64, 32, t101, 32, t104, 32);
    xsi_vlog_generic_get_array_select_value(t63, 8, t91, t94, t97, 2, 1, t64, 32, 1);
    xsi_vlogtype_concat(t13, 32, 32, 4U, t63, 8, t39, 8, t16, 8, t15, 8);
    xsi_vlogfile_write(1, 0, 0, ng8, 5, t0, (char)118, t112, 64, (char)118, t5, 32, (char)119, t12, 32, (char)118, t13, 32);
    goto LAB31;

LAB27:    xsi_set_current_line(30, ng0);

LAB35:    xsi_set_current_line(31, ng0);
    t4 = (t0 + 1152U);
    t5 = *((char **)t4);
    memset(t13, 0, 8);
    t4 = (t13 + 4);
    t11 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 0);
    *((unsigned int *)t13) = t7;
    t8 = *((unsigned int *)t11);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t10 & 65535U);
    t27 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t27 & 65535U);
    t12 = (t0 + 2024);
    t14 = (t0 + 2024);
    t17 = (t14 + 44U);
    t18 = *((char **)t17);
    t19 = (t0 + 2024);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    t22 = ((char*)((ng7)));
    t23 = (t0 + 1060U);
    t24 = *((char **)t23);
    memset(t39, 0, 8);
    t23 = (t39 + 4);
    t25 = (t24 + 4);
    t30 = *((unsigned int *)t24);
    t33 = (t30 >> 1);
    *((unsigned int *)t39) = t33;
    t34 = *((unsigned int *)t25);
    t52 = (t34 >> 1);
    *((unsigned int *)t23) = t52;
    t55 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t55 & 8191U);
    t58 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t58 & 8191U);
    xsi_vlogtype_concat(t38, 14, 14, 2U, t39, 13, t22, 1);
    xsi_vlog_generic_convert_array_indices(t15, t16, t18, t21, 2, 1, t38, 14, 2);
    t26 = (t15 + 4);
    t59 = *((unsigned int *)t26);
    t31 = (!(t59));
    t29 = (t16 + 4);
    t77 = *((unsigned int *)t29);
    t32 = (!(t77));
    t35 = (t31 && t32);
    if (t35 == 1)
        goto LAB36;

LAB37:    t37 = (t0 + 2024);
    t40 = (t0 + 2024);
    t41 = (t40 + 44U);
    t42 = *((char **)t41);
    t43 = (t0 + 2024);
    t44 = (t43 + 40U);
    t45 = *((char **)t44);
    t46 = ((char*)((ng9)));
    t47 = (t0 + 1060U);
    t48 = *((char **)t47);
    memset(t75, 0, 8);
    t47 = (t75 + 4);
    t49 = (t48 + 4);
    t84 = *((unsigned int *)t48);
    t102 = (t84 >> 1);
    *((unsigned int *)t75) = t102;
    t105 = *((unsigned int *)t49);
    t108 = (t105 >> 1);
    *((unsigned int *)t47) = t108;
    t109 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t109 & 8191U);
    t113 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t113 & 8191U);
    xsi_vlogtype_concat(t64, 14, 14, 2U, t75, 13, t46, 1);
    xsi_vlog_generic_convert_array_indices(t50, t63, t42, t45, 2, 1, t64, 14, 2);
    t51 = (t50 + 4);
    t114 = *((unsigned int *)t51);
    t56 = (!(t114));
    t54 = (t63 + 4);
    t115 = *((unsigned int *)t54);
    t57 = (!(t115));
    t60 = (t56 && t57);
    if (t60 == 1)
        goto LAB38;

LAB39:    xsi_set_current_line(32, ng0);
    t2 = xsi_vlog_time(t112, 1000.0000000000000, 1.0000000000000000);
    t4 = (t0 + 1244U);
    t5 = *((char **)t4);
    t4 = (t0 + 2116);
    t11 = (t4 + 36U);
    t12 = *((char **)t11);
    t14 = (t0 + 2024);
    t17 = (t14 + 36U);
    t18 = *((char **)t17);
    t19 = (t0 + 2024);
    t20 = (t19 + 44U);
    t21 = *((char **)t20);
    t22 = (t0 + 2024);
    t23 = (t22 + 40U);
    t24 = *((char **)t23);
    t25 = (t0 + 2116);
    t26 = (t25 + 36U);
    t29 = *((char **)t26);
    xsi_vlog_generic_get_array_select_value(t15, 8, t18, t21, t24, 2, 1, t29, 32, 1);
    t37 = (t0 + 2024);
    t40 = (t37 + 36U);
    t41 = *((char **)t40);
    t42 = (t0 + 2024);
    t43 = (t42 + 44U);
    t44 = *((char **)t43);
    t45 = (t0 + 2024);
    t46 = (t45 + 40U);
    t47 = *((char **)t46);
    t48 = (t0 + 2116);
    t49 = (t48 + 36U);
    t51 = *((char **)t49);
    t54 = ((char*)((ng3)));
    memset(t38, 0, 8);
    xsi_vlog_signed_add(t38, 32, t51, 32, t54, 32);
    xsi_vlog_generic_get_array_select_value(t16, 8, t41, t44, t47, 2, 1, t38, 32, 1);
    t62 = (t0 + 2024);
    t65 = (t62 + 36U);
    t66 = *((char **)t65);
    t67 = (t0 + 2024);
    t68 = (t67 + 44U);
    t69 = *((char **)t68);
    t70 = (t0 + 2024);
    t71 = (t70 + 40U);
    t72 = *((char **)t71);
    t73 = (t0 + 2116);
    t74 = (t73 + 36U);
    t76 = *((char **)t74);
    t79 = ((char*)((ng4)));
    memset(t50, 0, 8);
    xsi_vlog_signed_add(t50, 32, t76, 32, t79, 32);
    xsi_vlog_generic_get_array_select_value(t39, 8, t66, t69, t72, 2, 1, t50, 32, 1);
    t87 = (t0 + 2024);
    t90 = (t87 + 36U);
    t91 = *((char **)t90);
    t92 = (t0 + 2024);
    t93 = (t92 + 44U);
    t94 = *((char **)t93);
    t95 = (t0 + 2024);
    t96 = (t95 + 40U);
    t97 = *((char **)t96);
    t98 = (t0 + 2116);
    t99 = (t98 + 36U);
    t101 = *((char **)t99);
    t104 = ((char*)((ng5)));
    memset(t64, 0, 8);
    xsi_vlog_signed_add(t64, 32, t101, 32, t104, 32);
    xsi_vlog_generic_get_array_select_value(t63, 8, t91, t94, t97, 2, 1, t64, 32, 1);
    xsi_vlogtype_concat(t13, 32, 32, 4U, t63, 8, t39, 8, t16, 8, t15, 8);
    xsi_vlogfile_write(1, 0, 0, ng8, 5, t0, (char)118, t112, 64, (char)118, t5, 32, (char)119, t12, 32, (char)118, t13, 32);
    goto LAB31;

LAB29:    xsi_set_current_line(34, ng0);

LAB40:    xsi_set_current_line(35, ng0);
    t4 = (t0 + 1152U);
    t5 = *((char **)t4);
    t4 = (t0 + 2024);
    t11 = (t0 + 2024);
    t12 = (t11 + 44U);
    t14 = *((char **)t12);
    t17 = (t0 + 2024);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    t20 = (t0 + 2116);
    t21 = (t20 + 36U);
    t22 = *((char **)t21);
    xsi_vlog_generic_convert_array_indices(t13, t15, t14, t19, 2, 1, t22, 32, 1);
    t23 = (t13 + 4);
    t6 = *((unsigned int *)t23);
    t31 = (!(t6));
    t24 = (t15 + 4);
    t7 = *((unsigned int *)t24);
    t32 = (!(t7));
    t35 = (t31 && t32);
    if (t35 == 1)
        goto LAB41;

LAB42:    t25 = (t0 + 2024);
    t26 = (t0 + 2024);
    t29 = (t26 + 44U);
    t37 = *((char **)t29);
    t40 = (t0 + 2024);
    t41 = (t40 + 40U);
    t42 = *((char **)t41);
    t43 = (t0 + 2116);
    t44 = (t43 + 36U);
    t45 = *((char **)t44);
    t46 = ((char*)((ng3)));
    memset(t39, 0, 8);
    xsi_vlog_signed_add(t39, 32, t45, 32, t46, 32);
    xsi_vlog_generic_convert_array_indices(t16, t38, t37, t42, 2, 1, t39, 32, 1);
    t47 = (t16 + 4);
    t10 = *((unsigned int *)t47);
    t56 = (!(t10));
    t48 = (t38 + 4);
    t27 = *((unsigned int *)t48);
    t57 = (!(t27));
    t60 = (t56 && t57);
    if (t60 == 1)
        goto LAB43;

LAB44:    t49 = (t0 + 2024);
    t51 = (t0 + 2024);
    t54 = (t51 + 44U);
    t62 = *((char **)t54);
    t65 = (t0 + 2024);
    t66 = (t65 + 40U);
    t67 = *((char **)t66);
    t68 = (t0 + 2116);
    t69 = (t68 + 36U);
    t70 = *((char **)t69);
    t71 = ((char*)((ng4)));
    memset(t64, 0, 8);
    xsi_vlog_signed_add(t64, 32, t70, 32, t71, 32);
    xsi_vlog_generic_convert_array_indices(t50, t63, t62, t67, 2, 1, t64, 32, 1);
    t72 = (t50 + 4);
    t34 = *((unsigned int *)t72);
    t81 = (!(t34));
    t73 = (t63 + 4);
    t52 = *((unsigned int *)t73);
    t82 = (!(t52));
    t85 = (t81 && t82);
    if (t85 == 1)
        goto LAB45;

LAB46:    t74 = (t0 + 2024);
    t76 = (t0 + 2024);
    t79 = (t76 + 44U);
    t87 = *((char **)t79);
    t90 = (t0 + 2024);
    t91 = (t90 + 40U);
    t92 = *((char **)t91);
    t93 = (t0 + 2116);
    t94 = (t93 + 36U);
    t95 = *((char **)t94);
    t96 = ((char*)((ng5)));
    memset(t89, 0, 8);
    xsi_vlog_signed_add(t89, 32, t95, 32, t96, 32);
    xsi_vlog_generic_convert_array_indices(t75, t88, t87, t92, 2, 1, t89, 32, 1);
    t97 = (t75 + 4);
    t59 = *((unsigned int *)t97);
    t106 = (!(t59));
    t98 = (t88 + 4);
    t77 = *((unsigned int *)t98);
    t107 = (!(t77));
    t110 = (t106 && t107);
    if (t110 == 1)
        goto LAB47;

LAB48:    xsi_set_current_line(36, ng0);
    t2 = xsi_vlog_time(t112, 1000.0000000000000, 1.0000000000000000);
    t4 = (t0 + 1244U);
    t5 = *((char **)t4);
    t4 = (t0 + 2116);
    t11 = (t4 + 36U);
    t12 = *((char **)t11);
    t14 = (t0 + 1152U);
    t17 = *((char **)t14);
    xsi_vlogfile_write(1, 0, 0, ng8, 5, t0, (char)118, t112, 64, (char)118, t5, 32, (char)119, t12, 32, (char)118, t17, 32);
    goto LAB31;

LAB33:    t34 = *((unsigned int *)t15);
    t52 = *((unsigned int *)t16);
    t36 = (t34 - t52);
    t53 = (t36 + 1);
    xsi_vlogvar_assign_value(t12, t13, 0, *((unsigned int *)t16), t53);
    goto LAB34;

LAB36:    t80 = *((unsigned int *)t15);
    t83 = *((unsigned int *)t16);
    t36 = (t80 - t83);
    t53 = (t36 + 1);
    xsi_vlogvar_assign_value(t12, t13, 0, *((unsigned int *)t16), t53);
    goto LAB37;

LAB38:    t116 = *((unsigned int *)t50);
    t117 = *((unsigned int *)t63);
    t61 = (t116 - t117);
    t78 = (t61 + 1);
    xsi_vlogvar_assign_value(t37, t13, 8, *((unsigned int *)t63), t78);
    goto LAB39;

LAB41:    t8 = *((unsigned int *)t13);
    t9 = *((unsigned int *)t15);
    t36 = (t8 - t9);
    t53 = (t36 + 1);
    xsi_vlogvar_assign_value(t4, t5, 0, *((unsigned int *)t15), t53);
    goto LAB42;

LAB43:    t30 = *((unsigned int *)t16);
    t33 = *((unsigned int *)t38);
    t61 = (t30 - t33);
    t78 = (t61 + 1);
    xsi_vlogvar_assign_value(t25, t5, 8, *((unsigned int *)t38), t78);
    goto LAB44;

LAB45:    t55 = *((unsigned int *)t50);
    t58 = *((unsigned int *)t63);
    t86 = (t55 - t58);
    t103 = (t86 + 1);
    xsi_vlogvar_assign_value(t49, t5, 16, *((unsigned int *)t63), t103);
    goto LAB46;

LAB47:    t80 = *((unsigned int *)t75);
    t83 = *((unsigned int *)t88);
    t111 = (t80 - t83);
    t118 = (t111 + 1);
    xsi_vlogvar_assign_value(t74, t5, 24, *((unsigned int *)t88), t118);
    goto LAB48;

}

static void Cont_43_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t33[8];
    char t37[8];
    char t48[8];
    char t57[8];
    char t61[8];
    char t70[8];
    char t74[8];
    char t83[8];
    char t88[8];
    char t89[8];
    char t92[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t34;
    char *t35;
    char *t36;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t58;
    char *t59;
    char *t60;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t71;
    char *t72;
    char *t73;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t90;
    char *t91;
    char *t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    char *t106;
    char *t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    char *t111;
    char *t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    char *t118;
    char *t119;
    char *t120;
    char *t121;
    char *t122;

LAB0:    t1 = (t0 + 2928U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 968U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t84 = *((unsigned int *)t4);
    t85 = (~(t84));
    t86 = *((unsigned int *)t29);
    t87 = (t85 || t86);
    if (t87 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t88, 8);

LAB20:    t111 = (t0 + 3632);
    t118 = (t111 + 32U);
    t119 = *((char **)t118);
    t120 = (t119 + 40U);
    t121 = *((char **)t120);
    memcpy(t121, t3, 8);
    xsi_driver_vfirst_trans(t111, 0, 31);
    t122 = (t0 + 3564);
    *((int *)t122) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t34 = (t0 + 2024);
    t35 = (t34 + 36U);
    t36 = *((char **)t35);
    t38 = (t0 + 2024);
    t39 = (t38 + 44U);
    t40 = *((char **)t39);
    t41 = (t0 + 2024);
    t42 = (t41 + 40U);
    t43 = *((char **)t42);
    t44 = (t0 + 1060U);
    t45 = *((char **)t44);
    xsi_vlog_generic_get_array_select_value(t37, 8, t36, t40, t43, 2, 1, t45, 14, 2);
    t44 = (t0 + 2024);
    t46 = (t44 + 36U);
    t47 = *((char **)t46);
    t49 = (t0 + 2024);
    t50 = (t49 + 44U);
    t51 = *((char **)t50);
    t52 = (t0 + 2024);
    t53 = (t52 + 40U);
    t54 = *((char **)t53);
    t55 = (t0 + 1060U);
    t56 = *((char **)t55);
    t55 = ((char*)((ng3)));
    memset(t57, 0, 8);
    xsi_vlog_unsigned_add(t57, 32, t56, 14, t55, 32);
    xsi_vlog_generic_get_array_select_value(t48, 8, t47, t51, t54, 2, 1, t57, 32, 2);
    t58 = (t0 + 2024);
    t59 = (t58 + 36U);
    t60 = *((char **)t59);
    t62 = (t0 + 2024);
    t63 = (t62 + 44U);
    t64 = *((char **)t63);
    t65 = (t0 + 2024);
    t66 = (t65 + 40U);
    t67 = *((char **)t66);
    t68 = (t0 + 1060U);
    t69 = *((char **)t68);
    t68 = ((char*)((ng4)));
    memset(t70, 0, 8);
    xsi_vlog_unsigned_add(t70, 32, t69, 14, t68, 32);
    xsi_vlog_generic_get_array_select_value(t61, 8, t60, t64, t67, 2, 1, t70, 32, 2);
    t71 = (t0 + 2024);
    t72 = (t71 + 36U);
    t73 = *((char **)t72);
    t75 = (t0 + 2024);
    t76 = (t75 + 44U);
    t77 = *((char **)t76);
    t78 = (t0 + 2024);
    t79 = (t78 + 40U);
    t80 = *((char **)t79);
    t81 = (t0 + 1060U);
    t82 = *((char **)t81);
    t81 = ((char*)((ng5)));
    memset(t83, 0, 8);
    xsi_vlog_unsigned_add(t83, 32, t82, 14, t81, 32);
    xsi_vlog_generic_get_array_select_value(t74, 8, t73, t77, t80, 2, 1, t83, 32, 2);
    xsi_vlogtype_concat(t33, 32, 32, 4U, t74, 8, t61, 8, t48, 8, t37, 8);
    goto LAB13;

LAB14:    t90 = (t0 + 968U);
    t91 = *((char **)t90);
    memset(t92, 0, 8);
    t90 = (t92 + 4);
    t93 = (t91 + 4);
    t94 = *((unsigned int *)t91);
    t95 = (t94 >> 0);
    t96 = (t95 & 1);
    *((unsigned int *)t92) = t96;
    t97 = *((unsigned int *)t93);
    t98 = (t97 >> 0);
    t99 = (t98 & 1);
    *((unsigned int *)t90) = t99;
    memset(t89, 0, 8);
    t100 = (t92 + 4);
    t101 = *((unsigned int *)t100);
    t102 = (~(t101));
    t103 = *((unsigned int *)t92);
    t104 = (t103 & t102);
    t105 = (t104 & 1U);
    if (t105 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t100) != 0)
        goto LAB23;

LAB24:    t107 = (t89 + 4);
    t108 = *((unsigned int *)t89);
    t109 = *((unsigned int *)t107);
    t110 = (t108 || t109);
    if (t110 > 0)
        goto LAB25;

LAB26:    t113 = *((unsigned int *)t89);
    t114 = (~(t113));
    t115 = *((unsigned int *)t107);
    t116 = (t114 || t115);
    if (t116 > 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t107) > 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t89) > 0)
        goto LAB31;

LAB32:    memcpy(t88, t117, 8);

LAB33:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t33, 32, t88, 32);
    goto LAB20;

LAB18:    memcpy(t3, t33, 8);
    goto LAB20;

LAB21:    *((unsigned int *)t89) = 1;
    goto LAB24;

LAB23:    t106 = (t89 + 4);
    *((unsigned int *)t89) = 1;
    *((unsigned int *)t106) = 1;
    goto LAB24;

LAB25:    t111 = (t0 + 1428U);
    t112 = *((char **)t111);
    goto LAB26;

LAB27:    t111 = (t0 + 1520U);
    t117 = *((char **)t111);
    goto LAB28;

LAB29:    xsi_vlog_unsigned_bit_combine(t88, 32, t112, 32, t117, 32);
    goto LAB33;

LAB31:    memcpy(t88, t112, 8);
    goto LAB33;

}

static void implSig1_execute(char *t0)
{
    char t3[8];
    char t6[8];
    char t17[8];
    char t26[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
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
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;

LAB0:    t1 = (t0 + 3072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2024);
    t4 = (t2 + 36U);
    t5 = *((char **)t4);
    t7 = (t0 + 2024);
    t8 = (t7 + 44U);
    t9 = *((char **)t8);
    t10 = (t0 + 2024);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    t13 = (t0 + 1060U);
    t14 = *((char **)t13);
    xsi_vlog_generic_get_array_select_value(t6, 8, t5, t9, t12, 2, 1, t14, 14, 2);
    t13 = (t0 + 2024);
    t15 = (t13 + 36U);
    t16 = *((char **)t15);
    t18 = (t0 + 2024);
    t19 = (t18 + 44U);
    t20 = *((char **)t19);
    t21 = (t0 + 2024);
    t22 = (t21 + 40U);
    t23 = *((char **)t22);
    t24 = (t0 + 1060U);
    t25 = *((char **)t24);
    t24 = ((char*)((ng3)));
    memset(t26, 0, 8);
    xsi_vlog_unsigned_add(t26, 32, t25, 14, t24, 32);
    xsi_vlog_generic_get_array_select_value(t17, 8, t16, t20, t23, 2, 1, t26, 32, 2);
    xsi_vlogtype_concat(t3, 16, 16, 2U, t17, 8, t6, 8);
    t27 = (t0 + 3668);
    t28 = (t27 + 32U);
    t29 = *((char **)t28);
    t30 = (t29 + 40U);
    t31 = *((char **)t30);
    memset(t31, 0, 8);
    t32 = 65535U;
    t33 = t32;
    t34 = (t3 + 4);
    t35 = *((unsigned int *)t3);
    t32 = (t32 & t35);
    t36 = *((unsigned int *)t34);
    t33 = (t33 & t36);
    t37 = (t31 + 4);
    t38 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t38 | t32);
    t39 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t39 | t33);
    xsi_driver_vfirst_trans(t27, 0, 15);
    t40 = (t0 + 3572);
    *((int *)t40) = 1;

LAB1:    return;
}

static void implSig2_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 3216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 876U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng7)));
    xsi_vlogtype_concat(t3, 2, 2, 2U, t2, 1, t4, 1);
    t5 = (t0 + 3704);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 3U;
    t11 = t10;
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t3);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 1);
    t18 = (t0 + 3580);
    *((int *)t18) = 1;

LAB1:    return;
}

static void implSig3_execute(char *t0)
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
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;

LAB0:    t1 = (t0 + 3360U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2024);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t6 = (t0 + 2024);
    t7 = (t6 + 44U);
    t8 = *((char **)t7);
    t9 = (t0 + 2024);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    t12 = (t0 + 1060U);
    t13 = *((char **)t12);
    xsi_vlog_generic_get_array_select_value(t5, 8, t4, t8, t11, 2, 1, t13, 14, 2);
    t12 = (t0 + 3740);
    t14 = (t12 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memset(t17, 0, 8);
    t18 = 255U;
    t19 = t18;
    t20 = (t5 + 4);
    t21 = *((unsigned int *)t5);
    t18 = (t18 & t21);
    t22 = *((unsigned int *)t20);
    t19 = (t19 & t22);
    t23 = (t17 + 4);
    t24 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t24 | t18);
    t25 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t25 | t19);
    xsi_driver_vfirst_trans(t12, 0, 7);
    t26 = (t0 + 3588);
    *((int *)t26) = 1;

LAB1:    return;
}


extern void work_m_00000000001981696664_3791488135_init()
{
	static char *pe[] = {(void *)Initial_18_0,(void *)Always_21_1,(void *)Cont_43_2,(void *)implSig1_execute,(void *)implSig2_execute,(void *)implSig3_execute};
	xsi_register_didat("work_m_00000000001981696664_3791488135", "isim/testbench_isim_beh.exe.sim/work/m_00000000001981696664_3791488135.didat");
	xsi_register_executes(pe);
}
