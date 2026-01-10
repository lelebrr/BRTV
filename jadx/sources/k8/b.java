package k8;

import androidx.fragment.app.q;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends RuntimeException {

    /* renamed from: a, reason: collision with root package name */
    public final List f7754a;

    /* renamed from: b, reason: collision with root package name */
    public final String f7755b;

    /* renamed from: c, reason: collision with root package name */
    public Throwable f7756c;

    public b(List list) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Throwable th = (Throwable) it.next();
                if (th instanceof b) {
                    linkedHashSet.addAll(((b) th).f7754a);
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException("Throwable was null!"));
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException("errors was null"));
        }
        if (linkedHashSet.isEmpty()) {
            throw new IllegalArgumentException("errors is empty");
        }
        List listUnmodifiableList = Collections.unmodifiableList(new ArrayList(linkedHashSet));
        this.f7754a = listUnmodifiableList;
        this.f7755b = listUnmodifiableList.size() + " exceptions occurred. ";
    }

    public static void a(com.bumptech.glide.c cVar, Throwable th, String str) {
        cVar.a(str).a(th).a('\n');
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            cVar.a("\t\tat ").a(stackTraceElement).a('\n');
        }
        if (th.getCause() != null) {
            cVar.a("\tCaused by: ");
            a(cVar, th.getCause(), "");
        }
    }

    public final void b(com.bumptech.glide.c cVar) {
        cVar.a(this).a("\n");
        for (StackTraceElement stackTraceElement : getStackTrace()) {
            cVar.a("\tat ").a(stackTraceElement).a("\n");
        }
        int i6 = 1;
        for (Throwable th : this.f7754a) {
            cVar.a("  ComposedException ").a(Integer.valueOf(i6)).a(" :\n");
            a(cVar, th, "\t");
            i6++;
        }
        cVar.a("\n");
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        int i6;
        try {
            if (this.f7756c == null) {
                String property = System.getProperty("line.separator");
                if (this.f7754a.size() > 1) {
                    IdentityHashMap identityHashMap = new IdentityHashMap();
                    StringBuilder sb = new StringBuilder();
                    sb.append("Multiple exceptions (");
                    sb.append(this.f7754a.size());
                    sb.append(")");
                    sb.append(property);
                    for (Throwable cause : this.f7754a) {
                        int i10 = 0;
                        while (true) {
                            if (cause != null) {
                                for (int i11 = 0; i11 < i10; i11++) {
                                    sb.append("  ");
                                }
                                sb.append("|-- ");
                                sb.append(cause.getClass().getCanonicalName());
                                sb.append(": ");
                                String message = cause.getMessage();
                                if (message == null || !message.contains(property)) {
                                    sb.append(message);
                                    sb.append(property);
                                } else {
                                    sb.append(property);
                                    for (String str : message.split(property)) {
                                        for (int i12 = 0; i12 < i10 + 2; i12++) {
                                            sb.append("  ");
                                        }
                                        sb.append(str);
                                        sb.append(property);
                                    }
                                }
                                int i13 = 0;
                                while (true) {
                                    i6 = i10 + 2;
                                    if (i13 >= i6) {
                                        break;
                                    }
                                    sb.append("  ");
                                    i13++;
                                }
                                StackTraceElement[] stackTrace = cause.getStackTrace();
                                if (stackTrace.length > 0) {
                                    sb.append("at ");
                                    sb.append(stackTrace[0]);
                                    sb.append(property);
                                }
                                if (identityHashMap.containsKey(cause)) {
                                    Throwable cause2 = cause.getCause();
                                    if (cause2 != null) {
                                        for (int i14 = 0; i14 < i6; i14++) {
                                            sb.append("  ");
                                        }
                                        sb.append("|-- ");
                                        sb.append("(cause not expanded again) ");
                                        sb.append(cause2.getClass().getCanonicalName());
                                        sb.append(": ");
                                        sb.append(cause2.getMessage());
                                        sb.append(property);
                                    }
                                } else {
                                    identityHashMap.put(cause, Boolean.TRUE);
                                    cause = cause.getCause();
                                    i10++;
                                }
                            }
                        }
                    }
                    this.f7756c = new q(sb.toString().trim(), 5);
                } else {
                    this.f7756c = (Throwable) this.f7754a.get(0);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f7756c;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f7755b;
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        b(new a(0, printStream));
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        b(new a(1, printWriter));
    }
}
