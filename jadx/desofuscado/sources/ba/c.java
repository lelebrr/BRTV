package ba;

import android.content.Context;
import android.content.ContextWrapper;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends ContextWrapper {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f3327a = 0;

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        return new a(this, getBaseContext().getApplicationContext());
    }
}
