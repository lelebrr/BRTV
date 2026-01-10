package r9;

import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements q9.c {

    /* renamed from: a, reason: collision with root package name */
    public final String f9618a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9619b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9620c;
    public final o d;

    public c(String str, int i6, int i10, o oVar) {
        j9.i.f(str, "input");
        this.f9618a = str;
        this.f9619b = i6;
        this.f9620c = i10;
        this.d = oVar;
    }

    @Override // q9.c
    public final Iterator iterator() {
        return new b(this);
    }
}
