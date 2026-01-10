package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import com.p2elite.brtv2.R;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l2 {

    /* renamed from: i, reason: collision with root package name */
    public static l2 f774i;

    /* renamed from: a, reason: collision with root package name */
    public WeakHashMap f776a;

    /* renamed from: b, reason: collision with root package name */
    public p.l f777b;

    /* renamed from: c, reason: collision with root package name */
    public p.m f778c;
    public final WeakHashMap d = new WeakHashMap(0);

    /* renamed from: e, reason: collision with root package name */
    public TypedValue f779e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public a4.h f780g;

    /* renamed from: h, reason: collision with root package name */
    public static final PorterDuff.Mode f773h = PorterDuff.Mode.SRC_IN;

    /* renamed from: j, reason: collision with root package name */
    public static final j2 f775j = new j2(6);

    public static synchronized l2 d() {
        try {
            if (f774i == null) {
                l2 l2Var = new l2();
                f774i = l2Var;
                j(l2Var);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f774i;
    }

    public static synchronized PorterDuffColorFilter h(int i6, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        j2 j2Var = f775j;
        j2Var.getClass();
        int i10 = (31 + i6) * 31;
        porterDuffColorFilter = (PorterDuffColorFilter) j2Var.b(Integer.valueOf(mode.hashCode() + i10));
        if (porterDuffColorFilter == null) {
            porterDuffColorFilter = new PorterDuffColorFilter(i6, mode);
        }
        return porterDuffColorFilter;
    }

    public static void j(l2 l2Var) {
        if (Build.VERSION.SDK_INT < 24) {
            l2Var.a("vector", new k2(3));
            l2Var.a("animated-vector", new k2(2));
            l2Var.a("animated-selector", new k2(1));
            l2Var.a("drawable", new k2(0));
        }
    }

    public final void a(String str, k2 k2Var) {
        if (this.f777b == null) {
            this.f777b = new p.l(0);
        }
        this.f777b.put(str, k2Var);
    }

    public final synchronized void b(Context context, long j10, Drawable drawable) {
        try {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                p.i iVar = (p.i) this.d.get(context);
                if (iVar == null) {
                    iVar = new p.i();
                    this.d.put(context, iVar);
                }
                iVar.h(j10, new WeakReference(constantState));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final Drawable c(Context context, int i6) throws Resources.NotFoundException {
        if (this.f779e == null) {
            this.f779e = new TypedValue();
        }
        TypedValue typedValue = this.f779e;
        context.getResources().getValue(i6, typedValue, true);
        long j10 = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable drawableE = e(context, j10);
        if (drawableE != null) {
            return drawableE;
        }
        LayerDrawable layerDrawableE = null;
        if (this.f780g != null) {
            if (i6 == R.drawable.abc_cab_background_top_material) {
                layerDrawableE = new LayerDrawable(new Drawable[]{f(context, R.drawable.abc_cab_background_internal_bg), f(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
            } else if (i6 == R.drawable.abc_ratingbar_material) {
                layerDrawableE = a4.h.e(this, context, R.dimen.abc_star_big);
            } else if (i6 == R.drawable.abc_ratingbar_indicator_material) {
                layerDrawableE = a4.h.e(this, context, R.dimen.abc_star_medium);
            } else if (i6 == R.drawable.abc_ratingbar_small_material) {
                layerDrawableE = a4.h.e(this, context, R.dimen.abc_star_small);
            }
        }
        if (layerDrawableE != null) {
            layerDrawableE.setChangingConfigurations(typedValue.changingConfigurations);
            b(context, j10, layerDrawableE);
        }
        return layerDrawableE;
    }

    public final synchronized Drawable e(Context context, long j10) {
        p.i iVar = (p.i) this.d.get(context);
        if (iVar == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) iVar.d(j10);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            iVar.i(j10);
        }
        return null;
    }

    public final synchronized Drawable f(Context context, int i6) {
        return g(context, i6, false);
    }

    public final synchronized Drawable g(Context context, int i6, boolean z7) {
        Drawable drawableK;
        try {
            if (!this.f) {
                this.f = true;
                Drawable drawableF = f(context, R.drawable.abc_vector_test);
                if (drawableF == null || (!(drawableF instanceof z1.n) && !"android.graphics.drawable.VectorDrawable".equals(drawableF.getClass().getName()))) {
                    this.f = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            drawableK = k(context, i6);
            if (drawableK == null) {
                drawableK = c(context, i6);
            }
            if (drawableK == null) {
                drawableK = d0.a.b(context, i6);
            }
            if (drawableK != null) {
                drawableK = n(context, i6, z7, drawableK);
            }
            if (drawableK != null) {
                m1.a(drawableK);
            }
        } catch (Throwable th) {
            throw th;
        }
        return drawableK;
    }

    public final synchronized ColorStateList i(Context context, int i6) {
        ColorStateList colorStateList;
        p.m mVar;
        WeakHashMap weakHashMap = this.f776a;
        ColorStateList colorStateListF = null;
        colorStateList = (weakHashMap == null || (mVar = (p.m) weakHashMap.get(context)) == null) ? null : (ColorStateList) mVar.c(i6);
        if (colorStateList == null) {
            a4.h hVar = this.f780g;
            if (hVar != null) {
                colorStateListF = hVar.f(context, i6);
            }
            if (colorStateListF != null) {
                if (this.f776a == null) {
                    this.f776a = new WeakHashMap();
                }
                p.m mVar2 = (p.m) this.f776a.get(context);
                if (mVar2 == null) {
                    mVar2 = new p.m();
                    this.f776a.put(context, mVar2);
                }
                mVar2.a(i6, colorStateListF);
            }
            colorStateList = colorStateListF;
        }
        return colorStateList;
    }

    public final Drawable k(Context context, int i6) throws XmlPullParserException, Resources.NotFoundException, IOException {
        int next;
        p.l lVar = this.f777b;
        if (lVar == null || lVar.isEmpty()) {
            return null;
        }
        p.m mVar = this.f778c;
        if (mVar != null) {
            String str = (String) mVar.c(i6);
            if ("appcompat_skip_skip".equals(str) || (str != null && this.f777b.get(str) == null)) {
                return null;
            }
        } else {
            this.f778c = new p.m();
        }
        if (this.f779e == null) {
            this.f779e = new TypedValue();
        }
        TypedValue typedValue = this.f779e;
        Resources resources = context.getResources();
        resources.getValue(i6, typedValue, true);
        long j10 = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable drawableE = e(context, j10);
        if (drawableE != null) {
            return drawableE;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i6);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.f778c.a(i6, name);
                k2 k2Var = (k2) this.f777b.get(name);
                if (k2Var != null) {
                    drawableE = k2Var.a(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                if (drawableE != null) {
                    drawableE.setChangingConfigurations(typedValue.changingConfigurations);
                    b(context, j10, drawableE);
                }
            } catch (Exception e5) {
                Log.e("ResourceManagerInternal", "Exception while inflating drawable", e5);
            }
        }
        if (drawableE == null) {
            this.f778c.a(i6, "appcompat_skip_skip");
        }
        return drawableE;
    }

    public final synchronized void l(Context context) {
        p.i iVar = (p.i) this.d.get(context);
        if (iVar != null) {
            iVar.b();
        }
    }

    public final synchronized void m(a4.h hVar) {
        this.f780g = hVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.drawable.Drawable n(android.content.Context r10, int r11, boolean r12, android.graphics.drawable.Drawable r13) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.l2.n(android.content.Context, int, boolean, android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }
}
