package t0;

import android.database.ContentObserver;
import android.database.Cursor;
import android.os.Handler;
import androidx.appcompat.widget.f3;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f3 f10054a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(f3 f3Var) {
        super(new Handler());
        this.f10054a = f3Var;
    }

    @Override // android.database.ContentObserver
    public final boolean deliverSelfNotifications() {
        return true;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z7) {
        Cursor cursor;
        f3 f3Var = this.f10054a;
        if (!f3Var.f10056b || (cursor = f3Var.f10057c) == null || cursor.isClosed()) {
            return;
        }
        f3Var.f10055a = f3Var.f10057c.requery();
    }
}
