package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.widget.NestedScrollView;
import com.p2elite.brtv2.R;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class j extends i0 implements DialogInterface {

    /* renamed from: e, reason: collision with root package name */
    public final h f319e;

    public j(ContextThemeWrapper contextThemeWrapper, int i6) {
        super(contextThemeWrapper, i(contextThemeWrapper, i6));
        this.f319e = new h(getContext(), this, getWindow());
    }

    public static int i(Context context, int i6) {
        if (((i6 >>> 24) & 255) >= 1) {
            return i6;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // androidx.appcompat.app.i0, android.app.Dialog
    public void onCreate(Bundle bundle) {
        int i6;
        ListAdapter listAdapter;
        View view;
        View viewFindViewById;
        int i10 = 0;
        super.onCreate(bundle);
        h hVar = this.f319e;
        hVar.f291b.setContentView(hVar.f306s);
        Window window = hVar.f292c;
        View viewFindViewById2 = window.findViewById(R.id.parentPanel);
        View viewFindViewById3 = viewFindViewById2.findViewById(R.id.topPanel);
        View viewFindViewById4 = viewFindViewById2.findViewById(R.id.contentPanel);
        View viewFindViewById5 = viewFindViewById2.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById2.findViewById(R.id.customPanel);
        View view2 = hVar.f;
        if (view2 == null) {
            view2 = null;
        }
        boolean z7 = view2 != null;
        if (!z7 || !h.a(view2)) {
            window.setFlags(131072, 131072);
        }
        if (z7) {
            FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.custom);
            frameLayout.addView(view2, new ViewGroup.LayoutParams(-1, -1));
            if (hVar.f294g) {
                frameLayout.setPadding(0, 0, 0, 0);
            }
            if (hVar.f293e != null) {
                ((LinearLayout.LayoutParams) ((LinearLayoutCompat.LayoutParams) viewGroup.getLayoutParams())).weight = 0.0f;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View viewFindViewById6 = viewGroup.findViewById(R.id.topPanel);
        View viewFindViewById7 = viewGroup.findViewById(R.id.contentPanel);
        View viewFindViewById8 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup viewGroupC = h.c(viewFindViewById6, viewFindViewById3);
        ViewGroup viewGroupC2 = h.c(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupC3 = h.c(viewFindViewById8, viewFindViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(R.id.scrollView);
        hVar.f298k = nestedScrollView;
        nestedScrollView.setFocusable(false);
        hVar.f298k.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroupC2.findViewById(android.R.id.message);
        hVar.f302o = textView;
        if (textView != null) {
            textView.setVisibility(8);
            hVar.f298k.removeView(hVar.f302o);
            if (hVar.f293e != null) {
                ViewGroup viewGroup2 = (ViewGroup) hVar.f298k.getParent();
                int iIndexOfChild = viewGroup2.indexOfChild(hVar.f298k);
                viewGroup2.removeViewAt(iIndexOfChild);
                viewGroup2.addView(hVar.f293e, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
            } else {
                viewGroupC2.setVisibility(8);
            }
        }
        Button button = (Button) viewGroupC3.findViewById(android.R.id.button1);
        hVar.f295h = button;
        a aVar = hVar.f312y;
        button.setOnClickListener(aVar);
        if (TextUtils.isEmpty(null)) {
            hVar.f295h.setVisibility(8);
            i6 = 0;
        } else {
            hVar.f295h.setText((CharSequence) null);
            hVar.f295h.setVisibility(0);
            i6 = 1;
        }
        Button button2 = (Button) viewGroupC3.findViewById(android.R.id.button2);
        hVar.f296i = button2;
        button2.setOnClickListener(aVar);
        if (TextUtils.isEmpty(null)) {
            hVar.f296i.setVisibility(8);
        } else {
            hVar.f296i.setText((CharSequence) null);
            hVar.f296i.setVisibility(0);
            i6 |= 2;
        }
        Button button3 = (Button) viewGroupC3.findViewById(android.R.id.button3);
        hVar.f297j = button3;
        button3.setOnClickListener(aVar);
        if (TextUtils.isEmpty(null)) {
            hVar.f297j.setVisibility(8);
        } else {
            hVar.f297j.setText((CharSequence) null);
            hVar.f297j.setVisibility(0);
            i6 |= 4;
        }
        TypedValue typedValue = new TypedValue();
        hVar.f290a.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (i6 == 1) {
                Button button4 = hVar.f295h;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button4.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button4.setLayoutParams(layoutParams);
            } else if (i6 == 2) {
                Button button5 = hVar.f296i;
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) button5.getLayoutParams();
                layoutParams2.gravity = 1;
                layoutParams2.weight = 0.5f;
                button5.setLayoutParams(layoutParams2);
            } else if (i6 == 4) {
                Button button6 = hVar.f297j;
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) button6.getLayoutParams();
                layoutParams3.gravity = 1;
                layoutParams3.weight = 0.5f;
                button6.setLayoutParams(layoutParams3);
            }
        }
        if (i6 == 0) {
            viewGroupC3.setVisibility(8);
        }
        if (hVar.f303p != null) {
            viewGroupC.addView(hVar.f303p, 0, new ViewGroup.LayoutParams(-1, -2));
            window.findViewById(R.id.title_template).setVisibility(8);
        } else {
            hVar.f300m = (ImageView) window.findViewById(android.R.id.icon);
            if (TextUtils.isEmpty(hVar.d) || !hVar.f310w) {
                window.findViewById(R.id.title_template).setVisibility(8);
                hVar.f300m.setVisibility(8);
                viewGroupC.setVisibility(8);
            } else {
                TextView textView2 = (TextView) window.findViewById(R.id.alertTitle);
                hVar.f301n = textView2;
                textView2.setText(hVar.d);
                Drawable drawable = hVar.f299l;
                if (drawable != null) {
                    hVar.f300m.setImageDrawable(drawable);
                } else {
                    hVar.f301n.setPadding(hVar.f300m.getPaddingLeft(), hVar.f300m.getPaddingTop(), hVar.f300m.getPaddingRight(), hVar.f300m.getPaddingBottom());
                    hVar.f300m.setVisibility(8);
                }
            }
        }
        boolean z10 = viewGroup.getVisibility() != 8;
        int i11 = (viewGroupC == null || viewGroupC.getVisibility() == 8) ? 0 : 1;
        boolean z11 = viewGroupC3.getVisibility() != 8;
        if (!z11 && (viewFindViewById = viewGroupC2.findViewById(R.id.textSpacerNoButtons)) != null) {
            viewFindViewById.setVisibility(0);
        }
        if (i11 != 0) {
            NestedScrollView nestedScrollView2 = hVar.f298k;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            View viewFindViewById9 = hVar.f293e != null ? viewGroupC.findViewById(R.id.titleDividerNoCustom) : null;
            if (viewFindViewById9 != null) {
                viewFindViewById9.setVisibility(0);
            }
        } else {
            View viewFindViewById10 = viewGroupC2.findViewById(R.id.textSpacerNoTitle);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        }
        AlertController$RecycleListView alertController$RecycleListView = hVar.f293e;
        if (alertController$RecycleListView instanceof AlertController$RecycleListView) {
            alertController$RecycleListView.getClass();
            if (!z11 || i11 == 0) {
                alertController$RecycleListView.setPadding(alertController$RecycleListView.getPaddingLeft(), i11 != 0 ? alertController$RecycleListView.getPaddingTop() : alertController$RecycleListView.f214a, alertController$RecycleListView.getPaddingRight(), z11 ? alertController$RecycleListView.getPaddingBottom() : alertController$RecycleListView.f215b);
            }
        }
        if (!z10) {
            View view3 = hVar.f293e;
            if (view3 == null) {
                view3 = hVar.f298k;
            }
            if (view3 != null) {
                int i12 = i11 | (z11 ? 2 : 0);
                View viewFindViewById11 = window.findViewById(R.id.scrollIndicatorUp);
                View viewFindViewById12 = window.findViewById(R.id.scrollIndicatorDown);
                int i13 = Build.VERSION.SDK_INT;
                if (i13 >= 23) {
                    WeakHashMap weakHashMap = n0.s0.f8353a;
                    if (i13 >= 23) {
                        n0.h0.d(view3, i12, 3);
                    }
                    if (viewFindViewById11 != null) {
                        viewGroupC2.removeView(viewFindViewById11);
                    }
                    if (viewFindViewById12 != null) {
                        viewGroupC2.removeView(viewFindViewById12);
                    }
                } else {
                    if (viewFindViewById11 != null && (i12 & 1) == 0) {
                        viewGroupC2.removeView(viewFindViewById11);
                        viewFindViewById11 = null;
                    }
                    if (viewFindViewById12 == null || (i12 & 2) != 0) {
                        view = viewFindViewById12;
                    } else {
                        viewGroupC2.removeView(viewFindViewById12);
                        view = null;
                    }
                    if (viewFindViewById11 != null || view != null) {
                        AlertController$RecycleListView alertController$RecycleListView2 = hVar.f293e;
                        if (alertController$RecycleListView2 != null) {
                            alertController$RecycleListView2.setOnScrollListener(new b(viewFindViewById11, view));
                            hVar.f293e.post(new c(hVar, viewFindViewById11, view, i10));
                        } else {
                            if (viewFindViewById11 != null) {
                                viewGroupC2.removeView(viewFindViewById11);
                            }
                            if (view != null) {
                                viewGroupC2.removeView(view);
                            }
                        }
                    }
                }
            }
        }
        AlertController$RecycleListView alertController$RecycleListView3 = hVar.f293e;
        if (alertController$RecycleListView3 == null || (listAdapter = hVar.f304q) == null) {
            return;
        }
        alertController$RecycleListView3.setAdapter(listAdapter);
        int i14 = hVar.f305r;
        if (i14 > -1) {
            alertController$RecycleListView3.setItemChecked(i14, true);
            alertController$RecycleListView3.setSelection(i14);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i6, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f319e.f298k;
        if (nestedScrollView == null || !nestedScrollView.h(keyEvent)) {
            return super.onKeyDown(i6, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i6, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f319e.f298k;
        if (nestedScrollView == null || !nestedScrollView.h(keyEvent)) {
            return super.onKeyUp(i6, keyEvent);
        }
        return true;
    }

    @Override // androidx.appcompat.app.i0, android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        h hVar = this.f319e;
        hVar.d = charSequence;
        TextView textView = hVar.f301n;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
