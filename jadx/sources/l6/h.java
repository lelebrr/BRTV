package l6;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.app.j0;
import androidx.cardview.widget.CardView;
import b3.t;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.images.WebImage;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicReference;
import x2.a0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h implements s4.a, com.bumptech.glide.load.data.d, w5.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8015a;

    /* renamed from: b, reason: collision with root package name */
    public Object f8016b;

    /* renamed from: c, reason: collision with root package name */
    public Object f8017c;

    public /* synthetic */ h(Object obj, int i6, Object obj2) {
        this.f8015a = i6;
        this.f8017c = obj;
        this.f8016b = obj2;
    }

    public static String u(h hVar) {
        boolean z7 = false;
        StringBuilder sb = new StringBuilder("com.google.android.gms.cast.CATEGORY_CAST");
        String str = (String) hVar.f8016b;
        if (str != null) {
            String upperCase = str.toUpperCase(Locale.ROOT);
            if (!upperCase.matches("[A-F0-9]+")) {
                throw new IllegalArgumentException("Invalid application ID: ".concat(str));
            }
            sb.append("/");
            sb.append(upperCase);
        }
        List<String> list = (List) hVar.f8017c;
        if (list != null) {
            if (list.isEmpty()) {
                throw new IllegalArgumentException("Must specify at least one namespace");
            }
            boolean z10 = str != null;
            if (str == null) {
                sb.append("/");
            }
            sb.append("/");
            boolean z11 = true;
            for (String string : list) {
                v4.a.c(string);
                if (!z11) {
                    sb.append(",");
                }
                if (!v4.a.f10669a.matcher(string).matches()) {
                    StringBuilder sb2 = new StringBuilder(string.length());
                    for (int i6 = 0; i6 < string.length(); i6++) {
                        char cCharAt = string.charAt(i6);
                        if ((cCharAt < 'A' || cCharAt > 'Z') && ((cCharAt < 'a' || cCharAt > 'z') && !((cCharAt >= '0' && cCharAt <= '9') || cCharAt == '_' || cCharAt == '-' || cCharAt == '.' || cCharAt == ':'))) {
                            sb2.append(String.format("%%%04x", Integer.valueOf(cCharAt)));
                        } else {
                            sb2.append(cCharAt);
                        }
                    }
                    string = sb2.toString();
                }
                sb.append(string);
                z11 = false;
            }
            z7 = z10;
        } else if (str != null) {
            z7 = true;
        }
        if (true != z7 && list == null) {
            sb.append("/");
        }
        if (list == null) {
            sb.append("/");
        }
        sb.append("//ALLOW_IPV6");
        return sb.toString();
    }

    public String a(v2.e eVar) {
        String str;
        z2.g gVar = (z2.g) ((s.g) this.f8017c).f();
        try {
            eVar.a(gVar.f11522a);
            byte[] bArrDigest = gVar.f11522a.digest();
            char[] cArr = r3.n.f9511b;
            synchronized (cArr) {
                for (int i6 = 0; i6 < bArrDigest.length; i6++) {
                    byte b8 = bArrDigest[i6];
                    int i10 = i6 * 2;
                    char[] cArr2 = r3.n.f9510a;
                    cArr[i10] = cArr2[(b8 & 255) >>> 4];
                    cArr[i10 + 1] = cArr2[b8 & 15];
                }
                str = new String(cArr);
            }
            return str;
        } finally {
            ((s.g) this.f8017c).k(gVar);
        }
    }

    public sa.e b() {
        String strS = a2.a.s("Aaj+cs1OKjwDr+t8zF8H\n", "bcmHHbg6dVU=\n");
        Context context = (Context) this.f8016b;
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService(strS);
        sa.e eVar = new sa.e(context, R.style.Dialog);
        View viewInflate = layoutInflater.inflate(R.layout.dialog_pwd_layout, (ViewGroup) null);
        eVar.addContentView(viewInflate, new ViewGroup.LayoutParams(-1, -2));
        EditText editText = (EditText) viewInflate.findViewById(R.id.old_password);
        TextView textView = (TextView) viewInflate.findViewById(R.id.error);
        editText.setFocusable(true);
        editText.setOnLongClickListener(new sa.i(this, editText));
        Button button = (Button) viewInflate.findViewById(R.id.positiveButton);
        if (((DialogInterface.OnClickListener) this.f8017c) != null) {
            button.setOnClickListener(new j0(this, editText, textView, eVar));
        }
        ((Button) viewInflate.findViewById(R.id.negativeButton)).setOnClickListener(new androidx.appcompat.app.a(19, eVar));
        eVar.setContentView(viewInflate);
        editText.requestFocus();
        eVar.getWindow().setSoftInputMode(4);
        return eVar;
    }

    @Override // com.bumptech.glide.load.data.d
    public void c(Exception exc) {
        a0 a0Var = (a0) this.f8017c;
        t tVar = (t) this.f8016b;
        t tVar2 = a0Var.f;
        if (tVar2 == null || tVar2 != tVar) {
            return;
        }
        a0 a0Var2 = (a0) this.f8017c;
        t tVar3 = (t) this.f8016b;
        x2.i iVar = a0Var2.f10851b;
        x2.d dVar = a0Var2.f10854g;
        com.bumptech.glide.load.data.e eVar = tVar3.f3220c;
        iVar.a(dVar, exc, eVar, eVar.e());
    }

    @Override // com.bumptech.glide.load.data.d
    public void d(Object obj) {
        a0 a0Var = (a0) this.f8017c;
        t tVar = (t) this.f8016b;
        t tVar2 = a0Var.f;
        if (tVar2 == null || tVar2 != tVar) {
            return;
        }
        a0 a0Var2 = (a0) this.f8017c;
        t tVar3 = (t) this.f8016b;
        x2.k kVar = a0Var2.f10850a.f10877p;
        if (obj != null && kVar.a(tVar3.f3220c.e())) {
            a0Var2.f10853e = obj;
            a0Var2.f10851b.o(2);
        } else {
            x2.i iVar = a0Var2.f10851b;
            v2.e eVar = tVar3.f3218a;
            com.bumptech.glide.load.data.e eVar2 = tVar3.f3220c;
            iVar.c(eVar, obj, eVar2, eVar2.e(), a0Var2.f10854g);
        }
    }

    @Override // w5.a
    public void e(w5.g gVar) {
        ((Map) ((h) this.f8017c).f8017c).remove((w5.d) this.f8016b);
    }

    @Override // s4.a
    public void f(Bitmap bitmap) {
        h hVar = (h) this.f8016b;
        hVar.f8017c = bitmap;
        s4.g gVar = (s4.g) this.f8017c;
        gVar.f9784l = hVar;
        gVar.b();
    }

    public synchronized void g(ua.i iVar) {
        try {
            ua.i iVar2 = (ua.i) this.f8017c;
            if (iVar2 != null) {
                iVar2.f10494c = iVar;
                this.f8017c = iVar;
            } else {
                if (((ua.i) this.f8016b) != null) {
                    throw new IllegalStateException("Head present, but no tail");
                }
                this.f8017c = iVar;
                this.f8016b = iVar;
            }
            notifyAll();
        } catch (Throwable th) {
            throw th;
        }
    }

    public Object h(y2.h hVar) {
        HashMap map = (HashMap) this.f8017c;
        y2.c cVar = (y2.c) map.get(hVar);
        if (cVar == null) {
            cVar = new y2.c(hVar);
            map.put(hVar, cVar);
        } else {
            hVar.a();
        }
        y2.c cVar2 = cVar.d;
        cVar2.f11349c = cVar.f11349c;
        cVar.f11349c.d = cVar2;
        y2.c cVar3 = (y2.c) this.f8016b;
        cVar.d = cVar3;
        y2.c cVar4 = cVar3.f11349c;
        cVar.f11349c = cVar4;
        cVar4.d = cVar;
        cVar.d.f11349c = cVar;
        ArrayList arrayList = cVar.f11348b;
        int size = arrayList != null ? arrayList.size() : 0;
        if (size > 0) {
            return cVar.f11348b.remove(size - 1);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public n7.m i(s7.a r6) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        /*
            Method dump skipped, instructions count: 265
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: l6.h.i(s7.a):n7.m");
    }

    public synchronized List j(String str) {
        List arrayList;
        if (!((ArrayList) this.f8016b).contains(str)) {
            ((ArrayList) this.f8016b).add(str);
        }
        arrayList = (List) ((HashMap) this.f8017c).get(str);
        if (arrayList == null) {
            arrayList = new ArrayList();
            ((HashMap) this.f8017c).put(str, arrayList);
        }
        return arrayList;
    }

    public synchronized ArrayList k(Class cls, Class cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = ((ArrayList) this.f8016b).iterator();
        while (it.hasNext()) {
            List<m3.c> list = (List) ((HashMap) this.f8017c).get((String) it.next());
            if (list != null) {
                for (m3.c cVar : list) {
                    if ((cVar.f8266a.isAssignableFrom(cls) && cls2.isAssignableFrom(cVar.f8267b)) && !arrayList.contains(cVar.f8267b)) {
                        arrayList.add(cVar.f8267b);
                    }
                }
            }
        }
        return arrayList;
    }

    public String l(v2.e eVar) {
        String strA;
        synchronized (((r3.j) this.f8016b)) {
            strA = (String) ((r3.j) this.f8016b).a(eVar);
        }
        if (strA == null) {
            strA = a(eVar);
        }
        synchronized (((r3.j) this.f8016b)) {
            ((r3.j) this.f8016b).d(eVar, strA);
        }
        return strA;
    }

    public synchronized ua.i m() {
        ua.i iVar;
        iVar = (ua.i) this.f8016b;
        if (iVar != null) {
            ua.i iVar2 = iVar.f10494c;
            this.f8016b = iVar2;
            if (iVar2 == null) {
                this.f8017c = null;
            }
        }
        return iVar;
    }

    public synchronized ua.i n() {
        try {
            if (((ua.i) this.f8016b) == null) {
                wait(1000);
            }
        } catch (Throwable th) {
            throw th;
        }
        return m();
    }

    public void o(Class cls, Class cls2, Class cls3, List list) {
        synchronized (((p.e) this.f8017c)) {
            ((p.e) this.f8017c).put(new r3.l(cls, cls2, cls3), list);
        }
    }

    public void p(y2.h hVar, Object obj) {
        HashMap map = (HashMap) this.f8017c;
        y2.c cVar = (y2.c) map.get(hVar);
        if (cVar == null) {
            cVar = new y2.c(hVar);
            cVar.d = cVar;
            y2.c cVar2 = (y2.c) this.f8016b;
            cVar.d = cVar2.d;
            cVar.f11349c = cVar2;
            cVar2.d = cVar;
            cVar.d.f11349c = cVar;
            map.put(hVar, cVar);
        } else {
            hVar.a();
        }
        if (cVar.f11348b == null) {
            cVar.f11348b = new ArrayList();
        }
        cVar.f11348b.add(obj);
    }

    public void q(String str) {
        z2.b bVar;
        synchronized (this) {
            try {
                Object obj = ((HashMap) this.f8016b).get(str);
                r3.f.c(obj, "Argument must not be null");
                bVar = (z2.b) obj;
                int i6 = bVar.f11511b;
                if (i6 < 1) {
                    throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + bVar.f11511b);
                }
                int i10 = i6 - 1;
                bVar.f11511b = i10;
                if (i10 == 0) {
                    z2.b bVar2 = (z2.b) ((HashMap) this.f8016b).remove(str);
                    if (!bVar2.equals(bVar)) {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + bVar + ", but actually removed: " + bVar2 + ", safeKey: " + str);
                    }
                    ((i3.a) this.f8017c).b(bVar2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        bVar.f11510a.unlock();
    }

    public Object r() {
        y2.c cVar = (y2.c) this.f8016b;
        y2.c cVar2 = cVar.d;
        while (true) {
            if (cVar2.equals(cVar)) {
                return null;
            }
            ArrayList arrayList = cVar2.f11348b;
            int size = arrayList != null ? arrayList.size() : 0;
            Object objRemove = size > 0 ? cVar2.f11348b.remove(size - 1) : null;
            if (objRemove != null) {
                return objRemove;
            }
            y2.c cVar3 = cVar2.d;
            cVar3.f11349c = cVar2.f11349c;
            cVar2.f11349c.d = cVar3;
            HashMap map = (HashMap) this.f8017c;
            y2.h hVar = cVar2.f11347a;
            map.remove(hVar);
            hVar.a();
            cVar2 = cVar2.d;
        }
    }

    public void s(int i6, int i10, int i11, int i12) {
        CardView cardView = (CardView) this.f8017c;
        cardView.d.set(i6, i10, i11, i12);
        Rect rect = cardView.f920c;
        super/*android.widget.FrameLayout*/.setPadding(i6 + rect.left, i10 + rect.top, i11 + rect.right, i12 + rect.bottom);
    }

    public void t(boolean z7, Status status) {
        HashMap map;
        HashMap map2;
        synchronized (((Map) this.f8016b)) {
            map = new HashMap((Map) this.f8016b);
        }
        synchronized (((Map) this.f8017c)) {
            map2 = new HashMap((Map) this.f8017c);
        }
        for (Map.Entry entry : map.entrySet()) {
            if (z7 || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).d0(status);
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            if (z7 || ((Boolean) entry2.getValue()).booleanValue()) {
                ((w5.d) entry2.getKey()).c(new y4.e(status));
            }
        }
    }

    public String toString() {
        switch (this.f8015a) {
            case 4:
                return ((Map) this.f8016b).toString();
            case 12:
                StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
                y2.c cVar = (y2.c) this.f8016b;
                y2.c cVar2 = cVar.f11349c;
                boolean z7 = false;
                while (!cVar2.equals(cVar)) {
                    sb.append('{');
                    sb.append(cVar2.f11347a);
                    sb.append(':');
                    ArrayList arrayList = cVar2.f11348b;
                    sb.append(arrayList != null ? arrayList.size() : 0);
                    sb.append("}, ");
                    cVar2 = cVar2.f11349c;
                    z7 = true;
                }
                if (z7) {
                    sb.delete(sb.length() - 2, sb.length());
                }
                sb.append(" )");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ h(String str, List list) {
        this.f8015a = 6;
        this.f8016b = str;
        this.f8017c = list;
    }

    public h(WebImage webImage) {
        this.f8015a = 8;
        this.f8016b = webImage == null ? null : webImage.f3951b;
    }

    public h(String str, l5.a aVar, y4.d dVar) {
        this.f8015a = 13;
        this.f8017c = str;
        this.f8016b = aVar;
    }

    public h(int i6) {
        this.f8015a = i6;
        switch (i6) {
            case 2:
                this.f8016b = new ArrayList();
                this.f8017c = new HashMap();
                break;
            case 10:
                break;
            case 12:
                this.f8016b = new y2.c(null);
                this.f8017c = new HashMap();
                break;
            case 14:
                this.f8016b = new HashMap();
                this.f8017c = new i3.a(1);
                break;
            case 15:
                this.f8016b = new r3.j(1000L);
                this.f8017c = s3.c.a(10, new q.b(12));
                break;
            case 17:
                this.f8016b = Collections.synchronizedMap(new WeakHashMap());
                this.f8017c = Collections.synchronizedMap(new WeakHashMap());
                break;
            default:
                this.f8016b = new AtomicReference();
                this.f8017c = new p.e(0);
                break;
        }
    }

    public h(Context context) {
        this.f8015a = 9;
        this.f8016b = context;
    }

    public h(Map map) {
        this.f8015a = 4;
        this.f8017c = q7.b.f9314a;
        this.f8016b = map;
    }

    public h(Runnable runnable) {
        this.f8015a = 3;
        this.f8017c = new CopyOnWriteArrayList();
        new HashMap();
        this.f8016b = runnable;
    }

    public h(CardView cardView) {
        this.f8015a = 5;
        this.f8017c = cardView;
    }
}
