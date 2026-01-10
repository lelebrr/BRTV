package t9;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class g0 extends p {

    /* renamed from: c, reason: collision with root package name */
    public long f10192c;
    public boolean d;

    /* renamed from: e, reason: collision with root package name */
    public x8.h f10193e;

    public final void h() {
        long j10 = this.f10192c - 4294967296L;
        this.f10192c = j10;
        if (j10 <= 0 && this.d) {
            shutdown();
        }
    }

    public abstract Thread i();

    public final void j(boolean z7) {
        this.f10192c = (z7 ? 4294967296L : 1L) + this.f10192c;
        if (z7) {
            return;
        }
        this.d = true;
    }

    public final boolean k() {
        x8.h hVar = this.f10193e;
        if (hVar == null) {
            return false;
        }
        a0 a0Var = (a0) (hVar.isEmpty() ? null : hVar.removeFirst());
        if (a0Var == null) {
            return false;
        }
        a0Var.run();
        return true;
    }

    public abstract void shutdown();
}
