package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b6 extends z0 {
    @Override // com.google.android.gms.internal.cast.z0
    public final y5 c(z5 z5Var) {
        y5 y5Var;
        y5 y5Var2 = y5.d;
        synchronized (z5Var) {
            try {
                y5Var = z5Var.f4150e;
                if (y5Var != y5Var2) {
                    z5Var.f4150e = y5Var2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return y5Var;
    }

    @Override // com.google.android.gms.internal.cast.z0
    public final d6 j(z5 z5Var) {
        d6 d6Var;
        d6 d6Var2 = d6.f4132c;
        synchronized (z5Var) {
            try {
                d6Var = z5Var.f;
                if (d6Var != d6Var2) {
                    z5Var.f = d6Var2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return d6Var;
    }

    @Override // com.google.android.gms.internal.cast.z0
    public final void l(d6 d6Var, d6 d6Var2) {
        d6Var.f4134b = d6Var2;
    }

    @Override // com.google.android.gms.internal.cast.z0
    public final void n(d6 d6Var, Thread thread) {
        d6Var.f4133a = thread;
    }

    @Override // com.google.android.gms.internal.cast.z0
    public final boolean p(z5 z5Var, y5 y5Var, y5 y5Var2) {
        synchronized (z5Var) {
            try {
                if (z5Var.f4150e != y5Var) {
                    return false;
                }
                z5Var.f4150e = y5Var2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.cast.z0
    public final boolean q(e6 e6Var, Object obj, Object obj2) {
        synchronized (e6Var) {
            try {
                if (e6Var.d != obj) {
                    return false;
                }
                e6Var.d = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.cast.z0
    public final boolean r(e6 e6Var, d6 d6Var, d6 d6Var2) {
        synchronized (e6Var) {
            try {
                if (e6Var.f != d6Var) {
                    return false;
                }
                e6Var.f = d6Var2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
