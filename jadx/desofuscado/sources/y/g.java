package y;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: n, reason: collision with root package name */
    public static final SparseIntArray f11197n;

    /* renamed from: a, reason: collision with root package name */
    public boolean f11198a;

    /* renamed from: b, reason: collision with root package name */
    public float f11199b;

    /* renamed from: c, reason: collision with root package name */
    public float f11200c;
    public float d;

    /* renamed from: e, reason: collision with root package name */
    public float f11201e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f11202g;

    /* renamed from: h, reason: collision with root package name */
    public float f11203h;

    /* renamed from: i, reason: collision with root package name */
    public float f11204i;

    /* renamed from: j, reason: collision with root package name */
    public float f11205j;

    /* renamed from: k, reason: collision with root package name */
    public float f11206k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f11207l;

    /* renamed from: m, reason: collision with root package name */
    public float f11208m;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f11197n = sparseIntArray;
        sparseIntArray.append(6, 1);
        sparseIntArray.append(7, 2);
        sparseIntArray.append(8, 3);
        sparseIntArray.append(4, 4);
        sparseIntArray.append(5, 5);
        sparseIntArray.append(0, 6);
        sparseIntArray.append(1, 7);
        sparseIntArray.append(2, 8);
        sparseIntArray.append(3, 9);
        sparseIntArray.append(9, 10);
        sparseIntArray.append(10, 11);
    }

    public final void a(g gVar) {
        this.f11198a = gVar.f11198a;
        this.f11199b = gVar.f11199b;
        this.f11200c = gVar.f11200c;
        this.d = gVar.d;
        this.f11201e = gVar.f11201e;
        this.f = gVar.f;
        this.f11202g = gVar.f11202g;
        this.f11203h = gVar.f11203h;
        this.f11204i = gVar.f11204i;
        this.f11205j = gVar.f11205j;
        this.f11206k = gVar.f11206k;
        this.f11207l = gVar.f11207l;
        this.f11208m = gVar.f11208m;
    }

    public final void b(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.f11225s);
        this.f11198a = true;
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i6 = 0; i6 < indexCount; i6++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i6);
            switch (f11197n.get(index)) {
                case 1:
                    this.f11199b = typedArrayObtainStyledAttributes.getFloat(index, this.f11199b);
                    break;
                case 2:
                    this.f11200c = typedArrayObtainStyledAttributes.getFloat(index, this.f11200c);
                    break;
                case 3:
                    this.d = typedArrayObtainStyledAttributes.getFloat(index, this.d);
                    break;
                case 4:
                    this.f11201e = typedArrayObtainStyledAttributes.getFloat(index, this.f11201e);
                    break;
                case 5:
                    this.f = typedArrayObtainStyledAttributes.getFloat(index, this.f);
                    break;
                case 6:
                    this.f11202g = typedArrayObtainStyledAttributes.getDimension(index, this.f11202g);
                    break;
                case 7:
                    this.f11203h = typedArrayObtainStyledAttributes.getDimension(index, this.f11203h);
                    break;
                case 8:
                    this.f11204i = typedArrayObtainStyledAttributes.getDimension(index, this.f11204i);
                    break;
                case 9:
                    this.f11205j = typedArrayObtainStyledAttributes.getDimension(index, this.f11205j);
                    break;
                case 10:
                    this.f11206k = typedArrayObtainStyledAttributes.getDimension(index, this.f11206k);
                    break;
                case 11:
                    this.f11207l = true;
                    this.f11208m = typedArrayObtainStyledAttributes.getDimension(index, this.f11208m);
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
