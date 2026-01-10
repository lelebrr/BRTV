package b1;

import android.graphics.Bitmap;
import android.util.SparseArray;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public int f3121a;

    /* renamed from: b, reason: collision with root package name */
    public int f3122b;

    /* renamed from: c, reason: collision with root package name */
    public int f3123c;
    public final Object d;

    /* renamed from: e, reason: collision with root package name */
    public Object f3124e;
    public Object f;

    public n(q qVar) {
        this.f3121a = 1;
        this.d = qVar;
        this.f3124e = qVar;
    }

    public int a(int i6) {
        SparseArray sparseArray = ((q) this.f3124e).f3134a;
        q qVar = sparseArray == null ? null : (q) sparseArray.get(i6);
        int i10 = 1;
        if (this.f3121a == 2) {
            if (qVar != null) {
                this.f3124e = qVar;
                this.f3123c++;
            } else if (i6 == 65038) {
                c();
            } else if (i6 != 65039) {
                q qVar2 = (q) this.f3124e;
                if (qVar2.f3135b != null) {
                    if (this.f3123c != 1) {
                        this.f = qVar2;
                        c();
                    } else if (d()) {
                        this.f = (q) this.f3124e;
                        c();
                    } else {
                        c();
                    }
                    i10 = 3;
                } else {
                    c();
                }
            }
            i10 = 2;
        } else if (qVar == null) {
            c();
        } else {
            this.f3121a = 2;
            this.f3124e = qVar;
            this.f3123c = 1;
            i10 = 2;
        }
        this.f3122b = i6;
        return i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x017f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public s1.e b() {
        /*
            Method dump skipped, instructions count: 441
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b1.n.b():s1.e");
    }

    public void c() {
        this.f3121a = 1;
        this.f3124e = (q) this.d;
        this.f3123c = 0;
    }

    public boolean d() {
        c1.a aVarC = ((q) this.f3124e).f3135b.c();
        int iA = aVarC.a(6);
        return !(iA == 0 || ((ByteBuffer) aVarC.d).get(iA + aVarC.f3334a) == 0) || this.f3122b == 65039;
    }

    public n(Bitmap bitmap) {
        ArrayList arrayList = new ArrayList();
        this.f3124e = arrayList;
        this.f3121a = 16;
        this.f3122b = 12544;
        this.f3123c = -1;
        ArrayList arrayList2 = new ArrayList();
        this.f = arrayList2;
        if (!bitmap.isRecycled()) {
            arrayList2.add(s1.e.f9724e);
            this.d = bitmap;
            arrayList.add(s1.f.d);
            arrayList.add(s1.f.f9728e);
            arrayList.add(s1.f.f);
            arrayList.add(s1.f.f9729g);
            arrayList.add(s1.f.f9730h);
            arrayList.add(s1.f.f9731i);
            return;
        }
        throw new IllegalArgumentException("Bitmap is not valid");
    }
}
