package androidx.appcompat.view.menu;

import a1.b;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import e.a;
import java.util.WeakHashMap;
import k.n;
import k.z;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements z, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: a, reason: collision with root package name */
    public n f402a;

    /* renamed from: b, reason: collision with root package name */
    public ImageView f403b;

    /* renamed from: c, reason: collision with root package name */
    public RadioButton f404c;
    public TextView d;

    /* renamed from: e, reason: collision with root package name */
    public CheckBox f405e;
    public TextView f;

    /* renamed from: g, reason: collision with root package name */
    public ImageView f406g;

    /* renamed from: h, reason: collision with root package name */
    public ImageView f407h;

    /* renamed from: i, reason: collision with root package name */
    public LinearLayout f408i;

    /* renamed from: j, reason: collision with root package name */
    public final Drawable f409j;

    /* renamed from: k, reason: collision with root package name */
    public final int f410k;

    /* renamed from: l, reason: collision with root package name */
    public final Context f411l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f412m;

    /* renamed from: n, reason: collision with root package name */
    public final Drawable f413n;

    /* renamed from: o, reason: collision with root package name */
    public final boolean f414o;

    /* renamed from: p, reason: collision with root package name */
    public LayoutInflater f415p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f416q;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listMenuViewStyle);
    }

    private LayoutInflater getInflater() {
        if (this.f415p == null) {
            this.f415p = LayoutInflater.from(getContext());
        }
        return this.f415p;
    }

    private void setSubMenuArrowVisible(boolean z7) {
        ImageView imageView = this.f406g;
        if (imageView != null) {
            imageView.setVisibility(z7 ? 0 : 8);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public final void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f407h;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f407h.getLayoutParams();
        rect.top = this.f407h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005f  */
    @Override // k.z
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c(k.n r11) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.ListMenuItemView.c(k.n):void");
    }

    @Override // k.z
    public n getItemData() {
        return this.f402a;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        WeakHashMap weakHashMap = s0.f8353a;
        setBackground(this.f409j);
        TextView textView = (TextView) findViewById(R.id.title);
        this.d = textView;
        int i6 = this.f410k;
        if (i6 != -1) {
            textView.setTextAppearance(this.f411l, i6);
        }
        this.f = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.f406g = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f413n);
        }
        this.f407h = (ImageView) findViewById(R.id.group_divider);
        this.f408i = (LinearLayout) findViewById(R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i6, int i10) {
        if (this.f403b != null && this.f412m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f403b.getLayoutParams();
            int i11 = layoutParams.height;
            if (i11 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i11;
            }
        }
        super.onMeasure(i6, i10);
    }

    public void setCheckable(boolean z7) {
        CompoundButton compoundButton;
        View view;
        if (!z7 && this.f404c == null && this.f405e == null) {
            return;
        }
        if ((this.f402a.f7655x & 4) != 0) {
            if (this.f404c == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.f404c = radioButton;
                LinearLayout linearLayout = this.f408i;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f404c;
            view = this.f405e;
        } else {
            if (this.f405e == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f405e = checkBox;
                LinearLayout linearLayout2 = this.f408i;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f405e;
            view = this.f404c;
        }
        if (z7) {
            compoundButton.setChecked(this.f402a.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        CheckBox checkBox2 = this.f405e;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.f404c;
        if (radioButton2 != null) {
            radioButton2.setVisibility(8);
        }
    }

    public void setChecked(boolean z7) {
        CompoundButton compoundButton;
        if ((this.f402a.f7655x & 4) != 0) {
            if (this.f404c == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.f404c = radioButton;
                LinearLayout linearLayout = this.f408i;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f404c;
        } else {
            if (this.f405e == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f405e = checkBox;
                LinearLayout linearLayout2 = this.f408i;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f405e;
        }
        compoundButton.setChecked(z7);
    }

    public void setForceShowIcon(boolean z7) {
        this.f416q = z7;
        this.f412m = z7;
    }

    public void setGroupDividerEnabled(boolean z7) {
        ImageView imageView = this.f407h;
        if (imageView != null) {
            imageView.setVisibility((this.f414o || !z7) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        this.f402a.f7645n.getClass();
        boolean z7 = this.f416q;
        if (z7 || this.f412m) {
            ImageView imageView = this.f403b;
            if (imageView == null && drawable == null && !this.f412m) {
                return;
            }
            if (imageView == null) {
                ImageView imageView2 = (ImageView) getInflater().inflate(R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
                this.f403b = imageView2;
                LinearLayout linearLayout = this.f408i;
                if (linearLayout != null) {
                    linearLayout.addView(imageView2, 0);
                } else {
                    addView(imageView2, 0);
                }
            }
            if (drawable == null && !this.f412m) {
                this.f403b.setVisibility(8);
                return;
            }
            ImageView imageView3 = this.f403b;
            if (!z7) {
                drawable = null;
            }
            imageView3.setImageDrawable(drawable);
            if (this.f403b.getVisibility() != 0) {
                this.f403b.setVisibility(0);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.d.getVisibility() != 8) {
                this.d.setVisibility(8);
            }
        } else {
            this.d.setText(charSequence);
            if (this.d.getVisibility() != 0) {
                this.d.setVisibility(0);
            }
        }
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet);
        b bVarC = b.C(getContext(), attributeSet, a.f6363s, i6);
        this.f409j = bVarC.t(5);
        TypedArray typedArray = (TypedArray) bVarC.f48c;
        this.f410k = typedArray.getResourceId(1, -1);
        this.f412m = typedArray.getBoolean(7, false);
        this.f411l = context;
        this.f413n = bVarC.t(8);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, R.attr.dropDownListViewStyle, 0);
        this.f414o = typedArrayObtainStyledAttributes.hasValue(0);
        bVarC.F();
        typedArrayObtainStyledAttributes.recycle();
    }
}
