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

/* This file is designed for use with ISim build 0xa0883be4 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/A02042652/Desktop/Lab 4/MuxExp/mux4x1.v";



static void Cont_28_0(char *t0)
{
    char t5[8];
    char t7[8];
    char t25[8];
    char t26[8];
    char t29[8];
    char t32[8];
    char t34[8];
    char t52[8];
    char t53[8];
    char t54[8];
    char t73[8];
    char t74[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t27;
    char *t28;
    char *t30;
    char *t31;
    char *t33;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    unsigned int t83;
    unsigned int t84;
    char *t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;

LAB0:    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1688U);
    t4 = *((char **)t2);
    memset(t5, 0, 8);
    xsi_vlog_unsigned_multiply(t5, 1, t3, 1, t4, 1);
    t2 = (t0 + 1208U);
    t6 = *((char **)t2);
    t2 = (t0 + 1688U);
    t8 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t8 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t8);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t2) == 0)
        goto LAB4;

LAB6:    t14 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t14) = 1;

LAB7:    t15 = (t7 + 4);
    t16 = (t8 + 4);
    t17 = *((unsigned int *)t8);
    t18 = (~(t17));
    *((unsigned int *)t7) = t18;
    *((unsigned int *)t15) = 0;
    if (*((unsigned int *)t16) != 0)
        goto LAB9;

LAB8:    t23 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t23 & 1U);
    t24 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t24 & 1U);
    memset(t25, 0, 8);
    xsi_vlog_unsigned_multiply(t25, 1, t6, 1, t7, 1);
    memset(t26, 0, 8);
    xsi_vlog_unsigned_add(t26, 1, t5, 1, t25, 1);
    t27 = (t0 + 1848U);
    t28 = *((char **)t27);
    memset(t29, 0, 8);
    xsi_vlog_unsigned_multiply(t29, 1, t26, 1, t28, 1);
    t27 = (t0 + 1368U);
    t30 = *((char **)t27);
    t27 = (t0 + 1688U);
    t31 = *((char **)t27);
    memset(t32, 0, 8);
    xsi_vlog_unsigned_multiply(t32, 1, t30, 1, t31, 1);
    t27 = (t0 + 1528U);
    t33 = *((char **)t27);
    t27 = (t0 + 1688U);
    t35 = *((char **)t27);
    memset(t34, 0, 8);
    t27 = (t35 + 4);
    t36 = *((unsigned int *)t27);
    t37 = (~(t36));
    t38 = *((unsigned int *)t35);
    t39 = (t38 & t37);
    t40 = (t39 & 1U);
    if (t40 != 0)
        goto LAB13;

LAB11:    if (*((unsigned int *)t27) == 0)
        goto LAB10;

LAB12:    t41 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t41) = 1;

LAB13:    t42 = (t34 + 4);
    t43 = (t35 + 4);
    t44 = *((unsigned int *)t35);
    t45 = (~(t44));
    *((unsigned int *)t34) = t45;
    *((unsigned int *)t42) = 0;
    if (*((unsigned int *)t43) != 0)
        goto LAB15;

LAB14:    t50 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t50 & 1U);
    t51 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t51 & 1U);
    memset(t52, 0, 8);
    xsi_vlog_unsigned_multiply(t52, 1, t33, 1, t34, 1);
    memset(t53, 0, 8);
    xsi_vlog_unsigned_add(t53, 1, t32, 1, t52, 1);
    t55 = (t0 + 1848U);
    t56 = *((char **)t55);
    memset(t54, 0, 8);
    t55 = (t56 + 4);
    t57 = *((unsigned int *)t55);
    t58 = (~(t57));
    t59 = *((unsigned int *)t56);
    t60 = (t59 & t58);
    t61 = (t60 & 1U);
    if (t61 != 0)
        goto LAB19;

LAB17:    if (*((unsigned int *)t55) == 0)
        goto LAB16;

LAB18:    t62 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t62) = 1;

LAB19:    t63 = (t54 + 4);
    t64 = (t56 + 4);
    t65 = *((unsigned int *)t56);
    t66 = (~(t65));
    *((unsigned int *)t54) = t66;
    *((unsigned int *)t63) = 0;
    if (*((unsigned int *)t64) != 0)
        goto LAB21;

LAB20:    t71 = *((unsigned int *)t54);
    *((unsigned int *)t54) = (t71 & 1U);
    t72 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t72 & 1U);
    memset(t73, 0, 8);
    xsi_vlog_unsigned_multiply(t73, 1, t53, 1, t54, 1);
    memset(t74, 0, 8);
    xsi_vlog_unsigned_add(t74, 1, t29, 1, t73, 1);
    t75 = (t0 + 3568);
    t76 = (t75 + 56U);
    t77 = *((char **)t76);
    t78 = (t77 + 56U);
    t79 = *((char **)t78);
    memset(t79, 0, 8);
    t80 = 1U;
    t81 = t80;
    t82 = (t74 + 4);
    t83 = *((unsigned int *)t74);
    t80 = (t80 & t83);
    t84 = *((unsigned int *)t82);
    t81 = (t81 & t84);
    t85 = (t79 + 4);
    t86 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t86 | t80);
    t87 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t87 | t81);
    xsi_driver_vfirst_trans(t75, 0, 0);
    t88 = (t0 + 3488);
    *((int *)t88) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t7) = 1;
    goto LAB7;

LAB9:    t19 = *((unsigned int *)t7);
    t20 = *((unsigned int *)t16);
    *((unsigned int *)t7) = (t19 | t20);
    t21 = *((unsigned int *)t15);
    t22 = *((unsigned int *)t16);
    *((unsigned int *)t15) = (t21 | t22);
    goto LAB8;

LAB10:    *((unsigned int *)t34) = 1;
    goto LAB13;

LAB15:    t46 = *((unsigned int *)t34);
    t47 = *((unsigned int *)t43);
    *((unsigned int *)t34) = (t46 | t47);
    t48 = *((unsigned int *)t42);
    t49 = *((unsigned int *)t43);
    *((unsigned int *)t42) = (t48 | t49);
    goto LAB14;

LAB16:    *((unsigned int *)t54) = 1;
    goto LAB19;

LAB21:    t67 = *((unsigned int *)t54);
    t68 = *((unsigned int *)t64);
    *((unsigned int *)t54) = (t67 | t68);
    t69 = *((unsigned int *)t63);
    t70 = *((unsigned int *)t64);
    *((unsigned int *)t63) = (t69 | t70);
    goto LAB20;

}


extern void work_m_00000000004224568431_1758504669_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("work_m_00000000004224568431_1758504669", "isim/digit_4_disp_isim_beh.exe.sim/work/m_00000000004224568431_1758504669.didat");
	xsi_register_executes(pe);
}
