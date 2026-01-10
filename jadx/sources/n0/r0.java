package n0;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.p2elite.brtv2.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r0 {
    public static final ArrayList d = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public WeakHashMap f8348a;

    /* renamed from: b, reason: collision with root package name */
    public SparseArray f8349b;

    /* renamed from: c, reason: collision with root package name */
    public WeakReference f8350c;

    public final View a(View view) {
        int size;
        WeakHashMap weakHashMap = this.f8348a;
        if (weakHashMap != null && weakHashMap.containsKey(view)) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View viewA = a(viewGroup.getChildAt(childCount));
                    if (viewA != null) {
                        return viewA;
                    }
                }
            }
            ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_unhandled_key_listeners);
            if (arrayList != null && arrayList.size() - 1 >= 0) {
                throw a.e.k(size, arrayList);
            }
        }
        return null;
    }
}
