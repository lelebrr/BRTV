package ka;

import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.bitspark.android.beans.EventBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AtomicInteger f7787a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7788b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f7789c;
    public final /* synthetic */ EventBean d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ j f7790e;

    public h(j jVar, AtomicInteger atomicInteger, int i6, ArrayList arrayList, EventBean eventBean) {
        this.f7790e = jVar;
        this.f7787a = atomicInteger;
        this.f7788b = i6;
        this.f7789c = arrayList;
        this.d = eventBean;
    }

    public final void a(x2.t tVar, Object obj) {
        a2.a.s("AkDc4dy8svInSt/w\n", "Si+xhJrO05U=\n");
        a2.a.s("71OVmhEuBfvzTbmbHygEyctJlZgtJw7N3UCemBs9Qd/tU5+ERG8=\n", "nyHw9n5PYbo=\n");
        Objects.toString(obj);
        a2.a.s("y+m4tw==\n", "68SViVuqGqU=\n");
        Objects.toString(tVar);
        if (this.f7787a.incrementAndGet() == this.f7788b) {
            j.Q(this.f7790e, this.f7789c);
        }
    }

    public final void b(Object obj, Object obj2) {
        a2.a.s("LLKkD7wmLPUJuKce\n", "ZN3JavpUTZI=\n");
        a2.a.s("qycsDDY2eRy3OQANODB4Lo89LA4KP3IqmTQnDjwlPRKQb2k=\n", "21VJYFlXHV0=\n");
        Objects.toString(obj2);
        ArrayList arrayList = this.f7789c;
        arrayList.add(this.d);
        if (this.f7787a.incrementAndGet() == this.f7788b) {
            j.Q(this.f7790e, arrayList);
        }
    }
}
