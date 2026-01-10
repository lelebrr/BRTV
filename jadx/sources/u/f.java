package u;

import ea.q;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class f implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public i f10297a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f10298b;

    public f(g gVar) {
        this.f10298b = gVar;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f10297a.f10303b - ((i) obj).f10303b;
    }

    public final String toString() {
        String string = "[ ";
        if (this.f10297a != null) {
            for (int i6 = 0; i6 < 9; i6++) {
                StringBuilder sbM = q.m(string);
                sbM.append(this.f10297a.f10307h[i6]);
                sbM.append(" ");
                string = sbM.toString();
            }
        }
        StringBuilder sbW = a.e.w(string, "] ");
        sbW.append(this.f10297a);
        return sbW.toString();
    }
}
