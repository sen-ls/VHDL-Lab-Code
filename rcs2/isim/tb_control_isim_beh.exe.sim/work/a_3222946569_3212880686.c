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
static const char *ng0 = "/home/ise/Xilinx/submission_template/submit/selected_files_2024119_164250/rcs2/control.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3222946569_3212880686_p_0(char *t0)
{
    char t11[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    int t24;
    int t25;
    int t26;
    int t27;
    int t28;
    int t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4352);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 7890);
    t24 = xsi_mem_cmp(t1, t3, 3U);
    if (t24 == 1)
        goto LAB17;

LAB22:    t7 = (t0 + 7893);
    t25 = xsi_mem_cmp(t7, t3, 3U);
    if (t25 == 1)
        goto LAB17;

LAB23:    t9 = (t0 + 7896);
    t26 = xsi_mem_cmp(t9, t3, 3U);
    if (t26 == 1)
        goto LAB17;

LAB24:    t13 = (t0 + 7899);
    t27 = xsi_mem_cmp(t13, t3, 3U);
    if (t27 == 1)
        goto LAB18;

LAB25:    t15 = (t0 + 7902);
    t28 = xsi_mem_cmp(t15, t3, 3U);
    if (t28 == 1)
        goto LAB19;

LAB26:    t20 = (t0 + 7905);
    t29 = xsi_mem_cmp(t20, t3, 3U);
    if (t29 == 1)
        goto LAB20;

LAB27:
LAB21:    xsi_set_current_line(84, ng0);

LAB16:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 2472U);
    t7 = *((char **)t3);
    t3 = (t0 + 7881);
    t9 = ((IEEE_P_2592010699) + 4000);
    t10 = xsi_vhdl_lessthan(t9, t7, 3U, t3, 3U);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 7887);
    t4 = (t0 + 4512);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t1, 3U);
    xsi_driver_first_trans_fast(t4);

LAB14:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(57, ng0);
    t12 = (t0 + 2632U);
    t13 = *((char **)t12);
    t12 = (t0 + 7848U);
    t14 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t11, t13, t12, 1);
    t15 = (t11 + 12U);
    t16 = *((unsigned int *)t15);
    t17 = (1U * t16);
    t18 = (3U != t17);
    if (t18 == 1)
        goto LAB11;

LAB12:    t19 = (t0 + 4448);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t14, 3U);
    xsi_driver_first_trans_fast(t19);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t1 = (t0 + 4512);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 3U);
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

LAB11:    xsi_size_not_matching(3U, t17, 0);
    goto LAB12;

LAB13:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 7884);
    t7 = (t0 + 4512);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 3U);
    xsi_driver_first_trans_fast(t7);
    goto LAB14;

LAB17:    xsi_set_current_line(69, ng0);
    t22 = (t0 + 2632U);
    t23 = *((char **)t22);
    t22 = (t0 + 7848U);
    t30 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t11, t23, t22, 1);
    t31 = (t11 + 12U);
    t16 = *((unsigned int *)t31);
    t17 = (1U * t16);
    t2 = (3U != t17);
    if (t2 == 1)
        goto LAB29;

LAB30:    t32 = (t0 + 4448);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t30, 3U);
    xsi_driver_first_trans_fast(t32);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t1 = (t0 + 4512);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 3U);
    xsi_driver_first_trans_fast(t1);
    goto LAB16;

LAB18:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 7908);
    t4 = (t0 + 4448);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t1, 3U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t1 = (t0 + 4512);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 3U);
    xsi_driver_first_trans_fast(t1);
    goto LAB16;

LAB19:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 7911);
    t4 = (t0 + 4448);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t1, 3U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t1 = (t0 + 4512);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 3U);
    xsi_driver_first_trans_fast(t1);
    goto LAB16;

LAB20:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB31;

LAB33:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 7917);
    t4 = (t0 + 4512);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t1, 3U);
    xsi_driver_first_trans_fast(t4);

LAB32:    goto LAB16;

LAB28:;
LAB29:    xsi_size_not_matching(3U, t17, 0);
    goto LAB30;

LAB31:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 7914);
    t7 = (t0 + 4512);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 3U);
    xsi_driver_first_trans_fast(t7);
    goto LAB32;

}

static void work_a_3222946569_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    int t11;
    int t12;
    int t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    int t21;
    char *t22;
    int t24;
    char *t25;
    char *t26;
    int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;

LAB0:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 4576);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 4640);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 4704);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(96, ng0);
    t1 = (t0 + 4768);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 7920);
    t3 = (t0 + 4832);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 7922);
    t3 = (t0 + 4896);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t9 = (t8 == (unsigned char)2);
    if (t9 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(131, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 7966);
    t11 = xsi_mem_cmp(t1, t2, 3U);
    if (t11 == 1)
        goto LAB25;

LAB32:    t4 = (t0 + 7969);
    t12 = xsi_mem_cmp(t4, t2, 3U);
    if (t12 == 1)
        goto LAB26;

LAB33:    t6 = (t0 + 7972);
    t13 = xsi_mem_cmp(t6, t2, 3U);
    if (t13 == 1)
        goto LAB27;

LAB34:    t10 = (t0 + 7975);
    t15 = xsi_mem_cmp(t10, t2, 3U);
    if (t15 == 1)
        goto LAB28;

LAB35:    t16 = (t0 + 7978);
    t18 = xsi_mem_cmp(t16, t2, 3U);
    if (t18 == 1)
        goto LAB29;

LAB36:    t19 = (t0 + 7981);
    t21 = xsi_mem_cmp(t19, t2, 3U);
    if (t21 == 1)
        goto LAB30;

LAB37:
LAB31:    xsi_set_current_line(156, ng0);

LAB24:
LAB3:    t1 = (t0 + 4368);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 7924);
    t4 = (t0 + 4896);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t10, t1, 2U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 7926);
    t11 = xsi_mem_cmp(t1, t2, 3U);
    if (t11 == 1)
        goto LAB6;

LAB15:    t4 = (t0 + 7929);
    t12 = xsi_mem_cmp(t4, t2, 3U);
    if (t12 == 1)
        goto LAB7;

LAB16:    t6 = (t0 + 7932);
    t13 = xsi_mem_cmp(t6, t2, 3U);
    if (t13 == 1)
        goto LAB8;

LAB17:    t10 = (t0 + 7935);
    t15 = xsi_mem_cmp(t10, t2, 3U);
    if (t15 == 1)
        goto LAB9;

LAB18:    t16 = (t0 + 7938);
    t18 = xsi_mem_cmp(t16, t2, 3U);
    if (t18 == 1)
        goto LAB10;

LAB19:    t19 = (t0 + 7941);
    t21 = xsi_mem_cmp(t19, t2, 3U);
    if (t21 == 1)
        goto LAB11;

LAB20:    t22 = (t0 + 7944);
    t24 = xsi_mem_cmp(t22, t2, 3U);
    if (t24 == 1)
        goto LAB12;

LAB21:    t25 = (t0 + 7947);
    t27 = xsi_mem_cmp(t25, t2, 3U);
    if (t27 == 1)
        goto LAB13;

LAB22:
LAB14:    xsi_set_current_line(127, ng0);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(104, ng0);
    t28 = (t0 + 4576);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    *((unsigned char *)t32) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t28);
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 7950);
    t3 = (t0 + 4832);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB7:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 7952);
    t3 = (t0 + 4832);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB8:    xsi_set_current_line(110, ng0);
    t1 = (t0 + 4640);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(111, ng0);
    t1 = (t0 + 7954);
    t3 = (t0 + 4832);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB9:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 7956);
    t3 = (t0 + 4832);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB10:    xsi_set_current_line(116, ng0);
    t1 = (t0 + 4704);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(117, ng0);
    t1 = (t0 + 7958);
    t3 = (t0 + 4832);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB11:    xsi_set_current_line(120, ng0);
    t1 = (t0 + 7960);
    t3 = (t0 + 4832);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB12:    xsi_set_current_line(122, ng0);
    t1 = (t0 + 4768);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(123, ng0);
    t1 = (t0 + 7962);
    t3 = (t0 + 4832);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB13:    xsi_set_current_line(125, ng0);
    t1 = (t0 + 7964);
    t3 = (t0 + 4832);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB23:;
LAB25:    xsi_set_current_line(133, ng0);
    t22 = (t0 + 7984);
    t25 = (t0 + 4896);
    t26 = (t25 + 56U);
    t28 = *((char **)t26);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t22, 2U);
    xsi_driver_first_trans_fast_port(t25);
    xsi_set_current_line(134, ng0);
    t1 = (t0 + 7986);
    t3 = (t0 + 4832);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(135, ng0);
    t1 = (t0 + 4576);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB24;

LAB26:    xsi_set_current_line(137, ng0);
    t1 = (t0 + 7988);
    t3 = (t0 + 4896);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(138, ng0);
    t1 = (t0 + 7990);
    t3 = (t0 + 4832);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB24;

LAB27:    xsi_set_current_line(141, ng0);
    t1 = (t0 + 7992);
    t3 = (t0 + 4896);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(142, ng0);
    t1 = (t0 + 7994);
    t3 = (t0 + 4832);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(143, ng0);
    t1 = (t0 + 4640);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB24;

LAB28:    xsi_set_current_line(145, ng0);
    t1 = (t0 + 7996);
    t3 = (t0 + 4896);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(146, ng0);
    t1 = (t0 + 7998);
    t3 = (t0 + 4832);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB24;

LAB29:    xsi_set_current_line(149, ng0);
    t1 = (t0 + 8000);
    t3 = (t0 + 4896);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(150, ng0);
    t1 = (t0 + 8002);
    t3 = (t0 + 4832);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(151, ng0);
    t1 = (t0 + 4768);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB24;

LAB30:    xsi_set_current_line(153, ng0);
    t1 = (t0 + 8004);
    t3 = (t0 + 4896);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(154, ng0);
    t1 = (t0 + 8006);
    t3 = (t0 + 4832);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB24;

LAB38:;
}


extern void work_a_3222946569_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3222946569_3212880686_p_0,(void *)work_a_3222946569_3212880686_p_1};
	xsi_register_didat("work_a_3222946569_3212880686", "isim/tb_control_isim_beh.exe.sim/work/a_3222946569_3212880686.didat");
	xsi_register_executes(pe);
}
