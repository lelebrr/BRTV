package a4;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.widget.j3;
import androidx.appcompat.widget.l2;
import androidx.appcompat.widget.m1;
import androidx.appcompat.widget.w;
import com.p2elite.brtv2.R;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public Serializable f121a;

    /* renamed from: b, reason: collision with root package name */
    public Serializable f122b;

    /* renamed from: c, reason: collision with root package name */
    public Object f123c;
    public Object d;

    /* renamed from: e, reason: collision with root package name */
    public Serializable f124e;
    public Object f;

    public h(Set set, String str, String str2) {
        u5.a aVar = u5.a.f10342a;
        Set setEmptySet = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.f123c = setEmptySet;
        Map mapEmptyMap = Collections.emptyMap();
        this.f121a = str;
        this.f124e = str2;
        this.f = aVar;
        HashSet hashSet = new HashSet(setEmptySet);
        Iterator it = mapEmptyMap.values().iterator();
        if (it.hasNext()) {
            throw a.e.l(it);
        }
        this.d = Collections.unmodifiableSet(hashSet);
    }

    public static boolean b(int[] iArr, int i6) {
        for (int i10 : iArr) {
            if (i10 == i6) {
                return true;
            }
        }
        return false;
    }

    public static ColorStateList d(Context context, int i6) {
        int iC = j3.c(context, R.attr.colorControlHighlight);
        return new ColorStateList(new int[][]{j3.f743b, j3.d, j3.f744c, j3.f}, new int[]{j3.b(context, R.attr.colorButtonNormal), f0.a.f(iC, i6), f0.a.f(iC, i6), i6});
    }

    public static LayerDrawable e(l2 l2Var, Context context, int i6) throws Resources.NotFoundException {
        BitmapDrawable bitmapDrawable;
        BitmapDrawable bitmapDrawable2;
        BitmapDrawable bitmapDrawable3;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i6);
        Drawable drawableF = l2Var.f(context, R.drawable.abc_star_black_48dp);
        Drawable drawableF2 = l2Var.f(context, R.drawable.abc_star_half_black_48dp);
        if ((drawableF instanceof BitmapDrawable) && drawableF.getIntrinsicWidth() == dimensionPixelSize && drawableF.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable = (BitmapDrawable) drawableF;
            bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
        } else {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawableF.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            drawableF.draw(canvas);
            bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
            bitmapDrawable2 = new BitmapDrawable(bitmapCreateBitmap);
        }
        bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
        if ((drawableF2 instanceof BitmapDrawable) && drawableF2.getIntrinsicWidth() == dimensionPixelSize && drawableF2.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable3 = (BitmapDrawable) drawableF2;
        } else {
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
            drawableF2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            drawableF2.draw(canvas2);
            bitmapDrawable3 = new BitmapDrawable(bitmapCreateBitmap2);
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
        layerDrawable.setId(0, android.R.id.background);
        layerDrawable.setId(1, android.R.id.secondaryProgress);
        layerDrawable.setId(2, android.R.id.progress);
        return layerDrawable;
    }

    public static void g(Drawable drawable, int i6, PorterDuff.Mode mode) {
        int[] iArr = m1.f784a;
        Drawable drawableMutate = drawable.mutate();
        if (mode == null) {
            mode = w.f875b;
        }
        drawableMutate.setColorFilter(w.c(i6, mode));
    }

    public void a(String str, String str2) {
        HashMap map = (HashMap) this.f;
        if (map == null) {
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }
        map.put(str, str2);
    }

    public i c() {
        String strH = ((String) this.f121a) == null ? " transportName" : "";
        if (((n) this.f123c) == null) {
            strH = strH.concat(" encodedPayload");
        }
        if (((Long) this.d) == null) {
            strH = ea.q.h(strH, " eventMillis");
        }
        if (((Long) this.f124e) == null) {
            strH = ea.q.h(strH, " uptimeMillis");
        }
        if (((HashMap) this.f) == null) {
            strH = ea.q.h(strH, " autoMetadata");
        }
        if (strH.isEmpty()) {
            return new i((String) this.f121a, (Integer) this.f122b, (n) this.f123c, ((Long) this.d).longValue(), ((Long) this.f124e).longValue(), (HashMap) this.f);
        }
        throw new IllegalStateException("Missing required properties:".concat(strH));
    }

    public ColorStateList f(Context context, int i6) {
        if (i6 == R.drawable.abc_edit_text_material) {
            return u7.d.k(context, R.color.abc_tint_edittext);
        }
        if (i6 == R.drawable.abc_switch_track_mtrl_alpha) {
            return u7.d.k(context, R.color.abc_tint_switch_track);
        }
        if (i6 != R.drawable.abc_switch_thumb_material) {
            if (i6 == R.drawable.abc_btn_default_mtrl_shape) {
                return d(context, j3.c(context, R.attr.colorButtonNormal));
            }
            if (i6 == R.drawable.abc_btn_borderless_material) {
                return d(context, 0);
            }
            if (i6 == R.drawable.abc_btn_colored_material) {
                return d(context, j3.c(context, R.attr.colorAccent));
            }
            if (i6 == R.drawable.abc_spinner_mtrl_am_alpha || i6 == R.drawable.abc_spinner_textfield_background_material) {
                return u7.d.k(context, R.color.abc_tint_spinner);
            }
            if (b((int[]) this.f122b, i6)) {
                return j3.d(context, R.attr.colorControlNormal);
            }
            if (b((int[]) this.f124e, i6)) {
                return u7.d.k(context, R.color.abc_tint_default);
            }
            if (b((int[]) this.f, i6)) {
                return u7.d.k(context, R.color.abc_tint_btn_checkable);
            }
            if (i6 == R.drawable.abc_seekbar_thumb_material) {
                return u7.d.k(context, R.color.abc_tint_seek_thumb);
            }
            return null;
        }
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList colorStateListD = j3.d(context, R.attr.colorSwitchThumbNormal);
        if (colorStateListD == null || !colorStateListD.isStateful()) {
            iArr[0] = j3.f743b;
            iArr2[0] = j3.b(context, R.attr.colorSwitchThumbNormal);
            iArr[1] = j3.f745e;
            iArr2[1] = j3.c(context, R.attr.colorControlActivated);
            iArr[2] = j3.f;
            iArr2[2] = j3.c(context, R.attr.colorSwitchThumbNormal);
        } else {
            int[] iArr3 = j3.f743b;
            iArr[0] = iArr3;
            iArr2[0] = colorStateListD.getColorForState(iArr3, 0);
            iArr[1] = j3.f745e;
            iArr2[1] = j3.c(context, R.attr.colorControlActivated);
            iArr[2] = j3.f;
            iArr2[2] = colorStateListD.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }
}
