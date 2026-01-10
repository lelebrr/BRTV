package a0;

import android.view.View;
import java.io.File;
import java.util.Comparator;
import java.util.WeakHashMap;
import n0.g0;
import n0.s0;
import org.bitspark.android.beans.GroupBeanModel;
import u.i;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f36a;

    public /* synthetic */ e(int i6) {
        this.f36a = i6;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f36a) {
            case 0:
                WeakHashMap weakHashMap = s0.f8353a;
                float fM = g0.m((View) obj);
                float fM2 = g0.m((View) obj2);
                if (fM > fM2) {
                    return -1;
                }
                return fM < fM2 ? 1 : 0;
            case 1:
                return ((b2.g) obj).f3154b - ((b2.g) obj2).f3154b;
            case 2:
                return ((View) obj).getTop() - ((View) obj2).getTop();
            case 3:
                return Long.compare(((File) obj2).lastModified(), ((File) obj).lastModified());
            case 4:
                return Integer.compare(((GroupBeanModel) obj).group_id, ((GroupBeanModel) obj2).group_id);
            case 5:
                return ((Comparable) obj).compareTo((Comparable) obj2);
            case 6:
                return ((s1.a) obj2).b() - ((s1.a) obj).b();
            case 7:
                if (obj != null) {
                    throw new ClassCastException();
                }
                obj2.getClass();
                throw new ClassCastException();
            default:
                return ((i) obj).f10303b - ((i) obj2).f10303b;
        }
    }
}
