package t;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.SparseArray;
import android.util.Xml;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f9893a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f9894b;

    /* renamed from: c, reason: collision with root package name */
    public int f9895c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public final int f9896e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final int f9897g;

    /* renamed from: h, reason: collision with root package name */
    public int f9898h;

    /* renamed from: i, reason: collision with root package name */
    public final float f9899i;

    /* renamed from: j, reason: collision with root package name */
    public final c0 f9900j;

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f9901k;

    /* renamed from: l, reason: collision with root package name */
    public o0 f9902l;

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f9903m;

    /* renamed from: n, reason: collision with root package name */
    public final int f9904n;

    /* renamed from: o, reason: collision with root package name */
    public final boolean f9905o;

    /* renamed from: p, reason: collision with root package name */
    public final int f9906p;

    /* renamed from: q, reason: collision with root package name */
    public final int f9907q;

    /* renamed from: r, reason: collision with root package name */
    public final int f9908r;

    public b0(c0 c0Var, b0 b0Var) {
        this.f9893a = -1;
        this.f9894b = false;
        this.f9895c = -1;
        this.d = -1;
        this.f9896e = 0;
        this.f = null;
        this.f9897g = -1;
        this.f9898h = 400;
        this.f9899i = 0.0f;
        this.f9901k = new ArrayList();
        this.f9902l = null;
        this.f9903m = new ArrayList();
        this.f9904n = 0;
        this.f9905o = false;
        this.f9906p = -1;
        this.f9907q = 0;
        this.f9908r = 0;
        this.f9900j = c0Var;
        if (b0Var != null) {
            this.f9906p = b0Var.f9906p;
            this.f9896e = b0Var.f9896e;
            this.f = b0Var.f;
            this.f9897g = b0Var.f9897g;
            this.f9898h = b0Var.f9898h;
            this.f9901k = b0Var.f9901k;
            this.f9899i = b0Var.f9899i;
            this.f9907q = b0Var.f9907q;
        }
    }

    public b0(c0 c0Var, Context context, XmlResourceParser xmlResourceParser) {
        this.f9893a = -1;
        this.f9894b = false;
        this.f9895c = -1;
        this.d = -1;
        this.f9896e = 0;
        this.f = null;
        this.f9897g = -1;
        this.f9898h = 400;
        this.f9899i = 0.0f;
        this.f9901k = new ArrayList();
        this.f9902l = null;
        this.f9903m = new ArrayList();
        this.f9904n = 0;
        this.f9905o = false;
        this.f9906p = -1;
        this.f9907q = 0;
        this.f9908r = 0;
        this.f9898h = c0Var.f9916j;
        this.f9907q = c0Var.f9917k;
        this.f9900j = c0Var;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), y.j.f11226t);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i6 = 0; i6 < indexCount; i6++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i6);
            SparseArray sparseArray = c0Var.f9913g;
            if (index == 2) {
                this.f9895c = typedArrayObtainStyledAttributes.getResourceId(index, this.f9895c);
                if (TtmlNode.TAG_LAYOUT.equals(context.getResources().getResourceTypeName(this.f9895c))) {
                    androidx.constraintlayout.widget.d dVar = new androidx.constraintlayout.widget.d();
                    dVar.h(context, this.f9895c);
                    sparseArray.append(this.f9895c, dVar);
                }
            } else if (index == 3) {
                this.d = typedArrayObtainStyledAttributes.getResourceId(index, this.d);
                if (TtmlNode.TAG_LAYOUT.equals(context.getResources().getResourceTypeName(this.d))) {
                    androidx.constraintlayout.widget.d dVar2 = new androidx.constraintlayout.widget.d();
                    dVar2.h(context, this.d);
                    sparseArray.append(this.d, dVar2);
                }
            } else if (index == 6) {
                int i10 = typedArrayObtainStyledAttributes.peekValue(index).type;
                if (i10 == 1) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    this.f9897g = resourceId;
                    if (resourceId != -1) {
                        this.f9896e = -2;
                    }
                } else if (i10 == 3) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f = string;
                    if (string.indexOf("/") > 0) {
                        this.f9897g = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                        this.f9896e = -2;
                    } else {
                        this.f9896e = -1;
                    }
                } else {
                    this.f9896e = typedArrayObtainStyledAttributes.getInteger(index, this.f9896e);
                }
            } else if (index == 4) {
                this.f9898h = typedArrayObtainStyledAttributes.getInt(index, this.f9898h);
            } else if (index == 8) {
                this.f9899i = typedArrayObtainStyledAttributes.getFloat(index, this.f9899i);
            } else if (index == 1) {
                this.f9904n = typedArrayObtainStyledAttributes.getInteger(index, this.f9904n);
            } else if (index == 0) {
                this.f9893a = typedArrayObtainStyledAttributes.getResourceId(index, this.f9893a);
            } else if (index == 9) {
                this.f9905o = typedArrayObtainStyledAttributes.getBoolean(index, this.f9905o);
            } else if (index == 7) {
                this.f9906p = typedArrayObtainStyledAttributes.getInteger(index, -1);
            } else if (index == 5) {
                this.f9907q = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == 10) {
                this.f9908r = typedArrayObtainStyledAttributes.getInteger(index, 0);
            }
        }
        if (this.d == -1) {
            this.f9894b = true;
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
