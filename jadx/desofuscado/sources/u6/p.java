package u6;

import android.graphics.Canvas;
import android.graphics.Matrix;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class p extends v {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f10421b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Matrix f10422c;

    public p(ArrayList arrayList, Matrix matrix) {
        this.f10421b = arrayList;
        this.f10422c = matrix;
    }

    @Override // u6.v
    public final void a(Matrix matrix, t6.a aVar, int i6, Canvas canvas) {
        Iterator it = this.f10421b.iterator();
        while (it.hasNext()) {
            ((v) it.next()).a(this.f10422c, aVar, i6, canvas);
        }
    }
}
