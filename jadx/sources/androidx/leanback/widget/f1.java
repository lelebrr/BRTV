package androidx.leanback.widget;

import android.util.Property;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f1 extends Property {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1829a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ f1(String str, Class cls, int i6) {
        super(cls, str);
        this.f1829a = i6;
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        switch (this.f1829a) {
            case 0:
                return Integer.valueOf(((StreamingTextView) obj).getStreamPosition());
            case 1:
                return Float.valueOf(((i0) obj).f1833a);
            case 2:
                return Float.valueOf(((i0) obj).f1836e);
            default:
                return Float.valueOf(((i0) obj).f1835c);
        }
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        switch (this.f1829a) {
            case 0:
                ((StreamingTextView) obj).setStreamPosition(((Integer) obj2).intValue());
                break;
            case 1:
                i0 i0Var = (i0) obj;
                i0Var.f1833a = ((Float) obj2).floatValue();
                i0Var.a();
                i0Var.f1840j.invalidate();
                break;
            case 2:
                i0 i0Var2 = (i0) obj;
                float fFloatValue = ((Float) obj2).floatValue();
                i0Var2.f1836e = fFloatValue;
                float f = fFloatValue / 2.0f;
                i0Var2.f = f;
                PagingIndicator pagingIndicator = i0Var2.f1840j;
                i0Var2.f1837g = f * pagingIndicator.f1717v;
                pagingIndicator.invalidate();
                break;
            default:
                i0 i0Var3 = (i0) obj;
                i0Var3.f1835c = ((Float) obj2).floatValue() * i0Var3.f1838h * i0Var3.f1839i;
                i0Var3.f1840j.invalidate();
                break;
        }
    }
}
