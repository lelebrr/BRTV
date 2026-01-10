package z8;

import androidx.media3.exoplayer.upstream.CmcdData;
import j9.i;
import java.util.Comparator;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a implements Comparator {

    /* renamed from: b, reason: collision with root package name */
    public static final a f11672b = new a(0);

    /* renamed from: c, reason: collision with root package name */
    public static final a f11673c = new a(1);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11674a;

    public /* synthetic */ a(int i6) {
        this.f11674a = i6;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f11674a) {
            case 0:
                Comparable comparable = (Comparable) obj;
                Comparable comparable2 = (Comparable) obj2;
                i.f(comparable, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
                i.f(comparable2, "b");
                return comparable.compareTo(comparable2);
            default:
                Comparable comparable3 = (Comparable) obj;
                Comparable comparable4 = (Comparable) obj2;
                i.f(comparable3, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
                i.f(comparable4, "b");
                return comparable4.compareTo(comparable3);
        }
    }

    @Override // java.util.Comparator
    public final Comparator reversed() {
        switch (this.f11674a) {
            case 0:
                return f11673c;
            default:
                return f11672b;
        }
    }
}
