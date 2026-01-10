package c6;

import android.graphics.Bitmap;
import android.util.SparseArray;
import android.view.View;
import coil.memory.MemoryCache$Key;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import e3.a0;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import k0.g;
import k2.e;
import o0.s;
import v2.h;
import x2.x;
import x8.j;
import y.k;
import y.l;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements s, j3.a {

    /* renamed from: a, reason: collision with root package name */
    public int f3390a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f3391b;

    public /* synthetic */ b(int i6, Object obj) {
        this.f3391b = obj;
        this.f3390a = i6;
    }

    public void a() {
        WeakReference weakReference;
        this.f3390a = 0;
        Iterator it = ((LinkedHashMap) this.f3391b).values().iterator();
        while (it.hasNext()) {
            ArrayList arrayList = (ArrayList) it.next();
            if (arrayList.size() <= 1) {
                e eVar = (e) j.V(arrayList);
                if (((eVar == null || (weakReference = eVar.f7706b) == null) ? null : (Bitmap) weakReference.get()) == null) {
                    it.remove();
                }
            } else {
                int size = arrayList.size();
                int i6 = 0;
                for (int i10 = 0; i10 < size; i10++) {
                    int i11 = i10 - i6;
                    if (((e) arrayList.get(i11)).f7706b.get() == null) {
                        arrayList.remove(i11);
                        i6++;
                    }
                }
                if (arrayList.isEmpty()) {
                    it.remove();
                }
            }
        }
    }

    public synchronized void b(MemoryCache$Key memoryCache$Key, Bitmap bitmap, Map map, int i6) {
        try {
            LinkedHashMap linkedHashMap = (LinkedHashMap) this.f3391b;
            Object arrayList = linkedHashMap.get(memoryCache$Key);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(memoryCache$Key, arrayList);
            }
            ArrayList arrayList2 = (ArrayList) arrayList;
            int iIdentityHashCode = System.identityHashCode(bitmap);
            e eVar = new e(iIdentityHashCode, new WeakReference(bitmap), map, i6);
            int size = arrayList2.size();
            int i10 = 0;
            while (true) {
                if (i10 >= size) {
                    arrayList2.add(eVar);
                    break;
                }
                e eVar2 = (e) arrayList2.get(i10);
                if (i6 < eVar2.d) {
                    i10++;
                } else if (eVar2.f7705a == iIdentityHashCode && eVar2.f7706b.get() == bitmap) {
                    arrayList2.set(i10, eVar);
                } else {
                    arrayList2.add(i10, eVar);
                }
            }
            int i11 = this.f3390a;
            this.f3390a = i11 + 1;
            if (i11 >= 10) {
                a();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public int c(int i6) {
        int i10;
        float f = -1;
        SparseArray sparseArray = (SparseArray) this.f3391b;
        int i11 = 0;
        if (-1 == i6) {
            k kVar = i6 == -1 ? (k) sparseArray.valueAt(0) : (k) sparseArray.get(-1);
            if (kVar == null) {
                return -1;
            }
            while (true) {
                ArrayList arrayList = kVar.f11229b;
                if (i11 >= arrayList.size()) {
                    i11 = -1;
                    break;
                }
                if (((l) arrayList.get(i11)).a(f, f)) {
                    break;
                }
                i11++;
            }
            if (-1 == i11) {
                return -1;
            }
            i10 = i11 == -1 ? kVar.f11230c : ((l) kVar.f11229b.get(i11)).f11234e;
        } else {
            k kVar2 = (k) sparseArray.get(i6);
            if (kVar2 == null) {
                return -1;
            }
            while (true) {
                ArrayList arrayList2 = kVar2.f11229b;
                if (i11 >= arrayList2.size()) {
                    i11 = -1;
                    break;
                }
                if (((l) arrayList2.get(i11)).a(f, f)) {
                    break;
                }
                i11++;
            }
            i10 = i11 == -1 ? kVar2.f11230c : ((l) kVar2.f11229b.get(i11)).f11234e;
        }
        return i10;
    }

    public synchronized void d(int i6) {
        if (i6 >= 10 && i6 != 20) {
            a();
        }
    }

    @Override // j3.a
    public x e(x xVar, h hVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ((Bitmap) xVar.get()).compress((Bitmap.CompressFormat) this.f3391b, this.f3390a, byteArrayOutputStream);
        xVar.d();
        return new a0(byteArrayOutputStream.toByteArray());
    }

    @Override // o0.s
    public boolean perform(View view, o0.k kVar) {
        ((BottomSheetBehavior) this.f3391b).A(this.f3390a);
        return true;
    }

    public b(ConnectionResult connectionResult, int i6) {
        b5.l.e(connectionResult);
        this.f3391b = connectionResult;
        this.f3390a = i6;
    }

    public b(int i6) {
        switch (i6) {
            case 3:
                this.f3391b = new LinkedHashMap();
                break;
            default:
                this.f3391b = Bitmap.CompressFormat.JPEG;
                this.f3390a = 100;
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public b(android.content.Context r10, android.content.res.XmlResourceParser r11) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r9 = this;
            r9.<init>()
            r0 = -1
            r9.f3390a = r0
            android.util.SparseArray r1 = new android.util.SparseArray
            r1.<init>()
            r9.f3391b = r1
            android.util.SparseArray r1 = new android.util.SparseArray
            r1.<init>()
            android.util.AttributeSet r1 = android.util.Xml.asAttributeSet(r11)
            int[] r2 = y.j.f11224r
            android.content.res.TypedArray r1 = r10.obtainStyledAttributes(r1, r2)
            int r2 = r1.getIndexCount()
            r3 = 0
            r4 = 0
        L22:
            if (r4 >= r2) goto L35
            int r5 = r1.getIndex(r4)
            if (r5 != 0) goto L32
            int r6 = r9.f3390a
            int r5 = r1.getResourceId(r5, r6)
            r9.f3390a = r5
        L32:
            int r4 = r4 + 1
            goto L22
        L35:
            int r1 = r11.getEventType()     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            r2 = 0
        L3a:
            r4 = 1
            if (r1 == r4) goto Ld9
            if (r1 == 0) goto Lc9
            java.lang.String r5 = "StateSet"
            r6 = 3
            r7 = 2
            if (r1 == r7) goto L5b
            if (r1 == r6) goto L49
            goto Lcc
        L49:
            java.lang.String r1 = r11.getName()     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            boolean r1 = r5.equals(r1)     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            if (r1 == 0) goto Lcc
            goto Ld9
        L55:
            r10 = move-exception
            goto Ld2
        L58:
            r10 = move-exception
            goto Ld6
        L5b:
            java.lang.String r1 = r11.getName()     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            int r8 = r1.hashCode()     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            switch(r8) {
                case 80204913: goto L83;
                case 1301459538: goto L79;
                case 1382829617: goto L71;
                case 1901439077: goto L67;
                default: goto L66;
            }     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
        L66:
            goto L8d
        L67:
            java.lang.String r5 = "Variant"
            boolean r5 = r1.equals(r5)     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            if (r5 == 0) goto L8d
            r5 = 3
            goto L8e
        L71:
            boolean r5 = r1.equals(r5)     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            if (r5 == 0) goto L8d
            r5 = 1
            goto L8e
        L79:
            java.lang.String r5 = "LayoutDescription"
            boolean r5 = r1.equals(r5)     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            if (r5 == 0) goto L8d
            r5 = 0
            goto L8e
        L83:
            java.lang.String r5 = "State"
            boolean r5 = r1.equals(r5)     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            if (r5 == 0) goto L8d
            r5 = 2
            goto L8e
        L8d:
            r5 = -1
        L8e:
            if (r5 == 0) goto Lcc
            if (r5 == r4) goto Lcc
            if (r5 == r7) goto Lba
            if (r5 == r6) goto Lad
            java.lang.String r4 = "ConstraintLayoutStates"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            r5.<init>()     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            java.lang.String r6 = "unknown tag "
            r5.append(r6)     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            r5.append(r1)     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            java.lang.String r1 = r5.toString()     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            android.util.Log.v(r4, r1)     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            goto Lcc
        Lad:
            y.l r1 = new y.l     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            r1.<init>(r10, r11)     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            if (r2 == 0) goto Lcc
            java.util.ArrayList r4 = r2.f11229b     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            r4.add(r1)     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            goto Lcc
        Lba:
            y.k r2 = new y.k     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            r2.<init>(r10, r11)     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            java.lang.Object r1 = r9.f3391b     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            android.util.SparseArray r1 = (android.util.SparseArray) r1     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            int r4 = r2.f11228a     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            r1.put(r4, r2)     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            goto Lcc
        Lc9:
            r11.getName()     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
        Lcc:
            int r1 = r11.next()     // Catch: java.io.IOException -> L55 org.xmlpull.v1.XmlPullParserException -> L58
            goto L3a
        Ld2:
            r10.printStackTrace()
            goto Ld9
        Ld6:
            r10.printStackTrace()
        Ld9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c6.b.<init>(android.content.Context, android.content.res.XmlResourceParser):void");
    }

    public b(int i6, g[] gVarArr) {
        this.f3390a = i6;
        this.f3391b = gVarArr;
    }
}
