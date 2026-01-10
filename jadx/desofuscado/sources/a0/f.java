package a0;

import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import androidx.leanback.widget.k1;
import androidx.media3.extractor.text.ttml.TtmlNode;
import b1.m;
import com.lzy.okgo.cookie.SerializableCookie;
import com.tencent.bugly.proguard.c0;
import h4.j;
import java.lang.ref.ReferenceQueue;
import java.nio.ByteBuffer;
import java.text.DateFormatSymbols;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import k.b0;
import k.s;
import p.i;
import q1.w;
import s4.h;
import x2.l;
import x2.q;
import x2.r;
import x2.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements d4.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f37a;

    /* renamed from: b, reason: collision with root package name */
    public Object f38b;

    /* renamed from: c, reason: collision with root package name */
    public Object f39c;
    public Object d;

    /* renamed from: e, reason: collision with root package name */
    public Object f40e;

    public /* synthetic */ f(int i6, boolean z7) {
        this.f37a = i6;
    }

    public synchronized void a(q qVar, r rVar) {
        x2.a aVar = (x2.a) ((HashMap) this.f39c).put(qVar, new x2.a(qVar, rVar, (ReferenceQueue) this.d));
        if (aVar != null) {
            aVar.f10849c = null;
            aVar.clear();
        }
    }

    public void b(ArrayList arrayList) {
        if (arrayList == null) {
            throw new IllegalArgumentException("filters must not be null");
        }
        if (arrayList.isEmpty()) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            IntentFilter intentFilter = (IntentFilter) it.next();
            if (intentFilter != null) {
                ArrayList arrayList2 = (ArrayList) this.f39c;
                if (!arrayList2.contains(intentFilter)) {
                    arrayList2.add(intentFilter);
                }
            }
        }
    }

    public w c() {
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>((ArrayList) this.f39c);
        Bundle bundle = (Bundle) this.f38b;
        bundle.putParcelableArrayList("controlFilters", arrayList);
        bundle.putStringArrayList("groupMemberIds", new ArrayList<>((ArrayList) this.d));
        bundle.putStringArrayList("allowedPackages", new ArrayList<>((HashSet) this.f40e));
        return new w(bundle);
    }

    public void d(x2.a aVar) {
        x xVar;
        synchronized (this) {
            ((HashMap) this.f39c).remove(aVar.f10847a);
            if (aVar.f10848b && (xVar = aVar.f10849c) != null) {
                ((l) this.f40e).f(aVar.f10847a, new r(xVar, true, false, aVar.f10847a, (l) this.f40e));
            }
        }
    }

    public void e(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (hashSet.contains(obj)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(obj);
        ArrayList arrayList2 = (ArrayList) ((p.l) this.f39c).get(obj);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i6 = 0; i6 < size; i6++) {
                e(arrayList2.get(i6), arrayList, hashSet);
            }
        }
        hashSet.remove(obj);
        arrayList.add(obj);
    }

    public j.f f(j.a aVar) {
        ArrayList arrayList = (ArrayList) this.d;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            j.f fVar = (j.f) arrayList.get(i6);
            if (fVar != null && fVar.f7378b == aVar) {
                return fVar;
            }
        }
        j.f fVar2 = new j.f((Context) this.f40e, aVar);
        arrayList.add(fVar2);
        return fVar2;
    }

    public boolean g(j.a aVar, MenuItem menuItem) {
        return ((ActionMode.Callback) this.f38b).onActionItemClicked(f(aVar), new s((Context) this.f40e, (h0.a) menuItem));
    }

    @Override // v8.a
    public Object get() {
        return new j((Executor) ((v8.a) this.f38b).get(), (i4.d) ((v8.a) this.f39c).get(), (h4.d) ((a1.b) this.d).get(), (j4.c) ((v8.a) this.f40e).get());
    }

    public boolean h(j.a aVar, k.l lVar) {
        j.f fVarF = f(aVar);
        p.l lVar2 = (p.l) this.f39c;
        Menu b0Var = (Menu) lVar2.get(lVar);
        if (b0Var == null) {
            b0Var = new b0((Context) this.f40e, lVar);
            lVar2.put(lVar, b0Var);
        }
        return ((ActionMode.Callback) this.f38b).onCreateActionMode(fVarF, b0Var);
    }

    public String toString() {
        switch (this.f37a) {
            case 1:
                return "horizontal=" + ((k1) this.f39c) + "; vertical=" + ((k1) this.f38b);
            default:
                return super.toString();
        }
    }

    public f(v8.a aVar, v8.a aVar2, a1.b bVar, v8.a aVar3) {
        this.f37a = 4;
        this.f38b = aVar;
        this.f39c = aVar2;
        this.d = bVar;
        this.f40e = aVar3;
    }

    public f(int i6) {
        this.f37a = i6;
        switch (i6) {
            case 1:
                k1 k1Var = new k1();
                this.f38b = k1Var;
                k1 k1Var2 = new k1();
                this.f39c = k1Var2;
                this.d = k1Var2;
                this.f40e = k1Var;
                break;
            case 10:
                ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new c0(2));
                this.f39c = new HashMap();
                this.d = new ReferenceQueue();
                this.f38b = executorServiceNewSingleThreadExecutor;
                executorServiceNewSingleThreadExecutor.execute(new h(6, this));
                break;
            case 11:
                this.f38b = new p.e(0);
                this.f39c = new SparseArray();
                this.d = new i();
                this.f40e = new p.e(0);
                break;
            default:
                this.f38b = new m0.c(10);
                this.f39c = new p.l(0);
                this.d = new ArrayList();
                this.f40e = new HashSet();
                break;
        }
    }

    public f(Locale locale) {
        this.f37a = 5;
        this.f38b = locale;
        DateFormatSymbols dateFormatSymbols = DateFormatSymbols.getInstance(locale);
        n5.d.m(1, 12);
        this.f39c = n5.d.m(0, 23);
        this.d = n5.d.m(0, 59);
        this.f40e = dateFormatSymbols.getAmPmStrings();
    }

    public f(Typeface typeface, c1.b bVar) {
        int i6;
        int i10;
        this.f37a = 2;
        this.f40e = typeface;
        this.f38b = bVar;
        this.d = new b1.q(1024);
        int iA = bVar.a(6);
        if (iA != 0) {
            int i11 = iA + bVar.f3334a;
            i6 = ((ByteBuffer) bVar.d).getInt(((ByteBuffer) bVar.d).getInt(i11) + i11);
        } else {
            i6 = 0;
        }
        this.f39c = new char[i6 * 2];
        int iA2 = bVar.a(6);
        if (iA2 != 0) {
            int i12 = iA2 + bVar.f3334a;
            i10 = ((ByteBuffer) bVar.d).getInt(((ByteBuffer) bVar.d).getInt(i12) + i12);
        } else {
            i10 = 0;
        }
        for (int i13 = 0; i13 < i10; i13++) {
            m mVar = new m(this, i13);
            c1.a aVarC = mVar.c();
            int iA3 = aVarC.a(4);
            Character.toChars(iA3 != 0 ? ((ByteBuffer) aVarC.d).getInt(iA3 + aVarC.f3334a) : 0, (char[]) this.f39c, i13 * 2);
            a2.a.n("invalid metadata codepoint length", mVar.b() > 0);
            ((b1.q) this.d).a(mVar, 0, mVar.b() - 1);
        }
    }

    public f(Context context, ActionMode.Callback callback) {
        this.f37a = 6;
        this.f40e = context;
        this.f38b = callback;
        this.d = new ArrayList();
        this.f39c = new p.l(0);
    }

    public f(String str, String str2) {
        this.f37a = 7;
        this.d = new ArrayList();
        this.f39c = new ArrayList();
        this.f40e = new HashSet();
        Bundle bundle = new Bundle();
        this.f38b = bundle;
        if (str != null) {
            bundle.putString(TtmlNode.ATTR_ID, str);
            if (str2 != null) {
                bundle.putString(SerializableCookie.NAME, str2);
                return;
            }
            throw new NullPointerException("name must not be null");
        }
        throw new NullPointerException("id must not be null");
    }

    public f(w wVar) {
        this.f37a = 7;
        this.d = new ArrayList();
        this.f39c = new ArrayList();
        this.f40e = new HashSet();
        this.f38b = new Bundle(wVar.f9170a);
        this.d = wVar.d();
        this.f39c = wVar.b();
        this.f40e = wVar.a();
    }
}
