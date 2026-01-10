package r9;

import i9.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class o implements p {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ char[] f9626a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f9627b;

    public /* synthetic */ o(char[] cArr, boolean z7) {
        this.f9626a = cArr;
        this.f9627b = z7;
    }

    @Override // i9.p
    public final Object invoke(Object obj, Object obj2) {
        CharSequence charSequence = (CharSequence) obj;
        int iIntValue = ((Integer) obj2).intValue();
        j9.i.f(charSequence, "$this$DelimitedRangesSequence");
        int iD0 = f.d0(charSequence, this.f9626a, iIntValue, this.f9627b);
        if (iD0 < 0) {
            return null;
        }
        return new w8.f(Integer.valueOf(iD0), 1);
    }
}
