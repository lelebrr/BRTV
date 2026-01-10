package s1;

import android.util.SparseBooleanArray;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: e, reason: collision with root package name */
    public static final c f9724e = new c();

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f9725a;
    public final d d;

    /* renamed from: c, reason: collision with root package name */
    public final SparseBooleanArray f9727c = new SparseBooleanArray();

    /* renamed from: b, reason: collision with root package name */
    public final p.e f9726b = new p.e(0);

    public e(ArrayList arrayList, ArrayList arrayList2) {
        this.f9725a = arrayList;
        int size = arrayList.size();
        int i6 = Integer.MIN_VALUE;
        d dVar = null;
        for (int i10 = 0; i10 < size; i10++) {
            d dVar2 = (d) arrayList.get(i10);
            int i11 = dVar2.f9720e;
            if (i11 > i6) {
                dVar = dVar2;
                i6 = i11;
            }
        }
        this.d = dVar;
    }
}
