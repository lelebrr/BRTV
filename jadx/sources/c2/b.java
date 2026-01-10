package c2;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.internal.cast.f0;
import com.google.android.gms.internal.cast.m1;
import com.google.android.gms.internal.cast.u4;
import com.google.android.gms.internal.cast.x7;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import org.bitspark.android.utils.o;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements d4.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3339a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f3340b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f3341c;
    public Object d;

    /* renamed from: e, reason: collision with root package name */
    public Object f3342e;
    public Object f;

    public b(m1 m1Var, com.google.android.gms.internal.cast.h hVar, String str) {
        this.f3339a = 1;
        this.f3340b = m1Var;
        this.f3341c = hVar;
        this.d = str;
        this.f = new u4(this);
    }

    public static void k(b bVar, f0 f0Var) {
        int i6 = f0Var.f4154e;
        if (i6 == 2 && ((x7) bVar.f3342e) != null) {
            bVar.m();
        }
        if (i6 == 2) {
            bVar.f3342e = new x7((m1) bVar.f3340b, (String) bVar.d);
        } else {
            bVar.f3342e = bVar.l();
        }
        x7 x7Var = (x7) bVar.f3342e;
        b5.l.e(x7Var);
        f0Var.d = x7Var.f4475h;
        x7Var.f4471b.add(f0Var);
    }

    public void a(g2.f fVar, Class cls) {
        ((ArrayList) this.f3342e).add(new w8.f(fVar, cls));
    }

    public void b(j2.a aVar, Class cls) {
        ((ArrayList) this.f3341c).add(new w8.f(aVar, cls));
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [android.view.ViewGroup, f6.e] */
    public void c(Canvas canvas) {
        f6.d dVar = (f6.d) this.f3342e;
        boolean z7 = dVar == null || dVar.f6793c == Float.MAX_VALUE;
        Paint paint = (Paint) this.d;
        ?? r12 = (ViewGroup) this.f3340b;
        View view = (View) this.f3341c;
        if (z7) {
            r12.d(canvas);
            if (Color.alpha(paint.getColor()) != 0) {
                canvas.drawRect(0.0f, 0.0f, view.getWidth(), view.getHeight(), paint);
            }
        } else {
            r12.d(canvas);
            if (Color.alpha(paint.getColor()) != 0) {
                canvas.drawRect(0.0f, 0.0f, view.getWidth(), view.getHeight(), paint);
            }
        }
        Drawable drawable = (Drawable) this.f;
        if (drawable == null || ((f6.d) this.f3342e) == null) {
            return;
        }
        Rect bounds = drawable.getBounds();
        float fWidth = ((f6.d) this.f3342e).f6791a - (bounds.width() / 2.0f);
        float fHeight = ((f6.d) this.f3342e).f6792b - (bounds.height() / 2.0f);
        canvas.translate(fWidth, fHeight);
        ((Drawable) this.f).draw(canvas);
        canvas.translate(-fWidth, -fHeight);
    }

    public f6.d d() {
        f6.d dVar = (f6.d) this.f3342e;
        if (dVar == null) {
            return null;
        }
        f6.d dVar2 = new f6.d(dVar);
        if (dVar2.f6793c == Float.MAX_VALUE) {
            float f = dVar2.f6791a;
            float f3 = dVar2.f6792b;
            View view = (View) this.f3341c;
            dVar2.f6793c = u7.d.g(f, f3, view.getWidth(), view.getHeight());
        }
        return dVar2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.view.ViewGroup, f6.e] */
    public boolean e() {
        if (!((ViewGroup) this.f3340b).h()) {
            return false;
        }
        f6.d dVar = (f6.d) this.f3342e;
        return dVar == null || (dVar.f6793c > Float.MAX_VALUE ? 1 : (dVar.f6793c == Float.MAX_VALUE ? 0 : -1)) == 0;
    }

    public void f(Drawable drawable) {
        this.f = drawable;
        ((View) this.f3341c).invalidate();
    }

    public void g(int i6) {
        ((Paint) this.d).setColor(i6);
        ((View) this.f3341c).invalidate();
    }

    @Override // v8.a
    public Object get() {
        return new g4.a((Executor) ((v8.a) this.f3340b).get(), (b4.f) ((v8.a) this.f3341c).get(), (h4.d) ((a1.b) this.d).get(), (i4.d) ((v8.a) this.f3342e).get(), (j4.c) ((v8.a) this.f).get());
    }

    public void h(f6.d dVar) {
        View view = (View) this.f3341c;
        if (dVar == null) {
            this.f3342e = null;
        } else {
            f6.d dVar2 = (f6.d) this.f3342e;
            if (dVar2 == null) {
                this.f3342e = new f6.d(dVar);
            } else {
                float f = dVar.f6791a;
                float f3 = dVar.f6792b;
                float f4 = dVar.f6793c;
                dVar2.f6791a = f;
                dVar2.f6792b = f3;
                dVar2.f6793c = f4;
            }
            if (dVar.f6793c + 1.0E-4f >= u7.d.g(dVar.f6791a, dVar.f6792b, view.getWidth(), view.getHeight())) {
                ((f6.d) this.f3342e).f6793c = Float.MAX_VALUE;
            }
        }
        view.invalidate();
    }

    public void i(Uri uri) {
        int i6;
        if (uri == null) {
            j();
            return;
        }
        if (uri.equals((Uri) this.d)) {
            return;
        }
        j();
        this.d = uri;
        ImageHints imageHints = (ImageHints) this.f3341c;
        int i10 = imageHints.f3820b;
        Context context = (Context) this.f3340b;
        if (i10 == 0 || (i6 = imageHints.f3821c) == 0) {
            this.f3342e = new s4.b(context, 0, 0, this);
        } else {
            this.f3342e = new s4.b(context, i10, i6, this);
        }
        s4.b bVar = (s4.b) this.f3342e;
        b5.l.e(bVar);
        Uri uri2 = (Uri) this.d;
        b5.l.e(uri2);
        bVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, uri2);
    }

    public void j() {
        s4.b bVar = (s4.b) this.f3342e;
        if (bVar != null) {
            bVar.cancel(true);
            this.f3342e = null;
        }
        this.d = null;
    }

    public x7 l() {
        if (((x7) this.f3342e) == null) {
            x7 x7Var = new x7((m1) this.f3340b, (String) this.d);
            this.f3342e = x7Var;
            x7Var.b(1);
        }
        return (x7) this.f3342e;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0380  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void m() {
        /*
            Method dump skipped, instructions count: 1434
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: c2.b.m():void");
    }

    public String toString() {
        switch (this.f3339a) {
            case 4:
                StringBuilder sb = new StringBuilder();
                sb.append("FontRequest {mProviderAuthority: " + ((String) this.f3340b) + ", mProviderPackage: " + ((String) this.f3341c) + ", mQuery: " + ((String) this.d) + ", mCertificates:");
                int i6 = 0;
                while (true) {
                    List list = (List) this.f3342e;
                    if (i6 >= list.size()) {
                        sb.append("}mCertificatesArray: 0");
                        return sb.toString();
                    }
                    sb.append(" [");
                    List list2 = (List) list.get(i6);
                    for (int i10 = 0; i10 < list2.size(); i10++) {
                        sb.append(" \"");
                        sb.append(Base64.encodeToString((byte[]) list2.get(i10), 0));
                        sb.append("\"");
                    }
                    sb.append(" ]");
                    i6++;
                }
            default:
                return super.toString();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(Context context) {
        this(context, new ImageHints(-1, 0, 0));
        this.f3339a = 6;
    }

    public b(Context context, ImageHints imageHints) {
        this.f3339a = 6;
        this.f3340b = context;
        this.f3341c = imageHints;
        j();
    }

    public b(v8.a aVar, v8.a aVar2, a1.b bVar, v8.a aVar3, v8.a aVar4) {
        this.f3339a = 3;
        this.f3340b = aVar;
        this.f3341c = aVar2;
        this.d = bVar;
        this.f3342e = aVar3;
        this.f = aVar4;
    }

    public b(String str, String str2, String str3, List list) {
        this.f3339a = 4;
        str.getClass();
        this.f3340b = str;
        str2.getClass();
        this.f3341c = str2;
        this.d = str3;
        list.getClass();
        this.f3342e = list;
        this.f = str + "-" + str2 + "-" + str3;
    }

    public b(c cVar) {
        this.f3339a = 0;
        this.f3340b = x8.j.d0(cVar.f3343a);
        this.f3341c = x8.j.d0(cVar.f3344b);
        this.d = x8.j.d0(cVar.f3345c);
        this.f3342e = x8.j.d0(cVar.d);
        this.f = x8.j.d0(cVar.f3346e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(f6.e eVar) {
        this.f3339a = 2;
        this.f3340b = (ViewGroup) eVar;
        View view = (View) eVar;
        this.f3341c = view;
        view.setWillNotDraw(false);
        new Path();
        new Paint(7);
        Paint paint = new Paint(1);
        this.d = paint;
        paint.setColor(0);
    }

    public b(o oVar, ka.b bVar, View view, View view2, View view3) {
        this.f3339a = 5;
        this.f = oVar;
        this.f3340b = bVar;
        this.f3341c = view;
        this.d = view2;
        this.f3342e = view3;
    }
}
