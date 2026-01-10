package y;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public boolean f11193a;

    /* renamed from: b, reason: collision with root package name */
    public int f11194b;

    /* renamed from: c, reason: collision with root package name */
    public int f11195c;
    public float d;

    /* renamed from: e, reason: collision with root package name */
    public float f11196e;

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.f11222p);
        this.f11193a = true;
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i6 = 0; i6 < indexCount; i6++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i6);
            if (index == 1) {
                this.d = typedArrayObtainStyledAttributes.getFloat(index, this.d);
            } else if (index == 0) {
                int i10 = typedArrayObtainStyledAttributes.getInt(index, this.f11194b);
                this.f11194b = i10;
                this.f11194b = androidx.constraintlayout.widget.d.d[i10];
            } else if (index == 4) {
                this.f11195c = typedArrayObtainStyledAttributes.getInt(index, this.f11195c);
            } else if (index == 3) {
                this.f11196e = typedArrayObtainStyledAttributes.getFloat(index, this.f11196e);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
