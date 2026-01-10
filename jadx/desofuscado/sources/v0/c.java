package v0;

import android.graphics.Rect;
import java.util.Comparator;
import o0.h;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class c implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final Rect f10628a = new Rect();

    /* renamed from: b, reason: collision with root package name */
    public final Rect f10629b = new Rect();

    /* renamed from: c, reason: collision with root package name */
    public final boolean f10630c;
    public final q.b d;

    public c(boolean z7, q.b bVar) {
        this.f10630c = z7;
        this.d = bVar;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        this.d.getClass();
        Rect rect = this.f10628a;
        ((h) obj).f(rect);
        Rect rect2 = this.f10629b;
        ((h) obj2).f(rect2);
        int i6 = rect.top;
        int i10 = rect2.top;
        if (i6 < i10) {
            return -1;
        }
        if (i6 > i10) {
            return 1;
        }
        int i11 = rect.left;
        int i12 = rect2.left;
        boolean z7 = this.f10630c;
        if (i11 < i12) {
            return z7 ? 1 : -1;
        }
        if (i11 > i12) {
            return z7 ? -1 : 1;
        }
        int i13 = rect.bottom;
        int i14 = rect2.bottom;
        if (i13 < i14) {
            return -1;
        }
        if (i13 > i14) {
            return 1;
        }
        int i15 = rect.right;
        int i16 = rect2.right;
        if (i15 < i16) {
            return z7 ? 1 : -1;
        }
        if (i15 > i16) {
            return z7 ? -1 : 1;
        }
        return 0;
    }
}
