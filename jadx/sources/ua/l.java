package ua;

import java.lang.reflect.Method;
import org.greenrobot.eventbus.ThreadMode;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final Method f10498a;

    /* renamed from: b, reason: collision with root package name */
    public final ThreadMode f10499b;

    /* renamed from: c, reason: collision with root package name */
    public final Class f10500c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f10501e;
    public String f;

    public l(Method method, Class cls, ThreadMode threadMode, int i6, boolean z7) {
        this.f10498a = method;
        this.f10499b = threadMode;
        this.f10500c = cls;
        this.d = i6;
        this.f10501e = z7;
    }

    public final synchronized void a() {
        if (this.f == null) {
            StringBuilder sb = new StringBuilder(64);
            sb.append(this.f10498a.getDeclaringClass().getName());
            sb.append('#');
            sb.append(this.f10498a.getName());
            sb.append('(');
            sb.append(this.f10500c.getName());
            this.f = sb.toString();
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        a();
        l lVar = (l) obj;
        lVar.a();
        return this.f.equals(lVar.f);
    }

    public final int hashCode() {
        return this.f10498a.hashCode();
    }
}
