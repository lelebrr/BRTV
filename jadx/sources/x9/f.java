package x9;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class f extends RuntimeException {

    /* renamed from: a, reason: collision with root package name */
    public final transient a9.i f11110a;

    public f(a9.i iVar) {
        this.f11110a = iVar;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public final String getLocalizedMessage() {
        return this.f11110a.toString();
    }
}
