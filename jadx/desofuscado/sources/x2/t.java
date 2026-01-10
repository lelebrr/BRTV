package x2;

import android.util.Log;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class t extends Exception {
    public static final StackTraceElement[] f = new StackTraceElement[0];

    /* renamed from: a, reason: collision with root package name */
    public final List f10961a;

    /* renamed from: b, reason: collision with root package name */
    public v2.e f10962b;

    /* renamed from: c, reason: collision with root package name */
    public int f10963c;
    public Class d;

    /* renamed from: e, reason: collision with root package name */
    public final String f10964e;

    public t(String str) {
        this(str, Collections.emptyList());
    }

    public static void a(Throwable th, ArrayList arrayList) {
        if (!(th instanceof t)) {
            arrayList.add(th);
            return;
        }
        Iterator it = ((t) th).f10961a.iterator();
        while (it.hasNext()) {
            a((Throwable) it.next(), arrayList);
        }
    }

    public static void b(List list, s sVar) throws IOException {
        int size = list.size();
        int i6 = 0;
        while (i6 < size) {
            sVar.append("Cause (");
            int i10 = i6 + 1;
            sVar.append(String.valueOf(i10));
            sVar.append(" of ");
            sVar.append(String.valueOf(size));
            sVar.append("): ");
            Throwable th = (Throwable) list.get(i6);
            if (th instanceof t) {
                ((t) th).e(sVar);
            } else {
                c(th, sVar);
            }
            i6 = i10;
        }
    }

    public static void c(Throwable th, Appendable appendable) throws IOException {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th);
        }
    }

    public final void d() {
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            StringBuilder sb = new StringBuilder("Root cause (");
            int i10 = i6 + 1;
            sb.append(i10);
            sb.append(" of ");
            sb.append(size);
            sb.append(")");
            Log.i("Glide", sb.toString(), (Throwable) arrayList.get(i6));
            i6 = i10;
        }
    }

    public final void e(Appendable appendable) throws IOException {
        c(this, appendable);
        try {
            b(this.f10961a, new s(appendable));
        } catch (IOException e5) {
            throw new RuntimeException(e5);
        }
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String str;
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.f10964e);
        String str2 = "";
        if (this.d != null) {
            str = ", " + this.d;
        } else {
            str = "";
        }
        sb.append(str);
        int i6 = this.f10963c;
        sb.append(i6 != 0 ? ", ".concat(ea.q.s(i6)) : "");
        if (this.f10962b != null) {
            str2 = ", " + this.f10962b;
        }
        sb.append(str2);
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        if (arrayList.isEmpty()) {
            return sb.toString();
        }
        if (arrayList.size() == 1) {
            sb.append("\nThere was 1 root cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(arrayList.size());
            sb.append(" root causes:");
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Throwable th = (Throwable) it.next();
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() throws IOException {
        e(System.err);
    }

    public t(String str, List list) {
        this.f10964e = str;
        setStackTrace(f);
        this.f10961a = list;
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) throws IOException {
        e(printStream);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) throws IOException {
        e(printWriter);
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }
}
