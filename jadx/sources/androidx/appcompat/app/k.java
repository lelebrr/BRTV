package androidx.appcompat.app;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.LinkedHashSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k implements v1.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f324a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Object f325b;

    public k(androidx.appcompat.widget.v vVar) {
        j9.i.f(vVar, "registry");
        this.f325b = new LinkedHashSet();
        vVar.f("androidx.savedstate.Restarter", this);
    }

    @Override // v1.d
    public final Bundle saveState() {
        switch (this.f324a) {
            case 0:
                Bundle bundle = new Bundle();
                ((AppCompatActivity) this.f325b).m().getClass();
                return bundle;
            default:
                Bundle bundle2 = new Bundle();
                bundle2.putStringArrayList("classes_to_restore", new ArrayList<>((LinkedHashSet) this.f325b));
                return bundle2;
        }
    }

    public k(AppCompatActivity appCompatActivity) {
        this.f325b = appCompatActivity;
    }
}
