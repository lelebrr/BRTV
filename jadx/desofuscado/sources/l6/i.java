package l6;

import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.material.bottomappbar.b f8018a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FloatingActionButton f8019b;

    public i(FloatingActionButton floatingActionButton, com.google.android.material.bottomappbar.b bVar) {
        this.f8019b = floatingActionButton;
        this.f8018a = bVar;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof i) && ((i) obj).f8018a.equals(this.f8018a);
    }

    public final int hashCode() {
        return this.f8018a.hashCode();
    }
}
