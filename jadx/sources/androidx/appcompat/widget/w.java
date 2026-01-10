package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.Log;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class w {

    /* renamed from: b, reason: collision with root package name */
    public static final PorterDuff.Mode f875b = PorterDuff.Mode.SRC_IN;

    /* renamed from: c, reason: collision with root package name */
    public static w f876c;

    /* renamed from: a, reason: collision with root package name */
    public l2 f877a;

    public static synchronized w a() {
        try {
            if (f876c == null) {
                d();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f876c;
    }

    public static synchronized PorterDuffColorFilter c(int i6, PorterDuff.Mode mode) {
        return l2.h(i6, mode);
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [int[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r4v1, types: [int[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r4v2, types: [int[], java.io.Serializable] */
    public static synchronized void d() {
        if (f876c == null) {
            w wVar = new w();
            f876c = wVar;
            wVar.f877a = l2.d();
            l2 l2Var = f876c.f877a;
            a4.h hVar = new a4.h();
            hVar.f121a = new int[]{R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};
            hVar.f122b = new int[]{R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
            hVar.f123c = new int[]{R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};
            hVar.d = new int[]{R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
            hVar.f124e = new int[]{R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
            hVar.f = new int[]{R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};
            l2Var.m(hVar);
        }
    }

    public static void e(Drawable drawable, l3 l3Var, int[] iArr) {
        PorterDuff.Mode mode = l2.f773h;
        int[] state = drawable.getState();
        int[] iArr2 = m1.f784a;
        if (drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
            drawable.setState(new int[0]);
            drawable.setState(state);
        }
        boolean z7 = l3Var.d;
        if (z7 || l3Var.f783c) {
            PorterDuffColorFilter porterDuffColorFilterH = null;
            ColorStateList colorStateList = z7 ? l3Var.f781a : null;
            PorterDuff.Mode mode2 = l3Var.f783c ? l3Var.f782b : l2.f773h;
            if (colorStateList != null && mode2 != null) {
                porterDuffColorFilterH = l2.h(colorStateList.getColorForState(iArr, 0), mode2);
            }
            drawable.setColorFilter(porterDuffColorFilterH);
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }

    public final synchronized Drawable b(Context context, int i6) {
        return this.f877a.f(context, i6);
    }
}
