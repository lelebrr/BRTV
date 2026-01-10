package com.google.android.gms.internal.cast;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class c7 extends r6 {
    private static final Map zzb = new ConcurrentHashMap();
    protected y7 zzc;
    private int zzd;

    public c7() {
        this.zza = 0;
        this.zzd = -1;
        this.zzc = y7.f4496e;
    }

    public static Object c(Method method, r6 r6Var, Object... objArr) {
        try {
            return method.invoke(r6Var, objArr);
        } catch (IllegalAccessException e5) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e5);
        } catch (InvocationTargetException e10) {
            Throwable cause = e10.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static void e(Class cls, c7 c7Var) {
        c7Var.d();
        zzb.put(cls, c7Var);
    }

    public static c7 k(Class cls) throws ClassNotFoundException {
        Map map = zzb;
        c7 c7Var = (c7) map.get(cls);
        if (c7Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                c7Var = (c7) map.get(cls);
            } catch (ClassNotFoundException e5) {
                throw new IllegalStateException("Class initialization cannot fail.", e5);
            }
        }
        if (c7Var == null) {
            c7Var = (c7) ((c7) d8.h(cls)).h(6, null);
            if (c7Var == null) {
                throw new IllegalStateException();
            }
            map.put(cls, c7Var);
        }
        return c7Var;
    }

    @Override // com.google.android.gms.internal.cast.r6
    public final int a(v7 v7Var) {
        if (g()) {
            int iE = v7Var.e(this);
            if (iE >= 0) {
                return iE;
            }
            throw new IllegalStateException(a.e.n(iE, "serialized size must be non-negative, was "));
        }
        int i6 = this.zzd & Integer.MAX_VALUE;
        if (i6 != Integer.MAX_VALUE) {
            return i6;
        }
        int iE2 = v7Var.e(this);
        if (iE2 < 0) {
            throw new IllegalStateException(a.e.n(iE2, "serialized size must be non-negative, was "));
        }
        this.zzd = (this.zzd & Integer.MIN_VALUE) | iE2;
        return iE2;
    }

    public final void d() {
        this.zzd &= Integer.MAX_VALUE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return s7.f4412c.a(getClass()).c(this, (c7) obj);
    }

    public final void f() {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    public final boolean g() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    public abstract Object h(int i6, c7 c7Var);

    public final int hashCode() {
        if (g()) {
            return s7.f4412c.a(getClass()).h(this);
        }
        int i6 = this.zza;
        if (i6 != 0) {
            return i6;
        }
        int iH = s7.f4412c.a(getClass()).h(this);
        this.zza = iH;
        return iH;
    }

    public final int i() {
        int iE;
        if (g()) {
            iE = s7.f4412c.a(getClass()).e(this);
            if (iE < 0) {
                throw new IllegalStateException(a.e.n(iE, "serialized size must be non-negative, was "));
            }
        } else {
            iE = this.zzd & Integer.MAX_VALUE;
            if (iE == Integer.MAX_VALUE) {
                iE = s7.f4412c.a(getClass()).e(this);
                if (iE < 0) {
                    throw new IllegalStateException(a.e.n(iE, "serialized size must be non-negative, was "));
                }
                this.zzd = (this.zzd & Integer.MIN_VALUE) | iE;
            }
        }
        return iE;
    }

    public final b7 j() {
        return (b7) h(5, null);
    }

    public final String toString() {
        String string = super.toString();
        char[] cArr = o7.f4371a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        o7.c(this, sb, 0);
        return sb.toString();
    }
}
