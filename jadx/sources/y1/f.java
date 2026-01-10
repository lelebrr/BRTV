package y1;

import android.widget.ImageView;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class f {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f11262a;

    static {
        int[] iArr = new int[ImageView.ScaleType.values().length];
        f11262a = iArr;
        try {
            iArr[ImageView.ScaleType.FIT_XY.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f11262a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
