package t;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c0 {

    /* renamed from: a, reason: collision with root package name */
    public final MotionLayout f9909a;

    /* renamed from: b, reason: collision with root package name */
    public final c6.b f9910b;

    /* renamed from: c, reason: collision with root package name */
    public b0 f9911c;
    public final ArrayList d;

    /* renamed from: e, reason: collision with root package name */
    public final b0 f9912e;
    public final ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public final SparseArray f9913g;

    /* renamed from: h, reason: collision with root package name */
    public final HashMap f9914h;

    /* renamed from: i, reason: collision with root package name */
    public final SparseIntArray f9915i;

    /* renamed from: j, reason: collision with root package name */
    public int f9916j;

    /* renamed from: k, reason: collision with root package name */
    public int f9917k;

    /* renamed from: l, reason: collision with root package name */
    public MotionEvent f9918l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f9919m;

    /* renamed from: n, reason: collision with root package name */
    public u f9920n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f9921o;

    /* renamed from: p, reason: collision with root package name */
    public float f9922p;

    /* renamed from: q, reason: collision with root package name */
    public float f9923q;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public c0(android.content.Context r10, androidx.constraintlayout.motion.widget.MotionLayout r11, int r12) throws org.xmlpull.v1.XmlPullParserException, android.content.res.Resources.NotFoundException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 430
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: t.c0.<init>(android.content.Context, androidx.constraintlayout.motion.widget.MotionLayout, int):void");
    }

    public final boolean a(MotionLayout motionLayout, int i6) {
        if (this.f9920n != null) {
            return false;
        }
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            b0 b0Var = (b0) it.next();
            int i10 = b0Var.f9904n;
            if (i10 != 0) {
                int i11 = b0Var.d;
                x xVar = x.d;
                x xVar2 = x.f10039c;
                x xVar3 = x.f10038b;
                if (i6 == i11 && (i10 == 4 || i10 == 2)) {
                    motionLayout.setState(xVar);
                    motionLayout.setTransition(b0Var);
                    if (b0Var.f9904n == 4) {
                        motionLayout.o(1.0f);
                        motionLayout.setState(xVar3);
                        motionLayout.setState(xVar2);
                    } else {
                        motionLayout.setProgress(1.0f);
                        motionLayout.p(true);
                        motionLayout.setState(xVar3);
                        motionLayout.setState(xVar2);
                        motionLayout.setState(xVar);
                    }
                    return true;
                }
                if (i6 == b0Var.f9895c && (i10 == 3 || i10 == 1)) {
                    motionLayout.setState(xVar);
                    motionLayout.setTransition(b0Var);
                    if (b0Var.f9904n == 3) {
                        motionLayout.o(0.0f);
                        motionLayout.setState(xVar3);
                        motionLayout.setState(xVar2);
                    } else {
                        motionLayout.setProgress(0.0f);
                        motionLayout.p(true);
                        motionLayout.setState(xVar3);
                        motionLayout.setState(xVar2);
                        motionLayout.setState(xVar);
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public final androidx.constraintlayout.widget.d b(int i6) {
        int iC;
        c6.b bVar = this.f9910b;
        if (bVar != null && (iC = bVar.c(i6)) != -1) {
            i6 = iC;
        }
        SparseArray sparseArray = this.f9913g;
        if (sparseArray.get(i6) != null) {
            return (androidx.constraintlayout.widget.d) sparseArray.get(i6);
        }
        Log.e("MotionScene", "Warning could not find ConstraintSet id/" + a2.a.x(this.f9909a.getContext(), i6) + " In MotionScene");
        return (androidx.constraintlayout.widget.d) sparseArray.get(sparseArray.keyAt(0));
    }

    public final int c(Context context, String str) {
        int identifier;
        if (str.contains("/")) {
            identifier = context.getResources().getIdentifier(str.substring(str.indexOf(47) + 1), TtmlNode.ATTR_ID, context.getPackageName());
        } else {
            identifier = -1;
        }
        if (identifier != -1) {
            return identifier;
        }
        if (str.length() > 1) {
            return Integer.parseInt(str.substring(1));
        }
        Log.e("MotionScene", "error in parsing id");
        return identifier;
    }

    public final Interpolator d() {
        b0 b0Var = this.f9911c;
        int i6 = b0Var.f9896e;
        if (i6 == -2) {
            return AnimationUtils.loadInterpolator(this.f9909a.getContext(), this.f9911c.f9897g);
        }
        if (i6 == -1) {
            return new z(s.e.c(b0Var.f));
        }
        if (i6 == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (i6 == 1) {
            return new AccelerateInterpolator();
        }
        if (i6 == 2) {
            return new DecelerateInterpolator();
        }
        if (i6 == 4) {
            return new AnticipateInterpolator();
        }
        if (i6 != 5) {
            return null;
        }
        return new BounceInterpolator();
    }

    public final void e(o oVar) {
        b0 b0Var = this.f9911c;
        if (b0Var != null) {
            Iterator it = b0Var.f9901k.iterator();
            while (it.hasNext()) {
                ((j) it.next()).a(oVar);
            }
        } else {
            b0 b0Var2 = this.f9912e;
            if (b0Var2 != null) {
                Iterator it2 = b0Var2.f9901k.iterator();
                while (it2.hasNext()) {
                    ((j) it2.next()).a(oVar);
                }
            }
        }
    }

    public final float f() {
        o0 o0Var;
        b0 b0Var = this.f9911c;
        if (b0Var == null || (o0Var = b0Var.f9902l) == null) {
            return 0.0f;
        }
        return o0Var.f10005q;
    }

    public final int g() {
        b0 b0Var = this.f9911c;
        if (b0Var == null) {
            return -1;
        }
        return b0Var.d;
    }

    public final void h(Context context, XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        androidx.constraintlayout.widget.d dVar = new androidx.constraintlayout.widget.d();
        dVar.f1097b = false;
        int attributeCount = xmlResourceParser.getAttributeCount();
        int iC = -1;
        int iC2 = -1;
        for (int i6 = 0; i6 < attributeCount; i6++) {
            String attributeName = xmlResourceParser.getAttributeName(i6);
            String attributeValue = xmlResourceParser.getAttributeValue(i6);
            attributeName.getClass();
            if (attributeName.equals("deriveConstraintsFrom")) {
                iC2 = c(context, attributeValue);
            } else if (attributeName.equals(TtmlNode.ATTR_ID)) {
                iC = c(context, attributeValue);
                int iIndexOf = attributeValue.indexOf(47);
                if (iIndexOf >= 0) {
                    attributeValue = attributeValue.substring(iIndexOf + 1);
                }
                this.f9914h.put(attributeValue, Integer.valueOf(iC));
            }
        }
        if (iC != -1) {
            int i10 = this.f9909a.J;
            dVar.i(context, xmlResourceParser);
            if (iC2 != -1) {
                this.f9915i.put(iC, iC2);
            }
            this.f9913g.put(iC, dVar);
        }
    }

    public final void i(Context context, XmlResourceParser xmlResourceParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), y.j.f11218l);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i6 = 0; i6 < indexCount; i6++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i6);
            if (index == 0) {
                this.f9916j = typedArrayObtainStyledAttributes.getInt(index, this.f9916j);
            } else if (index == 1) {
                this.f9917k = typedArrayObtainStyledAttributes.getInteger(index, 0);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void j(int i6) {
        SparseIntArray sparseIntArray = this.f9915i;
        int i10 = sparseIntArray.get(i6);
        if (i10 > 0) {
            j(sparseIntArray.get(i6));
            SparseArray sparseArray = this.f9913g;
            androidx.constraintlayout.widget.d dVar = (androidx.constraintlayout.widget.d) sparseArray.get(i6);
            androidx.constraintlayout.widget.d dVar2 = (androidx.constraintlayout.widget.d) sparseArray.get(i10);
            if (dVar2 == null) {
                Log.e("MotionScene", "ERROR! invalid deriveConstraintsFrom: @id/" + a2.a.x(this.f9909a.getContext(), i10));
                return;
            }
            dVar.getClass();
            HashMap map = dVar2.f1098c;
            for (Integer num : map.keySet()) {
                num.getClass();
                androidx.constraintlayout.widget.c cVar = (androidx.constraintlayout.widget.c) map.get(num);
                HashMap map2 = dVar.f1098c;
                if (!map2.containsKey(num)) {
                    map2.put(num, new androidx.constraintlayout.widget.c());
                }
                androidx.constraintlayout.widget.c cVar2 = (androidx.constraintlayout.widget.c) map2.get(num);
                y.d dVar3 = cVar2.d;
                if (!dVar3.f11156b) {
                    dVar3.a(cVar.d);
                }
                y.f fVar = cVar2.f1092b;
                if (!fVar.f11193a) {
                    y.f fVar2 = cVar.f1092b;
                    fVar.f11193a = fVar2.f11193a;
                    fVar.f11194b = fVar2.f11194b;
                    fVar.d = fVar2.d;
                    fVar.f11196e = fVar2.f11196e;
                    fVar.f11195c = fVar2.f11195c;
                }
                y.g gVar = cVar2.f1094e;
                if (!gVar.f11198a) {
                    gVar.a(cVar.f1094e);
                }
                y.e eVar = cVar2.f1093c;
                if (!eVar.f11188a) {
                    eVar.a(cVar.f1093c);
                }
                for (String str : cVar.f.keySet()) {
                    if (!cVar2.f.containsKey(str)) {
                        cVar2.f.put(str, cVar.f.get(str));
                    }
                }
            }
            sparseIntArray.put(i6, -1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void k(int r9, int r10) {
        /*
            r8 = this;
            c6.b r0 = r8.f9910b
            r1 = -1
            if (r0 == 0) goto L18
            int r0 = r0.c(r9)
            if (r0 == r1) goto Lc
            goto Ld
        Lc:
            r0 = r9
        Ld:
            c6.b r2 = r8.f9910b
            int r2 = r2.c(r10)
            if (r2 == r1) goto L16
            goto L1a
        L16:
            r2 = r10
            goto L1a
        L18:
            r0 = r9
            goto L16
        L1a:
            java.util.ArrayList r3 = r8.d
            java.util.Iterator r4 = r3.iterator()
        L20:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L46
            java.lang.Object r5 = r4.next()
            t.b0 r5 = (t.b0) r5
            int r6 = r5.f9895c
            if (r6 != r2) goto L34
            int r7 = r5.d
            if (r7 == r0) goto L3a
        L34:
            if (r6 != r10) goto L20
            int r6 = r5.d
            if (r6 != r9) goto L20
        L3a:
            r8.f9911c = r5
            t.o0 r9 = r5.f9902l
            if (r9 == 0) goto L45
            boolean r10 = r8.f9921o
            r9.b(r10)
        L45:
            return
        L46:
            t.b0 r9 = r8.f9912e
            java.util.ArrayList r4 = r8.f
            java.util.Iterator r4 = r4.iterator()
        L4e:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L60
            java.lang.Object r5 = r4.next()
            t.b0 r5 = (t.b0) r5
            int r6 = r5.f9895c
            if (r6 != r10) goto L4e
            r9 = r5
            goto L4e
        L60:
            t.b0 r10 = new t.b0
            r10.<init>(r8, r9)
            r10.d = r0
            r10.f9895c = r2
            if (r0 == r1) goto L6e
            r3.add(r10)
        L6e:
            r8.f9911c = r10
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: t.c0.k(int, int):void");
    }

    public final boolean l() {
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            if (((b0) it.next()).f9902l != null) {
                return true;
            }
        }
        b0 b0Var = this.f9911c;
        return (b0Var == null || b0Var.f9902l == null) ? false : true;
    }
}
