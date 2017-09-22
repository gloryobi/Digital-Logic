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
static const char *ng0 = "E:/Digital Circuits/Lab 5/Reg/mux4bit4x1.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};



static void Always_30_0(char *t0)
{
    char t6[8];
    char t11[8];
    char t27[8];
    char t41[8];
    char t46[8];
    char t62[8];
    char t70[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
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
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t47;
    char *t48;
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
    char *t61;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    char *t84;
    char *t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    int t94;
    int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    char *t108;
    char *t109;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 3328);
    *((int *)t2) = 1;
    t3 = (t0 + 3040);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = (t0 + 1648U);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t5, t8, 2, t9, 32, 1);
    t10 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t12 = (t6 + 4);
    t13 = (t10 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t12);
    t18 = *((unsigned int *)t13);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t12);
    t22 = *((unsigned int *)t13);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB9;

LAB6:    if (t23 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t11) = 1;

LAB9:    memset(t27, 0, 8);
    t28 = (t11 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (~(t29));
    t31 = *((unsigned int *)t11);
    t32 = (t31 & t30);
    t33 = (t32 & 1U);
    if (t33 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t28) != 0)
        goto LAB12;

LAB13:    t35 = (t27 + 4);
    t36 = *((unsigned int *)t27);
    t37 = *((unsigned int *)t35);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB14;

LAB15:    memcpy(t70, t27, 8);

LAB16:    t102 = (t70 + 4);
    t103 = *((unsigned int *)t102);
    t104 = (~(t103));
    t105 = *((unsigned int *)t70);
    t106 = (t105 & t104);
    t107 = (t106 != 0);
    if (t107 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t0 + 1648U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t3, t5, 2, t7, 32, 1);
    t8 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t9 = (t6 + 4);
    t10 = (t8 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t8);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t9);
    t18 = *((unsigned int *)t10);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t10);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB35;

LAB32:    if (t23 != 0)
        goto LAB34;

LAB33:    *((unsigned int *)t11) = 1;

LAB35:    memset(t27, 0, 8);
    t13 = (t11 + 4);
    t29 = *((unsigned int *)t13);
    t30 = (~(t29));
    t31 = *((unsigned int *)t11);
    t32 = (t31 & t30);
    t33 = (t32 & 1U);
    if (t33 != 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t13) != 0)
        goto LAB38;

LAB39:    t28 = (t27 + 4);
    t36 = *((unsigned int *)t27);
    t37 = *((unsigned int *)t28);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB40;

LAB41:    memcpy(t70, t27, 8);

LAB42:    t84 = (t70 + 4);
    t103 = *((unsigned int *)t84);
    t104 = (~(t103));
    t105 = *((unsigned int *)t70);
    t106 = (t105 & t104);
    t107 = (t106 != 0);
    if (t107 > 0)
        goto LAB54;

LAB55:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t0 + 1648U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t3, t5, 2, t7, 32, 1);
    t8 = ((char*)((ng1)));
    memset(t11, 0, 8);
    t9 = (t6 + 4);
    t10 = (t8 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t8);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t9);
    t18 = *((unsigned int *)t10);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t10);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB61;

LAB58:    if (t23 != 0)
        goto LAB60;

LAB59:    *((unsigned int *)t11) = 1;

LAB61:    memset(t27, 0, 8);
    t13 = (t11 + 4);
    t29 = *((unsigned int *)t13);
    t30 = (~(t29));
    t31 = *((unsigned int *)t11);
    t32 = (t31 & t30);
    t33 = (t32 & 1U);
    if (t33 != 0)
        goto LAB62;

LAB63:    if (*((unsigned int *)t13) != 0)
        goto LAB64;

LAB65:    t28 = (t27 + 4);
    t36 = *((unsigned int *)t27);
    t37 = *((unsigned int *)t28);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB66;

LAB67:    memcpy(t70, t27, 8);

LAB68:    t84 = (t70 + 4);
    t103 = *((unsigned int *)t84);
    t104 = (~(t103));
    t105 = *((unsigned int *)t70);
    t106 = (t105 & t104);
    t107 = (t106 != 0);
    if (t107 > 0)
        goto LAB80;

LAB81:    xsi_set_current_line(41, ng0);

LAB84:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 4, 0LL);

LAB82:
LAB56:
LAB30:    goto LAB2;

LAB8:    t26 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t27) = 1;
    goto LAB13;

LAB12:    t34 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB13;

LAB14:    t39 = (t0 + 1688U);
    t40 = *((char **)t39);
    t39 = (t0 + 1648U);
    t42 = (t39 + 72U);
    t43 = *((char **)t42);
    t44 = ((char*)((ng2)));
    xsi_vlog_generic_get_index_select_value(t41, 32, t40, t43, 2, t44, 32, 1);
    t45 = ((char*)((ng2)));
    memset(t46, 0, 8);
    t47 = (t41 + 4);
    t48 = (t45 + 4);
    t49 = *((unsigned int *)t41);
    t50 = *((unsigned int *)t45);
    t51 = (t49 ^ t50);
    t52 = *((unsigned int *)t47);
    t53 = *((unsigned int *)t48);
    t54 = (t52 ^ t53);
    t55 = (t51 | t54);
    t56 = *((unsigned int *)t47);
    t57 = *((unsigned int *)t48);
    t58 = (t56 | t57);
    t59 = (~(t58));
    t60 = (t55 & t59);
    if (t60 != 0)
        goto LAB20;

LAB17:    if (t58 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t46) = 1;

LAB20:    memset(t62, 0, 8);
    t63 = (t46 + 4);
    t64 = *((unsigned int *)t63);
    t65 = (~(t64));
    t66 = *((unsigned int *)t46);
    t67 = (t66 & t65);
    t68 = (t67 & 1U);
    if (t68 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t63) != 0)
        goto LAB23;

LAB24:    t71 = *((unsigned int *)t27);
    t72 = *((unsigned int *)t62);
    t73 = (t71 & t72);
    *((unsigned int *)t70) = t73;
    t74 = (t27 + 4);
    t75 = (t62 + 4);
    t76 = (t70 + 4);
    t77 = *((unsigned int *)t74);
    t78 = *((unsigned int *)t75);
    t79 = (t77 | t78);
    *((unsigned int *)t76) = t79;
    t80 = *((unsigned int *)t76);
    t81 = (t80 != 0);
    if (t81 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB16;

LAB19:    t61 = (t46 + 4);
    *((unsigned int *)t46) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB20;

LAB21:    *((unsigned int *)t62) = 1;
    goto LAB24;

LAB23:    t69 = (t62 + 4);
    *((unsigned int *)t62) = 1;
    *((unsigned int *)t69) = 1;
    goto LAB24;

LAB25:    t82 = *((unsigned int *)t70);
    t83 = *((unsigned int *)t76);
    *((unsigned int *)t70) = (t82 | t83);
    t84 = (t27 + 4);
    t85 = (t62 + 4);
    t86 = *((unsigned int *)t27);
    t87 = (~(t86));
    t88 = *((unsigned int *)t84);
    t89 = (~(t88));
    t90 = *((unsigned int *)t62);
    t91 = (~(t90));
    t92 = *((unsigned int *)t85);
    t93 = (~(t92));
    t94 = (t87 & t89);
    t95 = (t91 & t93);
    t96 = (~(t94));
    t97 = (~(t95));
    t98 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t98 & t96);
    t99 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t99 & t97);
    t100 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t100 & t96);
    t101 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t101 & t97);
    goto LAB27;

LAB28:    xsi_set_current_line(32, ng0);

LAB31:    xsi_set_current_line(33, ng0);
    t108 = (t0 + 1528U);
    t109 = *((char **)t108);
    t108 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t108, t109, 0, 0, 4, 0LL);
    goto LAB30;

LAB34:    t12 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB35;

LAB36:    *((unsigned int *)t27) = 1;
    goto LAB39;

LAB38:    t26 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB39;

LAB40:    t34 = (t0 + 1688U);
    t35 = *((char **)t34);
    t34 = (t0 + 1648U);
    t39 = (t34 + 72U);
    t40 = *((char **)t39);
    t42 = ((char*)((ng2)));
    xsi_vlog_generic_get_index_select_value(t41, 32, t35, t40, 2, t42, 32, 1);
    t43 = ((char*)((ng1)));
    memset(t46, 0, 8);
    t44 = (t41 + 4);
    t45 = (t43 + 4);
    t49 = *((unsigned int *)t41);
    t50 = *((unsigned int *)t43);
    t51 = (t49 ^ t50);
    t52 = *((unsigned int *)t44);
    t53 = *((unsigned int *)t45);
    t54 = (t52 ^ t53);
    t55 = (t51 | t54);
    t56 = *((unsigned int *)t44);
    t57 = *((unsigned int *)t45);
    t58 = (t56 | t57);
    t59 = (~(t58));
    t60 = (t55 & t59);
    if (t60 != 0)
        goto LAB46;

LAB43:    if (t58 != 0)
        goto LAB45;

LAB44:    *((unsigned int *)t46) = 1;

LAB46:    memset(t62, 0, 8);
    t48 = (t46 + 4);
    t64 = *((unsigned int *)t48);
    t65 = (~(t64));
    t66 = *((unsigned int *)t46);
    t67 = (t66 & t65);
    t68 = (t67 & 1U);
    if (t68 != 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t48) != 0)
        goto LAB49;

LAB50:    t71 = *((unsigned int *)t27);
    t72 = *((unsigned int *)t62);
    t73 = (t71 & t72);
    *((unsigned int *)t70) = t73;
    t63 = (t27 + 4);
    t69 = (t62 + 4);
    t74 = (t70 + 4);
    t77 = *((unsigned int *)t63);
    t78 = *((unsigned int *)t69);
    t79 = (t77 | t78);
    *((unsigned int *)t74) = t79;
    t80 = *((unsigned int *)t74);
    t81 = (t80 != 0);
    if (t81 == 1)
        goto LAB51;

LAB52:
LAB53:    goto LAB42;

LAB45:    t47 = (t46 + 4);
    *((unsigned int *)t46) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB46;

LAB47:    *((unsigned int *)t62) = 1;
    goto LAB50;

LAB49:    t61 = (t62 + 4);
    *((unsigned int *)t62) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB50;

LAB51:    t82 = *((unsigned int *)t70);
    t83 = *((unsigned int *)t74);
    *((unsigned int *)t70) = (t82 | t83);
    t75 = (t27 + 4);
    t76 = (t62 + 4);
    t86 = *((unsigned int *)t27);
    t87 = (~(t86));
    t88 = *((unsigned int *)t75);
    t89 = (~(t88));
    t90 = *((unsigned int *)t62);
    t91 = (~(t90));
    t92 = *((unsigned int *)t76);
    t93 = (~(t92));
    t94 = (t87 & t89);
    t95 = (t91 & t93);
    t96 = (~(t94));
    t97 = (~(t95));
    t98 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t98 & t96);
    t99 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t99 & t97);
    t100 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t100 & t96);
    t101 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t101 & t97);
    goto LAB53;

LAB54:    xsi_set_current_line(35, ng0);

LAB57:    xsi_set_current_line(36, ng0);
    t85 = (t0 + 1368U);
    t102 = *((char **)t85);
    t85 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t85, t102, 0, 0, 4, 0LL);
    goto LAB56;

LAB60:    t12 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB61;

LAB62:    *((unsigned int *)t27) = 1;
    goto LAB65;

LAB64:    t26 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB65;

LAB66:    t34 = (t0 + 1688U);
    t35 = *((char **)t34);
    t34 = (t0 + 1648U);
    t39 = (t34 + 72U);
    t40 = *((char **)t39);
    t42 = ((char*)((ng2)));
    xsi_vlog_generic_get_index_select_value(t41, 32, t35, t40, 2, t42, 32, 1);
    t43 = ((char*)((ng2)));
    memset(t46, 0, 8);
    t44 = (t41 + 4);
    t45 = (t43 + 4);
    t49 = *((unsigned int *)t41);
    t50 = *((unsigned int *)t43);
    t51 = (t49 ^ t50);
    t52 = *((unsigned int *)t44);
    t53 = *((unsigned int *)t45);
    t54 = (t52 ^ t53);
    t55 = (t51 | t54);
    t56 = *((unsigned int *)t44);
    t57 = *((unsigned int *)t45);
    t58 = (t56 | t57);
    t59 = (~(t58));
    t60 = (t55 & t59);
    if (t60 != 0)
        goto LAB72;

LAB69:    if (t58 != 0)
        goto LAB71;

LAB70:    *((unsigned int *)t46) = 1;

LAB72:    memset(t62, 0, 8);
    t48 = (t46 + 4);
    t64 = *((unsigned int *)t48);
    t65 = (~(t64));
    t66 = *((unsigned int *)t46);
    t67 = (t66 & t65);
    t68 = (t67 & 1U);
    if (t68 != 0)
        goto LAB73;

LAB74:    if (*((unsigned int *)t48) != 0)
        goto LAB75;

LAB76:    t71 = *((unsigned int *)t27);
    t72 = *((unsigned int *)t62);
    t73 = (t71 & t72);
    *((unsigned int *)t70) = t73;
    t63 = (t27 + 4);
    t69 = (t62 + 4);
    t74 = (t70 + 4);
    t77 = *((unsigned int *)t63);
    t78 = *((unsigned int *)t69);
    t79 = (t77 | t78);
    *((unsigned int *)t74) = t79;
    t80 = *((unsigned int *)t74);
    t81 = (t80 != 0);
    if (t81 == 1)
        goto LAB77;

LAB78:
LAB79:    goto LAB68;

LAB71:    t47 = (t46 + 4);
    *((unsigned int *)t46) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB72;

LAB73:    *((unsigned int *)t62) = 1;
    goto LAB76;

LAB75:    t61 = (t62 + 4);
    *((unsigned int *)t62) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB76;

LAB77:    t82 = *((unsigned int *)t70);
    t83 = *((unsigned int *)t74);
    *((unsigned int *)t70) = (t82 | t83);
    t75 = (t27 + 4);
    t76 = (t62 + 4);
    t86 = *((unsigned int *)t27);
    t87 = (~(t86));
    t88 = *((unsigned int *)t75);
    t89 = (~(t88));
    t90 = *((unsigned int *)t62);
    t91 = (~(t90));
    t92 = *((unsigned int *)t76);
    t93 = (~(t92));
    t94 = (t87 & t89);
    t95 = (t91 & t93);
    t96 = (~(t94));
    t97 = (~(t95));
    t98 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t98 & t96);
    t99 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t99 & t97);
    t100 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t100 & t96);
    t101 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t101 & t97);
    goto LAB79;

LAB80:    xsi_set_current_line(38, ng0);

LAB83:    xsi_set_current_line(39, ng0);
    t85 = (t0 + 1208U);
    t102 = *((char **)t85);
    t85 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t85, t102, 0, 0, 4, 0LL);
    goto LAB82;

}


extern void work_m_00000000003505599943_0177184985_init()
{
	static char *pe[] = {(void *)Always_30_0};
	xsi_register_didat("work_m_00000000003505599943_0177184985", "isim/reg4bitmuxtest_isim_beh.exe.sim/work/m_00000000003505599943_0177184985.didat");
	xsi_register_executes(pe);
}
