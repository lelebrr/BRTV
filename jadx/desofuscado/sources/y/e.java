package y;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: h, reason: collision with root package name */
    public static final SparseIntArray f11187h;

    /* renamed from: a, reason: collision with root package name */
    public boolean f11188a;

    /* renamed from: b, reason: collision with root package name */
    public int f11189b;

    /* renamed from: c, reason: collision with root package name */
    public String f11190c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f11191e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f11192g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f11187h = sparseIntArray;
        sparseIntArray.append(2, 1);
        sparseIntArray.append(4, 2);
        sparseIntArray.append(5, 3);
        sparseIntArray.append(1, 4);
        sparseIntArray.append(0, 5);
        sparseIntArray.append(3, 6);
    }

    public final void a(e eVar) {
        this.f11188a = eVar.f11188a;
        this.f11189b = eVar.f11189b;
        this.f11190c = eVar.f11190c;
        this.d = eVar.d;
        this.f11191e = eVar.f11191e;
        this.f11192g = eVar.f11192g;
        this.f = eVar.f;
    }

    public final void b(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.f11215i);
        this.f11188a = true;
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i6 = 0; i6 < indexCount; i6++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i6);
            switch (f11187h.get(index)) {
                case 1:
                    this.f11192g = typedArrayObtainStyledAttributes.getFloat(index, this.f11192g);
                    break;
                case 2:
                    this.d = typedArrayObtainStyledAttributes.getInt(index, this.d);
                    break;
                case 3:
                    if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        this.f11190c = typedArrayObtainStyledAttributes.getString(index);
                        break;
                    } else {
                        this.f11190c = s.e.f9683c[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        break;
                    }
                case 4:
                    this.f11191e = typedArrayObtainStyledAttributes.getInt(index, 0);
                    break;
                case 5:
                    this.f11189b = androidx.constraintlayout.widget.d.j(typedArrayObtainStyledAttributes, index, this.f11189b);
                    break;
                case 6:
                    this.f = typedArrayObtainStyledAttributes.getFloat(index, this.f);
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
