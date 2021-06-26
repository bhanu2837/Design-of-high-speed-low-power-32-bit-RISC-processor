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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/VHDL/PROGRAMS/Project_Final/major_project_programs/major_project_programs/memory.v";
static unsigned int ng1[] = {0U, 0U};



static void Always_31_0(char *t0)
{
    char t13[8];
    char t14[8];
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
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    int t22;
    char *t23;
    unsigned int t24;
    int t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    int t29;
    int t30;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3648);
    *((int *)t2) = 1;
    t3 = (t0 + 3360);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB15;

LAB16:
LAB17:
LAB12:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(35, ng0);

LAB9:    xsi_set_current_line(37, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(42, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 2408);
    t11 = (t0 + 2408);
    t12 = (t11 + 72U);
    t15 = *((char **)t12);
    t16 = (t0 + 2408);
    t17 = (t16 + 64U);
    t18 = *((char **)t17);
    t19 = (t0 + 1208U);
    t20 = *((char **)t19);
    xsi_vlog_generic_convert_array_indices(t13, t14, t15, t18, 2, 1, t20, 16, 2);
    t19 = (t13 + 4);
    t21 = *((unsigned int *)t19);
    t22 = (!(t21));
    t23 = (t14 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (!(t24));
    t26 = (t22 && t25);
    if (t26 == 1)
        goto LAB13;

LAB14:    goto LAB12;

LAB13:    t27 = *((unsigned int *)t13);
    t28 = *((unsigned int *)t14);
    t29 = (t27 - t28);
    t30 = (t29 + 1);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, *((unsigned int *)t14), t30, 0LL);
    goto LAB14;

LAB15:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 2408);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);
    t12 = (t0 + 2408);
    t15 = (t12 + 72U);
    t16 = *((char **)t15);
    t17 = (t0 + 2408);
    t18 = (t17 + 64U);
    t19 = *((char **)t18);
    t20 = (t0 + 1208U);
    t23 = *((char **)t20);
    xsi_vlog_generic_get_array_select_value(t13, 32, t11, t16, t19, 2, 1, t23, 16, 2);
    t20 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t20, t13, 0, 0, 32, 0LL);
    goto LAB17;

}


extern void work_m_00000000003168691712_2381739659_init()
{
	static char *pe[] = {(void *)Always_31_0};
	xsi_register_didat("work_m_00000000003168691712_2381739659", "isim/RISC_isim_beh.exe.sim/work/m_00000000003168691712_2381739659.didat");
	xsi_register_executes(pe);
}
