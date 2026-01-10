package androidx.core.app;

import android.content.Intent;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j implements k {

    /* renamed from: a, reason: collision with root package name */
    public final Intent f1175a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1176b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ JobIntentService f1177c;

    public j(JobIntentService jobIntentService, Intent intent, int i6) {
        this.f1177c = jobIntentService;
        this.f1175a = intent;
        this.f1176b = i6;
    }

    @Override // androidx.core.app.k
    public final void a() {
        this.f1177c.stopSelf(this.f1176b);
    }

    @Override // androidx.core.app.k
    public final Intent getIntent() {
        return this.f1175a;
    }
}
