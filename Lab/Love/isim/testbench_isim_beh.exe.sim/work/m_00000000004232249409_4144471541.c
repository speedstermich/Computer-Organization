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
static const char *ng0 = "C:/Users/Michael Octavianus K/Desktop/P5/Controller.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {90152U, 0U};
static int ng3[] = {2, 0};
static unsigned int ng4[] = {90144U, 0U};
static int ng5[] = {3, 0};
static unsigned int ng6[] = {90148U, 0U};
static int ng7[] = {4, 0};
static unsigned int ng8[] = {81960U, 0U};
static int ng9[] = {6, 0};
static unsigned int ng10[] = {81952U, 0U};
static int ng11[] = {8, 0};
static unsigned int ng12[] = {64U, 0U};
static int ng13[] = {9, 0};
static unsigned int ng14[] = {82240U, 0U};
static int ng15[] = {20, 0};
static unsigned int ng16[] = {20516U, 0U};
static int ng17[] = {32, 0};
static unsigned int ng18[] = {81928U, 0U};
static int ng19[] = {33, 0};
static int ng20[] = {34, 0};
static unsigned int ng21[] = {81932U, 0U};
static int ng22[] = {35, 0};
static int ng23[] = {36, 0};
static unsigned int ng24[] = {81936U, 0U};
static int ng25[] = {37, 0};
static unsigned int ng26[] = {81940U, 0U};
static int ng27[] = {38, 0};
static unsigned int ng28[] = {81944U, 0U};
static int ng29[] = {39, 0};
static unsigned int ng30[] = {81948U, 0U};
static int ng31[] = {42, 0};
static unsigned int ng32[] = {81968U, 0U};
static int ng33[] = {43, 0};
static unsigned int ng34[] = {81972U, 0U};
static int ng35[] = {1, 0};
static unsigned int ng36[] = {395280U, 0U};
static unsigned int ng37[] = {395284U, 0U};
static int ng38[] = {17, 0};
static unsigned int ng39[] = {493844U, 0U};
static unsigned int ng40[] = {4160U, 0U};
static unsigned int ng41[] = {102720U, 0U};
static unsigned int ng42[] = {411648U, 0U};
static int ng43[] = {5, 0};
static unsigned int ng44[] = {411652U, 0U};
static unsigned int ng45[] = {395272U, 0U};
static int ng46[] = {7, 0};
static unsigned int ng47[] = {395276U, 0U};
static unsigned int ng48[] = {69640U, 0U};
static int ng49[] = {10, 0};
static unsigned int ng50[] = {69680U, 0U};
static int ng51[] = {11, 0};
static unsigned int ng52[] = {69684U, 0U};
static int ng53[] = {12, 0};
static unsigned int ng54[] = {200720U, 0U};
static int ng55[] = {13, 0};
static unsigned int ng56[] = {200724U, 0U};
static int ng57[] = {14, 0};
static unsigned int ng58[] = {200728U, 0U};
static int ng59[] = {15, 0};
static unsigned int ng60[] = {331796U, 0U};
static int ng61[] = {24, 0};
static unsigned int ng62[] = {493832U, 0U};
static int ng63[] = {28, 0};
static unsigned int ng64[] = {81956U, 0U};
static unsigned int ng65[] = {69768U, 0U};
static int ng66[] = {40, 0};
static unsigned int ng67[] = {5128U, 0U};
static int ng68[] = {41, 0};
static int ng69[] = {63, 0};
static unsigned int ng70[] = {84308U, 0U};



static void Always_19_0(char *t0)
{
    char t6[8];
    char t31[8];
    char t33[8];
    char t34[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
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
    int t30;
    int t32;

LAB0:    t1 = (t0 + 2364U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(19, ng0);
    t2 = (t0 + 2704);
    *((int *)t2) = 1;
    t3 = (t0 + 2392);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(19, ng0);

LAB5:    xsi_set_current_line(20, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
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
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(21, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 26);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 26);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 63U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 63U);

LAB13:    t5 = ((char*)((ng1)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t5, 32);
    if (t30 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng35)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng5)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng7)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng43)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng9)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng46)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng11)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng13)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng49)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng51)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng53)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng55)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB40;

LAB41:    t2 = ((char*)((ng57)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB42;

LAB43:    t2 = ((char*)((ng59)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB44;

LAB45:    t2 = ((char*)((ng61)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB46;

LAB47:    t2 = ((char*)((ng63)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB48;

LAB49:    t2 = ((char*)((ng17)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB50;

LAB51:    t2 = ((char*)((ng19)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB52;

LAB53:    t2 = ((char*)((ng22)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB54;

LAB55:    t2 = ((char*)((ng23)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB56;

LAB57:    t2 = ((char*)((ng25)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB58;

LAB59:    t2 = ((char*)((ng66)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB60;

LAB61:    t2 = ((char*)((ng68)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB62;

LAB63:    t2 = ((char*)((ng33)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB64;

LAB65:    t2 = ((char*)((ng69)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 32, t2, 32);
    if (t30 == 1)
        goto LAB66;

LAB67:
LAB68:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(20, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 1840);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 19);
    goto LAB12;

LAB14:    xsi_set_current_line(22, ng0);
    t7 = (t0 + 600U);
    t8 = *((char **)t7);
    memset(t31, 0, 8);
    t7 = (t31 + 4);
    t21 = (t8 + 4);
    t15 = *((unsigned int *)t8);
    t16 = (t15 >> 0);
    *((unsigned int *)t31) = t16;
    t17 = *((unsigned int *)t21);
    t18 = (t17 >> 0);
    *((unsigned int *)t7) = t18;
    t19 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t19 & 63U);
    t20 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t20 & 63U);

LAB69:    t22 = ((char*)((ng1)));
    t32 = xsi_vlog_unsigned_case_compare(t31, 32, t22, 32);
    if (t32 == 1)
        goto LAB70;

LAB71:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 32, t2, 32);
    if (t30 == 1)
        goto LAB72;

LAB73:    t2 = ((char*)((ng5)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 32, t2, 32);
    if (t30 == 1)
        goto LAB74;

LAB75:    t2 = ((char*)((ng7)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 32, t2, 32);
    if (t30 == 1)
        goto LAB76;

LAB77:    t2 = ((char*)((ng9)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 32, t2, 32);
    if (t30 == 1)
        goto LAB78;

LAB79:    t2 = ((char*)((ng11)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 32, t2, 32);
    if (t30 == 1)
        goto LAB80;

LAB81:    t2 = ((char*)((ng13)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 32, t2, 32);
    if (t30 == 1)
        goto LAB82;

LAB83:    t2 = ((char*)((ng15)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 32, t2, 32);
    if (t30 == 1)
        goto LAB84;

LAB85:    t2 = ((char*)((ng17)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 32, t2, 32);
    if (t30 == 1)
        goto LAB86;

LAB87:    t2 = ((char*)((ng19)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 32, t2, 32);
    if (t30 == 1)
        goto LAB88;

LAB89:    t2 = ((char*)((ng20)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 32, t2, 32);
    if (t30 == 1)
        goto LAB90;

LAB91:    t2 = ((char*)((ng22)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 32, t2, 32);
    if (t30 == 1)
        goto LAB92;

LAB93:    t2 = ((char*)((ng23)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 32, t2, 32);
    if (t30 == 1)
        goto LAB94;

LAB95:    t2 = ((char*)((ng25)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 32, t2, 32);
    if (t30 == 1)
        goto LAB96;

LAB97:    t2 = ((char*)((ng27)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 32, t2, 32);
    if (t30 == 1)
        goto LAB98;

LAB99:    t2 = ((char*)((ng29)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 32, t2, 32);
    if (t30 == 1)
        goto LAB100;

LAB101:    t2 = ((char*)((ng31)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 32, t2, 32);
    if (t30 == 1)
        goto LAB102;

LAB103:    t2 = ((char*)((ng33)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 32, t2, 32);
    if (t30 == 1)
        goto LAB104;

LAB105:
LAB106:    goto LAB68;

LAB16:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    memset(t33, 0, 8);
    t3 = (t33 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 16);
    *((unsigned int *)t33) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 16);
    *((unsigned int *)t3) = t12;
    t13 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t13 & 31U);
    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 31U);

LAB107:    t7 = ((char*)((ng1)));
    t32 = xsi_vlog_unsigned_case_compare(t33, 32, t7, 32);
    if (t32 == 1)
        goto LAB108;

LAB109:    t2 = ((char*)((ng35)));
    t30 = xsi_vlog_unsigned_case_compare(t33, 32, t2, 32);
    if (t30 == 1)
        goto LAB110;

LAB111:    t2 = ((char*)((ng38)));
    t30 = xsi_vlog_unsigned_case_compare(t33, 32, t2, 32);
    if (t30 == 1)
        goto LAB112;

LAB113:
LAB114:    goto LAB68;

LAB18:    xsi_set_current_line(57, ng0);
    t3 = ((char*)((ng40)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB20:    xsi_set_current_line(58, ng0);
    t3 = ((char*)((ng41)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB22:    xsi_set_current_line(59, ng0);
    t3 = ((char*)((ng42)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB24:    xsi_set_current_line(60, ng0);
    t3 = ((char*)((ng44)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB26:    xsi_set_current_line(61, ng0);
    t3 = ((char*)((ng45)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB28:    xsi_set_current_line(62, ng0);
    t3 = ((char*)((ng47)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB30:    xsi_set_current_line(63, ng0);
    t3 = ((char*)((ng48)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB32:    xsi_set_current_line(64, ng0);
    t3 = ((char*)((ng48)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB34:    xsi_set_current_line(65, ng0);
    t3 = ((char*)((ng50)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB36:    xsi_set_current_line(66, ng0);
    t3 = ((char*)((ng52)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB38:    xsi_set_current_line(67, ng0);
    t3 = ((char*)((ng54)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB40:    xsi_set_current_line(68, ng0);
    t3 = ((char*)((ng56)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB42:    xsi_set_current_line(69, ng0);
    t3 = ((char*)((ng58)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB44:    xsi_set_current_line(70, ng0);
    t3 = ((char*)((ng60)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB46:    xsi_set_current_line(73, ng0);
    t3 = ((char*)((ng62)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB48:    xsi_set_current_line(74, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    memset(t34, 0, 8);
    t3 = (t34 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t34) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 0);
    *((unsigned int *)t3) = t12;
    t13 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t13 & 63U);
    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 63U);

LAB115:    t7 = ((char*)((ng17)));
    t32 = xsi_vlog_unsigned_case_compare(t34, 32, t7, 32);
    if (t32 == 1)
        goto LAB116;

LAB117:
LAB118:    goto LAB68;

LAB50:    xsi_set_current_line(77, ng0);
    t3 = ((char*)((ng65)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB52:    xsi_set_current_line(78, ng0);
    t3 = ((char*)((ng65)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB54:    xsi_set_current_line(79, ng0);
    t3 = ((char*)((ng65)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB56:    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng65)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB58:    xsi_set_current_line(81, ng0);
    t3 = ((char*)((ng65)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB60:    xsi_set_current_line(82, ng0);
    t3 = ((char*)((ng67)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB62:    xsi_set_current_line(83, ng0);
    t3 = ((char*)((ng67)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB64:    xsi_set_current_line(84, ng0);
    t3 = ((char*)((ng67)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB66:    xsi_set_current_line(85, ng0);
    t3 = ((char*)((ng70)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB68;

LAB70:    xsi_set_current_line(23, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1840);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 19);
    goto LAB106;

LAB72:    xsi_set_current_line(24, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB106;

LAB74:    xsi_set_current_line(25, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB106;

LAB76:    xsi_set_current_line(26, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB106;

LAB78:    xsi_set_current_line(27, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB106;

LAB80:    xsi_set_current_line(29, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB106;

LAB82:    xsi_set_current_line(30, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB106;

LAB84:    xsi_set_current_line(39, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB106;

LAB86:    xsi_set_current_line(40, ng0);
    t3 = ((char*)((ng18)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB106;

LAB88:    xsi_set_current_line(41, ng0);
    t3 = ((char*)((ng18)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB106;

LAB90:    xsi_set_current_line(42, ng0);
    t3 = ((char*)((ng21)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB106;

LAB92:    xsi_set_current_line(43, ng0);
    t3 = ((char*)((ng21)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB106;

LAB94:    xsi_set_current_line(44, ng0);
    t3 = ((char*)((ng24)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB106;

LAB96:    xsi_set_current_line(45, ng0);
    t3 = ((char*)((ng26)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB106;

LAB98:    xsi_set_current_line(46, ng0);
    t3 = ((char*)((ng28)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB106;

LAB100:    xsi_set_current_line(47, ng0);
    t3 = ((char*)((ng30)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB106;

LAB102:    xsi_set_current_line(48, ng0);
    t3 = ((char*)((ng32)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB106;

LAB104:    xsi_set_current_line(49, ng0);
    t3 = ((char*)((ng34)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB106;

LAB108:    xsi_set_current_line(52, ng0);
    t8 = ((char*)((ng36)));
    t21 = (t0 + 1840);
    xsi_vlogvar_assign_value(t21, t8, 0, 0, 19);
    goto LAB114;

LAB110:    xsi_set_current_line(53, ng0);
    t3 = ((char*)((ng37)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB114;

LAB112:    xsi_set_current_line(54, ng0);
    t3 = ((char*)((ng39)));
    t4 = (t0 + 1840);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 19);
    goto LAB114;

LAB116:    xsi_set_current_line(75, ng0);
    t8 = ((char*)((ng64)));
    t21 = (t0 + 1840);
    xsi_vlogvar_assign_value(t21, t8, 0, 0, 19);
    goto LAB118;

}

static void Cont_88_1(char *t0)
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
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    char *t83;
    char *t84;
    char *t85;
    char *t86;
    char *t87;
    unsigned int t88;
    unsigned int t89;
    char *t90;
    unsigned int t91;
    unsigned int t92;
    char *t93;
    unsigned int t94;
    unsigned int t95;
    char *t96;
    char *t97;
    char *t98;
    char *t99;
    char *t100;
    unsigned int t101;
    unsigned int t102;
    char *t103;
    unsigned int t104;
    unsigned int t105;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    char *t109;
    char *t110;
    char *t111;
    char *t112;
    char *t113;
    unsigned int t114;
    unsigned int t115;
    char *t116;
    unsigned int t117;
    unsigned int t118;
    char *t119;
    unsigned int t120;
    unsigned int t121;
    char *t122;
    char *t123;
    char *t124;
    char *t125;
    char *t126;
    unsigned int t127;
    unsigned int t128;
    char *t129;
    unsigned int t130;
    unsigned int t131;
    char *t132;
    unsigned int t133;
    unsigned int t134;
    char *t135;
    char *t136;
    char *t137;
    char *t138;
    char *t139;
    unsigned int t140;
    unsigned int t141;
    char *t142;
    unsigned int t143;
    unsigned int t144;
    char *t145;
    unsigned int t146;
    unsigned int t147;
    char *t148;

LAB0:    t1 = (t0 + 2508U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1840);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3116);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 3080);
    t19 = (t18 + 32U);
    t20 = *((char **)t19);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    memset(t22, 0, 8);
    t23 = 2U;
    t24 = t23;
    t25 = (t4 + 4);
    t26 = *((unsigned int *)t4);
    t23 = (t23 & t26);
    t27 = *((unsigned int *)t25);
    t24 = (t24 & t27);
    t23 = (t23 >> 1);
    t24 = (t24 >> 1);
    t28 = (t22 + 4);
    t29 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t29 | t23);
    t30 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t30 | t24);
    xsi_driver_vfirst_trans(t18, 0, 0);
    t31 = (t0 + 3044);
    t32 = (t31 + 32U);
    t33 = *((char **)t32);
    t34 = (t33 + 40U);
    t35 = *((char **)t34);
    memset(t35, 0, 8);
    t36 = 60U;
    t37 = t36;
    t38 = (t4 + 4);
    t39 = *((unsigned int *)t4);
    t36 = (t36 & t39);
    t40 = *((unsigned int *)t38);
    t37 = (t37 & t40);
    t36 = (t36 >> 2);
    t37 = (t37 >> 2);
    t41 = (t35 + 4);
    t42 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t42 | t36);
    t43 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t43 | t37);
    xsi_driver_vfirst_trans(t31, 0, 3);
    t44 = (t0 + 3008);
    t45 = (t44 + 32U);
    t46 = *((char **)t45);
    t47 = (t46 + 40U);
    t48 = *((char **)t47);
    memset(t48, 0, 8);
    t49 = 64U;
    t50 = t49;
    t51 = (t4 + 4);
    t52 = *((unsigned int *)t4);
    t49 = (t49 & t52);
    t53 = *((unsigned int *)t51);
    t50 = (t50 & t53);
    t49 = (t49 >> 6);
    t50 = (t50 >> 6);
    t54 = (t48 + 4);
    t55 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t55 | t49);
    t56 = *((unsigned int *)t54);
    *((unsigned int *)t54) = (t56 | t50);
    xsi_driver_vfirst_trans(t44, 0, 0);
    t57 = (t0 + 2972);
    t58 = (t57 + 32U);
    t59 = *((char **)t58);
    t60 = (t59 + 40U);
    t61 = *((char **)t60);
    memset(t61, 0, 8);
    t62 = 896U;
    t63 = t62;
    t64 = (t4 + 4);
    t65 = *((unsigned int *)t4);
    t62 = (t62 & t65);
    t66 = *((unsigned int *)t64);
    t63 = (t63 & t66);
    t62 = (t62 >> 7);
    t63 = (t63 >> 7);
    t67 = (t61 + 4);
    t68 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t68 | t62);
    t69 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t69 | t63);
    xsi_driver_vfirst_trans(t57, 0, 2);
    t70 = (t0 + 2936);
    t71 = (t70 + 32U);
    t72 = *((char **)t71);
    t73 = (t72 + 40U);
    t74 = *((char **)t73);
    memset(t74, 0, 8);
    t75 = 1024U;
    t76 = t75;
    t77 = (t4 + 4);
    t78 = *((unsigned int *)t4);
    t75 = (t75 & t78);
    t79 = *((unsigned int *)t77);
    t76 = (t76 & t79);
    t75 = (t75 >> 10);
    t76 = (t76 >> 10);
    t80 = (t74 + 4);
    t81 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t81 | t75);
    t82 = *((unsigned int *)t80);
    *((unsigned int *)t80) = (t82 | t76);
    xsi_driver_vfirst_trans(t70, 0, 0);
    t83 = (t0 + 2900);
    t84 = (t83 + 32U);
    t85 = *((char **)t84);
    t86 = (t85 + 40U);
    t87 = *((char **)t86);
    memset(t87, 0, 8);
    t88 = 2048U;
    t89 = t88;
    t90 = (t4 + 4);
    t91 = *((unsigned int *)t4);
    t88 = (t88 & t91);
    t92 = *((unsigned int *)t90);
    t89 = (t89 & t92);
    t88 = (t88 >> 11);
    t89 = (t89 >> 11);
    t93 = (t87 + 4);
    t94 = *((unsigned int *)t87);
    *((unsigned int *)t87) = (t94 | t88);
    t95 = *((unsigned int *)t93);
    *((unsigned int *)t93) = (t95 | t89);
    xsi_driver_vfirst_trans(t83, 0, 0);
    t96 = (t0 + 2864);
    t97 = (t96 + 32U);
    t98 = *((char **)t97);
    t99 = (t98 + 40U);
    t100 = *((char **)t99);
    memset(t100, 0, 8);
    t101 = 12288U;
    t102 = t101;
    t103 = (t4 + 4);
    t104 = *((unsigned int *)t4);
    t101 = (t101 & t104);
    t105 = *((unsigned int *)t103);
    t102 = (t102 & t105);
    t101 = (t101 >> 12);
    t102 = (t102 >> 12);
    t106 = (t100 + 4);
    t107 = *((unsigned int *)t100);
    *((unsigned int *)t100) = (t107 | t101);
    t108 = *((unsigned int *)t106);
    *((unsigned int *)t106) = (t108 | t102);
    xsi_driver_vfirst_trans(t96, 0, 1);
    t109 = (t0 + 2828);
    t110 = (t109 + 32U);
    t111 = *((char **)t110);
    t112 = (t111 + 40U);
    t113 = *((char **)t112);
    memset(t113, 0, 8);
    t114 = 49152U;
    t115 = t114;
    t116 = (t4 + 4);
    t117 = *((unsigned int *)t4);
    t114 = (t114 & t117);
    t118 = *((unsigned int *)t116);
    t115 = (t115 & t118);
    t114 = (t114 >> 14);
    t115 = (t115 >> 14);
    t119 = (t113 + 4);
    t120 = *((unsigned int *)t113);
    *((unsigned int *)t113) = (t120 | t114);
    t121 = *((unsigned int *)t119);
    *((unsigned int *)t119) = (t121 | t115);
    xsi_driver_vfirst_trans(t109, 0, 1);
    t122 = (t0 + 2792);
    t123 = (t122 + 32U);
    t124 = *((char **)t123);
    t125 = (t124 + 40U);
    t126 = *((char **)t125);
    memset(t126, 0, 8);
    t127 = 65536U;
    t128 = t127;
    t129 = (t4 + 4);
    t130 = *((unsigned int *)t4);
    t127 = (t127 & t130);
    t131 = *((unsigned int *)t129);
    t128 = (t128 & t131);
    t127 = (t127 >> 16);
    t128 = (t128 >> 16);
    t132 = (t126 + 4);
    t133 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t133 | t127);
    t134 = *((unsigned int *)t132);
    *((unsigned int *)t132) = (t134 | t128);
    xsi_driver_vfirst_trans(t122, 0, 0);
    t135 = (t0 + 2756);
    t136 = (t135 + 32U);
    t137 = *((char **)t136);
    t138 = (t137 + 40U);
    t139 = *((char **)t138);
    memset(t139, 0, 8);
    t140 = 393216U;
    t141 = t140;
    t142 = (t4 + 4);
    t143 = *((unsigned int *)t4);
    t140 = (t140 & t143);
    t144 = *((unsigned int *)t142);
    t141 = (t141 & t144);
    t140 = (t140 >> 17);
    t141 = (t141 >> 17);
    t145 = (t139 + 4);
    t146 = *((unsigned int *)t139);
    *((unsigned int *)t139) = (t146 | t140);
    t147 = *((unsigned int *)t145);
    *((unsigned int *)t145) = (t147 | t141);
    xsi_driver_vfirst_trans(t135, 0, 1);
    t148 = (t0 + 2712);
    *((int *)t148) = 1;

LAB1:    return;
}


extern void work_m_00000000004232249409_4144471541_init()
{
	static char *pe[] = {(void *)Always_19_0,(void *)Cont_88_1};
	xsi_register_didat("work_m_00000000004232249409_4144471541", "isim/testbench_isim_beh.exe.sim/work/m_00000000004232249409_4144471541.didat");
	xsi_register_executes(pe);
}
