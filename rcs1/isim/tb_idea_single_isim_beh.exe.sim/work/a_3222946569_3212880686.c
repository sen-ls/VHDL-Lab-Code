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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
extern char *IEEE_P_2592010699;
static const char *ng1 = "/home/ise/Xilinx/submission_template/submit/selected_files_2023128_16849/rcs1/control.vhd";

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


char *work_a_3222946569_3212880686_sub_16171440710706007870_3057020925(char *t1, char *t2, int t3)
{
    char t4[128];
    char t5[8];
    char t6[16];
    char t13[8];
    char *t0;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    int t22;
    int t23;
    int t24;
    unsigned int t25;

LAB0:    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 6;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 6);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t4 + 4U);
    t11 = ((IEEE_P_2592010699) + 4000);
    t12 = (t8 + 88U);
    *((char **)t12) = t11;
    t14 = (t8 + 56U);
    *((char **)t14) = t13;
    xsi_type_set_default_value(t11, t13, t6);
    t15 = (t8 + 64U);
    *((char **)t15) = t6;
    t16 = (t8 + 80U);
    *((unsigned int *)t16) = 7U;
    t17 = (t5 + 4U);
    *((int *)t17) = t3;
    if (t3 == 0)
        goto LAB3;

LAB14:    if (t3 == 1)
        goto LAB4;

LAB15:    if (t3 == 2)
        goto LAB5;

LAB16:    if (t3 == 3)
        goto LAB6;

LAB17:    if (t3 == 4)
        goto LAB7;

LAB18:    if (t3 == 5)
        goto LAB8;

LAB19:    if (t3 == 6)
        goto LAB9;

LAB20:    if (t3 == 7)
        goto LAB10;

LAB21:    if (t3 == 8)
        goto LAB11;

LAB22:    if (t3 == 9)
        goto LAB12;

LAB23:
LAB13:    t7 = (t1 + 7193);
    t12 = (t8 + 56U);
    t14 = *((char **)t12);
    t12 = (t14 + 0);
    memcpy(t12, t7, 7U);

LAB2:    t7 = (t8 + 56U);
    t11 = *((char **)t7);
    t7 = (t6 + 12U);
    t10 = *((unsigned int *)t7);
    t10 = (t10 * 1U);
    t0 = xsi_get_transient_memory(t10);
    memcpy(t0, t11, t10);
    t12 = (t6 + 0U);
    t9 = *((int *)t12);
    t14 = (t6 + 4U);
    t22 = *((int *)t14);
    t15 = (t6 + 8U);
    t23 = *((int *)t15);
    t16 = (t2 + 0U);
    t18 = (t16 + 0U);
    *((int *)t18) = t9;
    t18 = (t16 + 4U);
    *((int *)t18) = t22;
    t18 = (t16 + 8U);
    *((int *)t18) = t23;
    t24 = (t22 - t9);
    t25 = (t24 * t23);
    t25 = (t25 + 1);
    t18 = (t16 + 12U);
    *((unsigned int *)t18) = t25;

LAB1:    return t0;
LAB3:    t18 = (t1 + 7123);
    t20 = (t8 + 56U);
    t21 = *((char **)t20);
    t20 = (t21 + 0);
    memcpy(t20, t18, 7U);
    goto LAB2;

LAB4:    t7 = (t1 + 7130);
    t12 = (t8 + 56U);
    t14 = *((char **)t12);
    t12 = (t14 + 0);
    memcpy(t12, t7, 7U);
    goto LAB2;

LAB5:    t7 = (t1 + 7137);
    t12 = (t8 + 56U);
    t14 = *((char **)t12);
    t12 = (t14 + 0);
    memcpy(t12, t7, 7U);
    goto LAB2;

LAB6:    t7 = (t1 + 7144);
    t12 = (t8 + 56U);
    t14 = *((char **)t12);
    t12 = (t14 + 0);
    memcpy(t12, t7, 7U);
    goto LAB2;

LAB7:    t7 = (t1 + 7151);
    t12 = (t8 + 56U);
    t14 = *((char **)t12);
    t12 = (t14 + 0);
    memcpy(t12, t7, 7U);
    goto LAB2;

LAB8:    t7 = (t1 + 7158);
    t12 = (t8 + 56U);
    t14 = *((char **)t12);
    t12 = (t14 + 0);
    memcpy(t12, t7, 7U);
    goto LAB2;

LAB9:    t7 = (t1 + 7165);
    t12 = (t8 + 56U);
    t14 = *((char **)t12);
    t12 = (t14 + 0);
    memcpy(t12, t7, 7U);
    goto LAB2;

LAB10:    t7 = (t1 + 7172);
    t12 = (t8 + 56U);
    t14 = *((char **)t12);
    t12 = (t14 + 0);
    memcpy(t12, t7, 7U);
    goto LAB2;

LAB11:    t7 = (t1 + 7179);
    t12 = (t8 + 56U);
    t14 = *((char **)t12);
    t12 = (t14 + 0);
    memcpy(t12, t7, 7U);
    goto LAB2;

LAB12:    t7 = (t1 + 7186);
    t12 = (t8 + 56U);
    t14 = *((char **)t12);
    t12 = (t14 + 0);
    memcpy(t12, t7, 7U);
    goto LAB2;

LAB24:;
LAB25:;
}

static void work_a_3222946569_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(78, ng1);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(79, ng1);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t3 = (t0 + 4088);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = t5;
    xsi_driver_first_trans_fast(t3);
    goto LAB3;

}

static void work_a_3222946569_3212880686_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;

LAB0:    xsi_set_current_line(86, ng1);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t2 = work_a_3222946569_3212880686_sub_16171440710706007870_3057020925(t0, t1, t4);
    t5 = (t0 + 2448U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t8 = (t8 * 1U);
    memcpy(t5, t2, t8);
    xsi_set_current_line(88, ng1);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t8 = (6 - 6);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t2 = (t3 + t10);
    t5 = (t0 + 4152);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(89, ng1);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t4 = (2 - 6);
    t8 = (t4 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t2 = (t3 + t10);
    t13 = *((unsigned char *)t2);
    t5 = (t0 + 4216);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t13;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(90, ng1);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t4 = (1 - 6);
    t8 = (t4 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t2 = (t3 + t10);
    t13 = *((unsigned char *)t2);
    t5 = (t0 + 4280);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t13;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(91, ng1);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t4 = (0 - 6);
    t8 = (t4 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t2 = (t3 + t10);
    t13 = *((unsigned char *)t2);
    t5 = (t0 + 4344);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t13;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(93, ng1);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    if (t4 == 0)
        goto LAB3;

LAB14:    if (t4 == 1)
        goto LAB4;

LAB15:    if (t4 == 2)
        goto LAB5;

LAB16:    if (t4 == 3)
        goto LAB6;

LAB17:    if (t4 == 4)
        goto LAB7;

LAB18:    if (t4 == 5)
        goto LAB8;

LAB19:    if (t4 == 6)
        goto LAB9;

LAB20:    if (t4 == 7)
        goto LAB10;

LAB21:    if (t4 == 8)
        goto LAB11;

LAB22:    if (t4 == 9)
        goto LAB12;

LAB23:
LAB13:    xsi_set_current_line(119, ng1);
    t2 = (t0 + 4408);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t2);

LAB2:    t2 = (t0 + 4008);
    *((int *)t2) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(95, ng1);
    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t13 = *((unsigned char *)t5);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB25;

LAB27:    xsi_set_current_line(98, ng1);
    t2 = (t0 + 4408);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t2);

LAB26:    goto LAB2;

LAB4:    xsi_set_current_line(101, ng1);
    t2 = (t0 + 4408);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 2;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB5:    xsi_set_current_line(103, ng1);
    t2 = (t0 + 4408);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 3;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB6:    xsi_set_current_line(105, ng1);
    t2 = (t0 + 4408);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 4;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB7:    xsi_set_current_line(107, ng1);
    t2 = (t0 + 4408);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 5;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB8:    xsi_set_current_line(109, ng1);
    t2 = (t0 + 4408);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 6;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB9:    xsi_set_current_line(111, ng1);
    t2 = (t0 + 4408);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 7;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB10:    xsi_set_current_line(113, ng1);
    t2 = (t0 + 4408);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 8;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB11:    xsi_set_current_line(115, ng1);
    t2 = (t0 + 4408);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 9;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB12:    xsi_set_current_line(117, ng1);
    t2 = (t0 + 4408);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB24:;
LAB25:    xsi_set_current_line(96, ng1);
    t2 = (t0 + 4408);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    *((int *)t12) = 1;
    xsi_driver_first_trans_fast(t2);
    goto LAB26;

}


extern void work_a_3222946569_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3222946569_3212880686_p_0,(void *)work_a_3222946569_3212880686_p_1};
	static char *se[] = {(void *)work_a_3222946569_3212880686_sub_16171440710706007870_3057020925};
	xsi_register_didat("work_a_3222946569_3212880686", "isim/tb_idea_single_isim_beh.exe.sim/work/a_3222946569_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
