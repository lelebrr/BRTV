package y;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.media3.extractor.text.ttml.TtmlNode;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final float f11149a;

    /* renamed from: b, reason: collision with root package name */
    public final float f11150b;

    /* renamed from: c, reason: collision with root package name */
    public final float f11151c;
    public final float d;

    /* renamed from: e, reason: collision with root package name */
    public final int f11152e;
    public final androidx.constraintlayout.widget.d f;

    public c(Context context, XmlResourceParser xmlResourceParser) throws Resources.NotFoundException {
        this.f11149a = Float.NaN;
        this.f11150b = Float.NaN;
        this.f11151c = Float.NaN;
        this.d = Float.NaN;
        this.f11152e = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), j.f11227u);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i6 = 0; i6 < indexCount; i6++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i6);
            if (index == 0) {
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f11152e);
                this.f11152e = resourceId;
                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                context.getResources().getResourceName(resourceId);
                if (TtmlNode.TAG_LAYOUT.equals(resourceTypeName)) {
                    androidx.constraintlayout.widget.d dVar = new androidx.constraintlayout.widget.d();
                    this.f = dVar;
                    dVar.d((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                }
            } else if (index == 1) {
                this.d = typedArrayObtainStyledAttributes.getDimension(index, this.d);
            } else if (index == 2) {
                this.f11150b = typedArrayObtainStyledAttributes.getDimension(index, this.f11150b);
            } else if (index == 3) {
                this.f11151c = typedArrayObtainStyledAttributes.getDimension(index, this.f11151c);
            } else if (index == 4) {
                this.f11149a = typedArrayObtainStyledAttributes.getDimension(index, this.f11149a);
            } else {
                Log.v("ConstraintLayoutStates", "Unknown tag");
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final boolean a(float f, float f3) {
        float f4 = this.f11149a;
        if (!Float.isNaN(f4) && f < f4) {
            return false;
        }
        float f5 = this.f11150b;
        if (!Float.isNaN(f5) && f3 < f5) {
            return false;
        }
        float f10 = this.f11151c;
        if (!Float.isNaN(f10) && f > f10) {
            return false;
        }
        float f11 = this.d;
        return Float.isNaN(f11) || f3 <= f11;
    }
}
