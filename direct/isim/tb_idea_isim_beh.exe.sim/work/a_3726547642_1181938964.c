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
static const char *ng0 = "/nas/lrz/home/ge34gak/direct/idea.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3726547642_1181938964_p_0(char *t0)
{
    char t45[16];
    char t46[16];
    char t47[16];
    char *t1;
    char *t2;
    int t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    int t9;
    unsigned int t10;
    char *t11;
    int t12;
    int t13;
    int t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    int t21;
    int t22;
    int t23;
    char *t24;
    int t25;
    int t26;
    int t27;
    int t28;
    int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned char t33;
    char *t34;
    char *t35;
    int t36;
    int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t48;
    int t49;
    char *t50;
    int t51;
    int t52;
    int t53;
    int t54;
    int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    int t61;
    int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;

LAB0:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 8368U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 8;
    xsi_set_current_line(103, ng0);
    t1 = (t0 + 8488U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(104, ng0);
    t1 = (t0 + 8608U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 1;
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 19200);
    *((int *)t1) = 0;
    t2 = (t0 + 19204);
    *((int *)t2) = 7;
    t3 = 0;
    t4 = 7;

LAB2:    if (t3 <= t4)
        goto LAB3;

LAB5:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 19208);
    *((int *)t1) = 1;
    t2 = (t0 + 19212);
    *((int *)t2) = 5;
    t3 = 1;
    t4 = 5;

LAB9:    if (t3 <= t4)
        goto LAB10;

LAB12:    t1 = (t0 + 10272);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(106, ng0);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t5 = (t0 + 19200);
    t7 = *((int *)t5);
    t8 = (t7 * 16);
    t9 = (127 - t8);
    t10 = (127 - t9);
    t11 = (t0 + 19200);
    t12 = *((int *)t11);
    t13 = (t12 + 1);
    t14 = (t13 * 16);
    t15 = (t14 - 1);
    t16 = (127 - t15);
    xsi_vhdl_check_range_of_slice(127, 0, -1, t9, t16, -1);
    t17 = (t10 * 1U);
    t18 = (0 + t17);
    t19 = (t6 + t18);
    t20 = (t0 + 19200);
    t21 = *((int *)t20);
    t22 = (t21 * 16);
    t23 = (127 - t22);
    t24 = (t0 + 19200);
    t25 = *((int *)t24);
    t26 = (t25 + 1);
    t27 = (t26 * 16);
    t28 = (t27 - 1);
    t29 = (127 - t28);
    t30 = (t29 - t23);
    t31 = (t30 * -1);
    t31 = (t31 + 1);
    t32 = (1U * t31);
    t33 = (16U != t32);
    if (t33 == 1)
        goto LAB6;

LAB7:    t34 = (t0 + 8488U);
    t35 = *((char **)t34);
    t36 = *((int *)t35);
    t37 = (t36 - 0);
    t38 = (t37 * 1);
    t39 = (16U * t38);
    t40 = (0U + t39);
    t34 = (t0 + 10368);
    t41 = (t34 + 56U);
    t42 = *((char **)t41);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    memcpy(t44, t19, 16U);
    xsi_driver_first_trans_delta(t34, t40, 16U, 0LL);
    xsi_set_current_line(107, ng0);
    t1 = (t0 + 8488U);
    t2 = *((char **)t1);
    t7 = *((int *)t2);
    t8 = (t7 + 1);
    t1 = (t0 + 8488U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t8;

LAB4:    t1 = (t0 + 19200);
    t3 = *((int *)t1);
    t2 = (t0 + 19204);
    t4 = *((int *)t2);
    if (t3 == t4)
        goto LAB5;

LAB8:    t7 = (t3 + 1);
    t3 = t7;
    t5 = (t0 + 19200);
    *((int *)t5) = t3;
    goto LAB2;

LAB6:    xsi_size_not_matching(16U, t32, 0);
    goto LAB7;

LAB10:    xsi_set_current_line(110, ng0);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t5 = (t0 + 19208);
    t7 = *((int *)t5);
    t8 = (t7 * 25);
    t9 = (127 - t8);
    t10 = (127 - t9);
    xsi_vhdl_check_range_of_slice(127, 0, -1, t9, 0, -1);
    t17 = (t10 * 1U);
    t18 = (0 + t17);
    t11 = (t6 + t18);
    t19 = (t0 + 1032U);
    t20 = *((char **)t19);
    t31 = (127 - 127);
    t19 = (t0 + 19208);
    t12 = *((int *)t19);
    t13 = (t12 * 25);
    t14 = (127 - t13);
    t15 = (t14 + 1);
    xsi_vhdl_check_range_of_slice(127, 0, -1, 127, t15, -1);
    t32 = (t31 * 1U);
    t38 = (0 + t32);
    t24 = (t20 + t38);
    t35 = ((IEEE_P_2592010699) + 4000);
    t41 = (t0 + 19208);
    t16 = *((int *)t41);
    t21 = (t16 * 25);
    t22 = (127 - t21);
    t42 = (t46 + 0U);
    t43 = (t42 + 0U);
    *((int *)t43) = t22;
    t43 = (t42 + 4U);
    *((int *)t43) = 0;
    t43 = (t42 + 8U);
    *((int *)t43) = -1;
    t23 = (0 - t22);
    t39 = (t23 * -1);
    t39 = (t39 + 1);
    t43 = (t42 + 12U);
    *((unsigned int *)t43) = t39;
    t43 = (t0 + 19208);
    t25 = *((int *)t43);
    t26 = (t25 * 25);
    t27 = (127 - t26);
    t28 = (t27 + 1);
    t44 = (t47 + 0U);
    t48 = (t44 + 0U);
    *((int *)t48) = 127;
    t48 = (t44 + 4U);
    *((int *)t48) = t28;
    t48 = (t44 + 8U);
    *((int *)t48) = -1;
    t29 = (t28 - 127);
    t39 = (t29 * -1);
    t39 = (t39 + 1);
    t48 = (t44 + 12U);
    *((unsigned int *)t48) = t39;
    t34 = xsi_base_array_concat(t34, t45, t35, (char)97, t11, t46, (char)97, t24, t47, (char)101);
    t48 = (t0 + 19208);
    t30 = *((int *)t48);
    t36 = (t30 * 25);
    t37 = (127 - t36);
    t49 = (0 - t37);
    t39 = (t49 * -1);
    t39 = (t39 + 1);
    t40 = (1U * t39);
    t50 = (t0 + 19208);
    t51 = *((int *)t50);
    t52 = (t51 * 25);
    t53 = (127 - t52);
    t54 = (t53 + 1);
    t55 = (t54 - 127);
    t56 = (t55 * -1);
    t56 = (t56 + 1);
    t57 = (1U * t56);
    t58 = (t40 + t57);
    t33 = (128U != t58);
    if (t33 == 1)
        goto LAB13;

LAB14:    t59 = (t0 + 8608U);
    t60 = *((char **)t59);
    t61 = *((int *)t60);
    t62 = (t61 - 1);
    t63 = (t62 * 1);
    t64 = (128U * t63);
    t65 = (0U + t64);
    t59 = (t0 + 10432);
    t66 = (t59 + 56U);
    t67 = *((char **)t66);
    t68 = (t67 + 56U);
    t69 = *((char **)t68);
    memcpy(t69, t34, 128U);
    xsi_driver_first_trans_delta(t59, t65, 128U, 0LL);
    xsi_set_current_line(111, ng0);
    t1 = (t0 + 19216);
    *((int *)t1) = 0;
    t2 = (t0 + 19220);
    *((int *)t2) = 7;
    t7 = 0;
    t8 = 7;

LAB15:    if (t7 <= t8)
        goto LAB16;

LAB18:    xsi_set_current_line(115, ng0);
    t1 = (t0 + 8608U);
    t2 = *((char **)t1);
    t7 = *((int *)t2);
    t8 = (t7 + 1);
    t1 = (t0 + 8608U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t8;

LAB11:    t1 = (t0 + 19208);
    t3 = *((int *)t1);
    t2 = (t0 + 19212);
    t4 = *((int *)t2);
    if (t3 == t4)
        goto LAB12;

LAB22:    t7 = (t3 + 1);
    t3 = t7;
    t5 = (t0 + 19208);
    *((int *)t5) = t3;
    goto LAB9;

LAB13:    xsi_size_not_matching(128U, t58, 0);
    goto LAB14;

LAB16:    xsi_set_current_line(112, ng0);
    t5 = (t0 + 7752U);
    t6 = *((char **)t5);
    t5 = (t0 + 19216);
    t9 = *((int *)t5);
    t12 = (t9 * 16);
    t13 = (127 - t12);
    t10 = (127 - t13);
    t11 = (t0 + 19216);
    t14 = *((int *)t11);
    t15 = (t14 + 1);
    t16 = (t15 * 16);
    t21 = (t16 - 1);
    t22 = (127 - t21);
    xsi_vhdl_check_range_of_slice(127, 0, -1, t13, t22, -1);
    t17 = (t10 * 1U);
    t19 = (t0 + 8608U);
    t20 = *((char **)t19);
    t23 = *((int *)t20);
    t25 = (t23 - 1);
    t18 = (t25 * 1);
    xsi_vhdl_check_range_of_index(1, 5, 1, t23);
    t31 = (128U * t18);
    t32 = (0 + t31);
    t38 = (t32 + t17);
    t19 = (t6 + t38);
    t24 = (t0 + 19216);
    t26 = *((int *)t24);
    t27 = (t26 * 16);
    t28 = (127 - t27);
    t34 = (t0 + 19216);
    t29 = *((int *)t34);
    t30 = (t29 + 1);
    t36 = (t30 * 16);
    t37 = (t36 - 1);
    t49 = (127 - t37);
    t51 = (t49 - t28);
    t39 = (t51 * -1);
    t39 = (t39 + 1);
    t40 = (1U * t39);
    t33 = (16U != t40);
    if (t33 == 1)
        goto LAB19;

LAB20:    t35 = (t0 + 8368U);
    t41 = *((char **)t35);
    t52 = *((int *)t41);
    t53 = (t52 - 0);
    t56 = (t53 * 1);
    t57 = (16U * t56);
    t58 = (0U + t57);
    t35 = (t0 + 10368);
    t42 = (t35 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t48 = *((char **)t44);
    memcpy(t48, t19, 16U);
    xsi_driver_first_trans_delta(t35, t58, 16U, 0LL);
    xsi_set_current_line(113, ng0);
    t1 = (t0 + 8368U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t12 = (t9 + 1);
    t1 = (t0 + 8368U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t12;

LAB17:    t1 = (t0 + 19216);
    t7 = *((int *)t1);
    t2 = (t0 + 19220);
    t8 = *((int *)t2);
    if (t7 == t8)
        goto LAB18;

LAB21:    t9 = (t7 + 1);
    t7 = t9;
    t5 = (t0 + 19216);
    *((int *)t5) = t7;
    goto LAB15;

LAB19:    xsi_size_not_matching(16U, t40, 0);
    goto LAB20;

}

static void work_a_3726547642_1181938964_p_1(char *t0)
{
    char t20[16];
    char t22[16];
    char t27[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t21;
    char *t23;
    char *t24;
    int t25;
    unsigned int t26;
    char *t28;
    int t29;
    unsigned char t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    int t35;
    int t36;
    int t37;
    int t38;
    int t39;
    int t40;
    int t41;
    int t42;
    int t43;
    int t44;
    int t45;
    int t46;
    int t47;
    int t48;
    int t49;
    int t50;
    int t51;
    char *t52;

LAB0:    xsi_set_current_line(122, ng0);
    t1 = (t0 + 8728U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(123, ng0);
    t1 = (t0 + 7752U);
    t2 = *((char **)t1);
    t3 = (127 - 102);
    t4 = (t3 * 1U);
    t5 = (5 - 1);
    t6 = (t5 * 1);
    t7 = (128U * t6);
    t8 = (0 + t7);
    t9 = (t8 + t4);
    t1 = (t2 + t9);
    t10 = (t0 + 7752U);
    t11 = *((char **)t10);
    t12 = (127 - 127);
    t13 = (t12 * 1U);
    t14 = (5 - 1);
    t15 = (t14 * 1);
    t16 = (128U * t15);
    t17 = (0 + t16);
    t18 = (t17 + t13);
    t10 = (t11 + t18);
    t21 = ((IEEE_P_2592010699) + 4000);
    t23 = (t22 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 102;
    t24 = (t23 + 4U);
    *((int *)t24) = 0;
    t24 = (t23 + 8U);
    *((int *)t24) = -1;
    t25 = (0 - 102);
    t26 = (t25 * -1);
    t26 = (t26 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t26;
    t24 = (t27 + 0U);
    t28 = (t24 + 0U);
    *((int *)t28) = 127;
    t28 = (t24 + 4U);
    *((int *)t28) = 103;
    t28 = (t24 + 8U);
    *((int *)t28) = -1;
    t29 = (103 - 127);
    t26 = (t29 * -1);
    t26 = (t26 + 1);
    t28 = (t24 + 12U);
    *((unsigned int *)t28) = t26;
    t19 = xsi_base_array_concat(t19, t20, t21, (char)97, t1, t22, (char)97, t10, t27, (char)101);
    t26 = (103U + 25U);
    t30 = (128U != t26);
    if (t30 == 1)
        goto LAB2;

LAB3:    t28 = (t0 + 10496);
    t31 = (t28 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memcpy(t34, t19, 128U);
    xsi_driver_first_trans_fast(t28);
    xsi_set_current_line(124, ng0);
    t1 = (t0 + 19224);
    *((int *)t1) = 0;
    t2 = (t0 + 19228);
    *((int *)t2) = 3;
    t5 = 0;
    t14 = 3;

LAB4:    if (t5 <= t14)
        goto LAB5;

LAB7:    t1 = (t0 + 10288);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(128U, t26, 0);
    goto LAB3;

LAB5:    xsi_set_current_line(125, ng0);
    t10 = (t0 + 7592U);
    t11 = *((char **)t10);
    t10 = (t0 + 19224);
    t25 = *((int *)t10);
    t29 = (t25 * 16);
    t35 = (127 - t29);
    t3 = (127 - t35);
    t19 = (t0 + 19224);
    t36 = *((int *)t19);
    t37 = (t36 + 1);
    t38 = (t37 * 16);
    t39 = (t38 - 1);
    t40 = (127 - t39);
    xsi_vhdl_check_range_of_slice(127, 0, -1, t35, t40, -1);
    t4 = (t3 * 1U);
    t6 = (0 + t4);
    t21 = (t11 + t6);
    t23 = (t0 + 19224);
    t41 = *((int *)t23);
    t42 = (t41 * 16);
    t43 = (127 - t42);
    t24 = (t0 + 19224);
    t44 = *((int *)t24);
    t45 = (t44 + 1);
    t46 = (t45 * 16);
    t47 = (t46 - 1);
    t48 = (127 - t47);
    t49 = (t48 - t43);
    t7 = (t49 * -1);
    t7 = (t7 + 1);
    t8 = (1U * t7);
    t30 = (16U != t8);
    if (t30 == 1)
        goto LAB8;

LAB9:    t28 = (t0 + 8728U);
    t31 = *((char **)t28);
    t50 = *((int *)t31);
    t51 = (t50 - 0);
    t9 = (t51 * 1);
    t12 = (16U * t9);
    t13 = (0U + t12);
    t28 = (t0 + 10560);
    t32 = (t28 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t52 = *((char **)t34);
    memcpy(t52, t21, 16U);
    xsi_driver_first_trans_delta(t28, t13, 16U, 0LL);
    xsi_set_current_line(126, ng0);
    t1 = (t0 + 8728U);
    t2 = *((char **)t1);
    t25 = *((int *)t2);
    t29 = (t25 + 1);
    t1 = (t0 + 8728U);
    t10 = *((char **)t1);
    t1 = (t10 + 0);
    *((int *)t1) = t29;

LAB6:    t1 = (t0 + 19224);
    t5 = *((int *)t1);
    t2 = (t0 + 19228);
    t14 = *((int *)t2);
    if (t5 == t14)
        goto LAB7;

LAB10:    t25 = (t5 + 1);
    t5 = t25;
    t10 = (t0 + 19224);
    *((int *)t10) = t5;
    goto LAB4;

LAB8:    xsi_size_not_matching(16U, t8, 0);
    goto LAB9;

}


extern void work_a_3726547642_1181938964_init()
{
	static char *pe[] = {(void *)work_a_3726547642_1181938964_p_0,(void *)work_a_3726547642_1181938964_p_1};
	xsi_register_didat("work_a_3726547642_1181938964", "isim/tb_idea_isim_beh.exe.sim/work/a_3726547642_1181938964.didat");
	xsi_register_executes(pe);
}
