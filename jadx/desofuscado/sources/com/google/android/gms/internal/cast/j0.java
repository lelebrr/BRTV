package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.ApplicationMetadata;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4260a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4261b;

    public /* synthetic */ j0(int i6, Object obj) {
        this.f4260a = i6;
        this.f4261b = obj;
    }

    public void a(int i6) {
        switch (this.f4260a) {
            case 1:
                Iterator it = new HashSet(((q4.b) this.f4261b).d).iterator();
                while (it.hasNext()) {
                    ((j0) it.next()).a(i6);
                }
                break;
        }
    }

    public void c(int i6) {
        switch (this.f4260a) {
            case 1:
                q4.b bVar = (q4.b) this.f4261b;
                q4.b.h(bVar, i6);
                bVar.b(i6);
                Iterator it = new HashSet(bVar.d).iterator();
                while (it.hasNext()) {
                    ((j0) it.next()).c(i6);
                }
                break;
        }
    }

    public void e(ApplicationMetadata applicationMetadata) {
        switch (this.f4260a) {
            case 1:
                Iterator it = new HashSet(((q4.b) this.f4261b).d).iterator();
                while (it.hasNext()) {
                    ((j0) it.next()).e(applicationMetadata);
                }
                break;
        }
    }

    public void g() {
        switch (this.f4260a) {
            case 1:
                Iterator it = new HashSet(((q4.b) this.f4261b).d).iterator();
                while (it.hasNext()) {
                    ((j0) it.next()).g();
                }
                break;
        }
    }

    public void j(int i6) {
        switch (this.f4260a) {
            case 1:
                Iterator it = new HashSet(((q4.b) this.f4261b).d).iterator();
                while (it.hasNext()) {
                    ((j0) it.next()).j(i6);
                }
                break;
        }
    }

    public void l() {
        switch (this.f4260a) {
            case 0:
                ((i0) this.f4261b).f();
                break;
            case 1:
                Iterator it = new HashSet(((q4.b) this.f4261b).d).iterator();
                while (it.hasNext()) {
                    ((j0) it.next()).l();
                }
                break;
        }
    }

    public final void h() {
    }

    public final void i() {
    }

    public final void m() {
    }

    public final void b(int i6) {
    }

    public final void d(int i6) {
    }

    public final void f(ApplicationMetadata applicationMetadata) {
    }

    public final void k(int i6) {
    }
}
