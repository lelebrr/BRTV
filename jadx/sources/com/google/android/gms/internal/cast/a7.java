package com.google.android.gms.internal.cast;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF6' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a7 {

    /* renamed from: b, reason: collision with root package name */
    public static final a7 f4108b;

    /* renamed from: c, reason: collision with root package name */
    public static final a7 f4109c;
    public static final a7[] d;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ a7[] f4110e;

    /* renamed from: a, reason: collision with root package name */
    public final int f4111a;

    /* JADX INFO: Fake field, exist only in values array */
    a7 EF6;

    static {
        i7 i7Var = i7.f4250e;
        a7 a7Var = new a7("DOUBLE", 0, 0, 1, i7Var);
        i7 i7Var2 = i7.d;
        a7 a7Var2 = new a7("FLOAT", 1, 1, 1, i7Var2);
        i7 i7Var3 = i7.f4249c;
        a7 a7Var3 = new a7("INT64", 2, 2, 1, i7Var3);
        a7 a7Var4 = new a7("UINT64", 3, 3, 1, i7Var3);
        i7 i7Var4 = i7.f4248b;
        a7 a7Var5 = new a7("INT32", 4, 4, 1, i7Var4);
        a7 a7Var6 = new a7("FIXED64", 5, 5, 1, i7Var3);
        a7 a7Var7 = new a7("FIXED32", 6, 6, 1, i7Var4);
        i7 i7Var5 = i7.f;
        a7 a7Var8 = new a7("BOOL", 7, 7, 1, i7Var5);
        i7 i7Var6 = i7.f4251g;
        a7 a7Var9 = new a7("STRING", 8, 8, 1, i7Var6);
        i7 i7Var7 = i7.f4254j;
        a7 a7Var10 = new a7("MESSAGE", 9, 9, 1, i7Var7);
        i7 i7Var8 = i7.f4252h;
        a7 a7Var11 = new a7("BYTES", 10, 10, 1, i7Var8);
        a7 a7Var12 = new a7("UINT32", 11, 11, 1, i7Var4);
        i7 i7Var9 = i7.f4253i;
        a7 a7Var13 = new a7("ENUM", 12, 12, 1, i7Var9);
        a7 a7Var14 = new a7("SFIXED32", 13, 13, 1, i7Var4);
        a7 a7Var15 = new a7("SFIXED64", 14, 14, 1, i7Var3);
        a7 a7Var16 = new a7("SINT32", 15, 15, 1, i7Var4);
        a7 a7Var17 = new a7("SINT64", 16, 16, 1, i7Var3);
        a7 a7Var18 = new a7("GROUP", 17, 17, 1, i7Var7);
        a7 a7Var19 = new a7("DOUBLE_LIST", 18, 18, 2, i7Var);
        a7 a7Var20 = new a7("FLOAT_LIST", 19, 19, 2, i7Var2);
        a7 a7Var21 = new a7("INT64_LIST", 20, 20, 2, i7Var3);
        a7 a7Var22 = new a7("UINT64_LIST", 21, 21, 2, i7Var3);
        a7 a7Var23 = new a7("INT32_LIST", 22, 22, 2, i7Var4);
        a7 a7Var24 = new a7("FIXED64_LIST", 23, 23, 2, i7Var3);
        a7 a7Var25 = new a7("FIXED32_LIST", 24, 24, 2, i7Var4);
        a7 a7Var26 = new a7("BOOL_LIST", 25, 25, 2, i7Var5);
        a7 a7Var27 = new a7("STRING_LIST", 26, 26, 2, i7Var6);
        a7 a7Var28 = new a7("MESSAGE_LIST", 27, 27, 2, i7Var7);
        a7 a7Var29 = new a7("BYTES_LIST", 28, 28, 2, i7Var8);
        a7 a7Var30 = new a7("UINT32_LIST", 29, 29, 2, i7Var4);
        a7 a7Var31 = new a7("ENUM_LIST", 30, 30, 2, i7Var9);
        a7 a7Var32 = new a7("SFIXED32_LIST", 31, 31, 2, i7Var4);
        a7 a7Var33 = new a7("SFIXED64_LIST", 32, 32, 2, i7Var3);
        a7 a7Var34 = new a7("SINT32_LIST", 33, 33, 2, i7Var4);
        a7 a7Var35 = new a7("SINT64_LIST", 34, 34, 2, i7Var3);
        a7 a7Var36 = new a7("DOUBLE_LIST_PACKED", 35, 35, 3, i7Var);
        f4108b = a7Var36;
        a7 a7Var37 = new a7("FLOAT_LIST_PACKED", 36, 36, 3, i7Var2);
        a7 a7Var38 = new a7("INT64_LIST_PACKED", 37, 37, 3, i7Var3);
        a7 a7Var39 = new a7("UINT64_LIST_PACKED", 38, 38, 3, i7Var3);
        a7 a7Var40 = new a7("INT32_LIST_PACKED", 39, 39, 3, i7Var4);
        a7 a7Var41 = new a7("FIXED64_LIST_PACKED", 40, 40, 3, i7Var3);
        a7 a7Var42 = new a7("FIXED32_LIST_PACKED", 41, 41, 3, i7Var4);
        a7 a7Var43 = new a7("BOOL_LIST_PACKED", 42, 42, 3, i7Var5);
        a7 a7Var44 = new a7("UINT32_LIST_PACKED", 43, 43, 3, i7Var4);
        a7 a7Var45 = new a7("ENUM_LIST_PACKED", 44, 44, 3, i7Var9);
        a7 a7Var46 = new a7("SFIXED32_LIST_PACKED", 45, 45, 3, i7Var4);
        a7 a7Var47 = new a7("SFIXED64_LIST_PACKED", 46, 46, 3, i7Var3);
        a7 a7Var48 = new a7("SINT32_LIST_PACKED", 47, 47, 3, i7Var4);
        a7 a7Var49 = new a7("SINT64_LIST_PACKED", 48, 48, 3, i7Var3);
        f4109c = a7Var49;
        f4110e = new a7[]{a7Var, a7Var2, a7Var3, a7Var4, a7Var5, a7Var6, a7Var7, a7Var8, a7Var9, a7Var10, a7Var11, a7Var12, a7Var13, a7Var14, a7Var15, a7Var16, a7Var17, a7Var18, a7Var19, a7Var20, a7Var21, a7Var22, a7Var23, a7Var24, a7Var25, a7Var26, a7Var27, a7Var28, a7Var29, a7Var30, a7Var31, a7Var32, a7Var33, a7Var34, a7Var35, a7Var36, a7Var37, a7Var38, a7Var39, a7Var40, a7Var41, a7Var42, a7Var43, a7Var44, a7Var45, a7Var46, a7Var47, a7Var48, a7Var49, new a7("GROUP_LIST", 49, 49, 2, i7Var7), new a7("MAP", 50, 50, 4, i7.f4247a)};
        a7[] a7VarArrValues = values();
        d = new a7[a7VarArrValues.length];
        for (a7 a7Var50 : a7VarArrValues) {
            d[a7Var50.f4111a] = a7Var50;
        }
    }

    public a7(String str, int i6, int i10, int i11, i7 i7Var) {
        this.f4111a = i10;
        int i12 = i11 - 1;
        if (i12 == 1 || i12 == 3) {
            i7Var.getClass();
        }
        if (i11 == 1) {
            i7 i7Var2 = i7.f4247a;
            i7Var.ordinal();
        }
    }

    public static a7[] values() {
        return (a7[]) f4110e.clone();
    }

    public final int a() {
        return this.f4111a;
    }
}
