package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x0 extends w0 {
    public static x0 f;

    /* renamed from: e, reason: collision with root package name */
    public final Application f2015e;

    public x0(Application application) {
        super(6);
        this.f2015e = application;
    }

    @Override // androidx.lifecycle.w0, androidx.lifecycle.y0
    public final v0 a(Class cls) {
        Application application = this.f2015e;
        if (application != null) {
            return c(cls, application);
        }
        throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
    }

    @Override // androidx.lifecycle.w0, androidx.lifecycle.y0
    public final v0 b(Class cls, j1.b bVar) {
        if (this.f2015e != null) {
            return a(cls);
        }
        Application application = (Application) ((LinkedHashMap) bVar.f6105a).get(w0.f2010b);
        if (application != null) {
            return c(cls, application);
        }
        if (a.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
        }
        return super.a(cls);
    }

    public final v0 c(Class cls, Application application) {
        if (!a.class.isAssignableFrom(cls)) {
            return super.a(cls);
        }
        try {
            v0 v0Var = (v0) cls.getConstructor(Application.class).newInstance(application);
            j9.i.e(v0Var, "{\n                try {\n…          }\n            }");
            return v0Var;
        } catch (IllegalAccessException e5) {
            throw new RuntimeException(a.e.q(cls, "Cannot create an instance of "), e5);
        } catch (InstantiationException e10) {
            throw new RuntimeException(a.e.q(cls, "Cannot create an instance of "), e10);
        } catch (NoSuchMethodException e11) {
            throw new RuntimeException(a.e.q(cls, "Cannot create an instance of "), e11);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException(a.e.q(cls, "Cannot create an instance of "), e12);
        }
    }
}
