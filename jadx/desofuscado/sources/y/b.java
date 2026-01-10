package y;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final int f11146a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f11147b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final int f11148c;
    public final androidx.constraintlayout.widget.d d;

    public b(Context context, XmlResourceParser xmlResourceParser) throws Resources.NotFoundException {
        this.f11148c = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), j.f11223q);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i6 = 0; i6 < indexCount; i6++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i6);
            if (index == 0) {
                this.f11146a = typedArrayObtainStyledAttributes.getResourceId(index, this.f11146a);
            } else if (index == 1) {
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f11148c);
                this.f11148c = resourceId;
                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                context.getResources().getResourceName(resourceId);
                if (TtmlNode.TAG_LAYOUT.equals(resourceTypeName)) {
                    androidx.constraintlayout.widget.d dVar = new androidx.constraintlayout.widget.d();
                    this.d = dVar;
                    dVar.d((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                }
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
