package q1;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l0 {

    /* renamed from: c, reason: collision with root package name */
    public static final l0 f9055c = new l0(new Bundle(), null);

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f9056a;

    /* renamed from: b, reason: collision with root package name */
    public List f9057b;

    public l0(Bundle bundle, ArrayList arrayList) {
        this.f9056a = bundle;
        this.f9057b = arrayList;
    }

    public static l0 b(Bundle bundle) {
        if (bundle != null) {
            return new l0(bundle, null);
        }
        return null;
    }

    public final void a() {
        if (this.f9057b == null) {
            ArrayList<String> stringArrayList = this.f9056a.getStringArrayList("controlCategories");
            this.f9057b = stringArrayList;
            if (stringArrayList == null || stringArrayList.isEmpty()) {
                this.f9057b = Collections.emptyList();
            }
        }
    }

    public final ArrayList c() {
        a();
        return new ArrayList(this.f9057b);
    }

    public final boolean d() {
        a();
        return this.f9057b.isEmpty();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof l0)) {
            return false;
        }
        l0 l0Var = (l0) obj;
        a();
        l0Var.a();
        return this.f9057b.equals(l0Var.f9057b);
    }

    public final int hashCode() {
        a();
        return this.f9057b.hashCode();
    }

    public final String toString() {
        return "MediaRouteSelector{ controlCategories=" + Arrays.toString(c().toArray()) + " }";
    }
}
