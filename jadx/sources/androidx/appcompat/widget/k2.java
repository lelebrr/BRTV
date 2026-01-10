package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f769a;

    public /* synthetic */ k2(int i6) {
        this.f769a = i6;
    }

    public final Drawable a(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
        switch (this.f769a) {
            case 0:
                String classAttribute = attributeSet.getClassAttribute();
                if (classAttribute != null) {
                    try {
                        Drawable drawable = (Drawable) k2.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(null).newInstance(null);
                        h.b.c(drawable, context.getResources(), xmlResourceParser, attributeSet, theme);
                        break;
                    } catch (Exception e5) {
                        Log.e("DrawableDelegate", "Exception while inflating <drawable>", e5);
                        return null;
                    }
                }
                break;
            case 1:
                try {
                    break;
                } catch (Exception e10) {
                    Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e10);
                    return null;
                }
            case 2:
                try {
                    Resources resources = context.getResources();
                    z1.c cVar = new z1.c(context);
                    cVar.inflate(resources, xmlResourceParser, attributeSet, theme);
                    break;
                } catch (Exception e11) {
                    Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e11);
                    return null;
                }
            default:
                try {
                    Resources resources2 = context.getResources();
                    z1.n nVar = new z1.n();
                    nVar.inflate(resources2, xmlResourceParser, attributeSet, theme);
                    break;
                } catch (Exception e12) {
                    Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e12);
                    return null;
                }
        }
        return null;
    }
}
