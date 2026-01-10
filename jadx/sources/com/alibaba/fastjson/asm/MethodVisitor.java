package com.alibaba.fastjson.asm;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public interface MethodVisitor {
    void visitEnd();

    void visitFieldInsn(int i6, String str, String str2, String str3);

    void visitIincInsn(int i6, int i10);

    void visitInsn(int i6);

    void visitIntInsn(int i6, int i10);

    void visitJumpInsn(int i6, Label label);

    void visitLabel(Label label);

    void visitLdcInsn(Object obj);

    void visitMaxs(int i6, int i10);

    void visitMethodInsn(int i6, String str, String str2, String str3);

    void visitTypeInsn(int i6, String str);

    void visitVarInsn(int i6, int i10);
}
