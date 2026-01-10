package y;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.Xml;
import androidx.media3.extractor.text.ttml.TtmlNode;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final float f11231a;

    /* renamed from: b, reason: collision with root package name */
    public final float f11232b;

    /* renamed from: c, reason: collision with root package name */
    public final float f11233c;
    public final float d;

    /* renamed from: e, reason: collision with root package name */
    public final int f11234e;

    public l(Context context, XmlResourceParser xmlResourceParser) throws Resources.NotFoundException {
        this.f11231a = Float.NaN;
        this.f11232b = Float.NaN;
        this.f11233c = Float.NaN;
        this.d = Float.NaN;
        this.f11234e = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), j.f11227u);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i6 = 0; i6 < indexCount; i6++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i6);
            if (index == 0) {
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f11234e);
                this.f11234e = resourceId;
                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                context.getResources().getResourceName(resourceId);
                TtmlNode.TAG_LAYOUT.equals(resourceTypeName);
            } else if (index == 1) {
                this.d = typedArrayObtainStyledAttributes.getDimension(index, this.d);
            } else if (index == 2) {
                this.f11232b = typedArrayObtainStyledAttributes.getDimension(index, this.f11232b);
            } else if (index == 3) {
                this.f11233c = typedArrayObtainStyledAttributes.getDimension(index, this.f11233c);
            } else if (index == 4) {
                this.f11231a = typedArrayObtainStyledAttributes.getDimension(index, this.f11231a);
            } else {
                Log.v("ConstraintLayoutStates", "Unknown tag");
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final boolean a(float f, float f3) {
        float f4 = this.f11231a;
        if (!Float.isNaN(f4) && f < f4) {
            return false;
        }
        float f5 = this.f11232b;
        if (!Float.isNaN(f5) && f3 < f5) {
            return false;
        }
        float f10 = this.f11233c;
        if (!Float.isNaN(f10) && f > f10) {
            return false;
        }
        float f11 = this.d;
        return Float.isNaN(f11) || f3 <= f11;
    }
}
