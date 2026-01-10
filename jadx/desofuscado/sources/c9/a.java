package c9;

import androidx.appcompat.widget.a3;
import com.lzy.okgo.cookie.SerializableCookie;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import w8.l;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a implements a9.d, d, Serializable {
    private final a9.d<Object> completion;

    public a(a9.d dVar) {
        this.completion = dVar;
    }

    public a9.d<l> create(a9.d<?> dVar) {
        j9.i.f(dVar, "completion");
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    @Override // c9.d
    public d getCallerFrame() {
        a9.d<Object> dVar = this.completion;
        if (dVar instanceof d) {
            return (d) dVar;
        }
        return null;
    }

    public final a9.d<Object> getCompletion() {
        return this.completion;
    }

    public StackTraceElement getStackTraceElement() throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        int iIntValue;
        String strC;
        Method method;
        Object objInvoke;
        Method method2;
        Object objInvoke2;
        e eVar = (e) getClass().getAnnotation(e.class);
        String str = null;
        if (eVar == null) {
            return null;
        }
        int iV = eVar.v();
        if (iV > 1) {
            throw new IllegalStateException(("Debug metadata version mismatch. Expected: 1, got " + iV + ". Please update the Kotlin standard library.").toString());
        }
        try {
            Field declaredField = getClass().getDeclaredField("label");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            iIntValue = (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            iIntValue = -1;
        }
        int i6 = iIntValue >= 0 ? eVar.l()[iIntValue] : -1;
        a3 a3Var = f.f3483b;
        a3 a3Var2 = f.f3482a;
        if (a3Var == null) {
            try {
                a3 a3Var3 = new a3(Class.class.getDeclaredMethod("getModule", null), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", null), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod(SerializableCookie.NAME, null));
                f.f3483b = a3Var3;
                a3Var = a3Var3;
            } catch (Exception unused2) {
                f.f3483b = a3Var2;
                a3Var = a3Var2;
            }
        }
        if (a3Var != a3Var2 && (method = a3Var.f664a) != null && (objInvoke = method.invoke(getClass(), null)) != null && (method2 = a3Var.f665b) != null && (objInvoke2 = method2.invoke(objInvoke, null)) != null) {
            Method method3 = a3Var.f666c;
            Object objInvoke3 = method3 != null ? method3.invoke(objInvoke2, null) : null;
            if (objInvoke3 instanceof String) {
                str = (String) objInvoke3;
            }
        }
        if (str == null) {
            strC = eVar.c();
        } else {
            strC = str + '/' + eVar.c();
        }
        return new StackTraceElement(strC, eVar.m(), eVar.f(), i6);
    }

    public abstract Object invokeSuspend(Object obj);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // a9.d
    public final void resumeWith(Object obj) {
        a9.d dVar = this;
        while (true) {
            a aVar = (a) dVar;
            a9.d dVar2 = aVar.completion;
            j9.i.c(dVar2);
            try {
                obj = aVar.invokeSuspend(obj);
                if (obj == b9.a.f3322a) {
                    return;
                }
            } catch (Throwable th) {
                obj = o9.d.f(th);
            }
            aVar.releaseIntercepted();
            if (!(dVar2 instanceof a)) {
                dVar2.resumeWith(obj);
                return;
            }
            dVar = dVar2;
        }
    }

    public String toString() throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        StringBuilder sb = new StringBuilder("Continuation at ");
        Object stackTraceElement = getStackTraceElement();
        if (stackTraceElement == null) {
            stackTraceElement = getClass().getName();
        }
        sb.append(stackTraceElement);
        return sb.toString();
    }

    public a9.d<l> create(Object obj, a9.d<?> dVar) {
        j9.i.f(dVar, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    public void releaseIntercepted() {
    }
}
