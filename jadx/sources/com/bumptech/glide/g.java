package com.bumptech.glide;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public static final g f3523a;

    /* renamed from: b, reason: collision with root package name */
    public static final g f3524b;

    /* renamed from: c, reason: collision with root package name */
    public static final g f3525c;
    public static final g d;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ g[] f3526e;

    static {
        g gVar = new g("IMMEDIATE", 0);
        f3523a = gVar;
        g gVar2 = new g("HIGH", 1);
        f3524b = gVar2;
        g gVar3 = new g("NORMAL", 2);
        f3525c = gVar3;
        g gVar4 = new g("LOW", 3);
        d = gVar4;
        f3526e = new g[]{gVar, gVar2, gVar3, gVar4};
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) f3526e.clone();
    }
}
