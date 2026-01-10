package z9;

import androidx.leanback.widget.o;
import t9.u;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class i extends h {

    /* renamed from: c, reason: collision with root package name */
    public final Runnable f11696c;

    public i(Runnable runnable, long j10, o oVar) {
        super(j10, oVar);
        this.f11696c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f11696c.run();
        } finally {
            this.f11695b.getClass();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Task[");
        Runnable runnable = this.f11696c;
        sb.append(runnable.getClass().getSimpleName());
        sb.append('@');
        sb.append(u.f(runnable));
        sb.append(", ");
        sb.append(this.f11694a);
        sb.append(", ");
        sb.append(this.f11695b);
        sb.append(']');
        return sb.toString();
    }
}
