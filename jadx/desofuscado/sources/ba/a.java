package ba;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.WindowManager;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends ContextWrapper {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f3324a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(c cVar, Context context) {
        super(context);
        this.f3324a = cVar;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if (!"window".equals(str)) {
            return super.getSystemService(str);
        }
        return new b(this.f3324a, (WindowManager) getBaseContext().getSystemService(str));
    }
}
