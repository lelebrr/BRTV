package y1;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Transition;
import androidx.transition.Visibility;
import com.p2elite.brtv2.R;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class l0 extends z {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f11299a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f11300b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f11301c;
    public final /* synthetic */ Visibility d;

    public l0(Visibility visibility, ViewGroup viewGroup, View view, View view2) {
        this.d = visibility;
        this.f11299a = viewGroup;
        this.f11300b = view;
        this.f11301c = view2;
    }

    @Override // y1.z, y1.y
    public final void b() {
        this.f11299a.getOverlay().remove(this.f11300b);
    }

    @Override // y1.z, y1.y
    public final void c() {
        View view = this.f11300b;
        if (view.getParent() == null) {
            this.f11299a.getOverlay().add(view);
            return;
        }
        Visibility visibility = this.d;
        ArrayList arrayList = visibility.f3024m;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((Animator) arrayList.get(size)).cancel();
        }
        ArrayList arrayList2 = visibility.f3028q;
        if (arrayList2 == null || arrayList2.size() <= 0) {
            return;
        }
        ArrayList arrayList3 = (ArrayList) visibility.f3028q.clone();
        int size2 = arrayList3.size();
        for (int i6 = 0; i6 < size2; i6++) {
            ((y) arrayList3.get(i6)).d();
        }
    }

    @Override // y1.y
    public final void e(Transition transition) {
        this.f11301c.setTag(R.id.save_overlay_view, null);
        this.f11299a.getOverlay().remove(this.f11300b);
        transition.u(this);
    }
}
