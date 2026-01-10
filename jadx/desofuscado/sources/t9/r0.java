package t9;

import java.util.concurrent.CancellationException;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class r0 extends CancellationException {

    /* renamed from: a, reason: collision with root package name */
    public final transient y0 f10226a;

    public r0(String str, Throwable th, y0 y0Var) {
        super(str);
        this.f10226a = y0Var;
        if (th != null) {
            initCause(th);
        }
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof r0) {
                r0 r0Var = (r0) obj;
                if (!j9.i.a(r0Var.getMessage(), getMessage()) || !j9.i.a(r0Var.f10226a, this.f10226a) || !j9.i.a(r0Var.getCause(), getCause())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public final int hashCode() {
        String message = getMessage();
        j9.i.c(message);
        int iHashCode = (this.f10226a.hashCode() + (message.hashCode() * 31)) * 31;
        Throwable cause = getCause();
        return iHashCode + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return super.toString() + "; job=" + this.f10226a;
    }
}
