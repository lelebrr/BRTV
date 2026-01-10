package androidx.appcompat.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.p2elite.brtv2.R;
import java.lang.ref.WeakReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final Context f290a;

    /* renamed from: b, reason: collision with root package name */
    public final j f291b;

    /* renamed from: c, reason: collision with root package name */
    public final Window f292c;
    public CharSequence d;

    /* renamed from: e, reason: collision with root package name */
    public AlertController$RecycleListView f293e;
    public View f;

    /* renamed from: h, reason: collision with root package name */
    public Button f295h;

    /* renamed from: i, reason: collision with root package name */
    public Button f296i;

    /* renamed from: j, reason: collision with root package name */
    public Button f297j;

    /* renamed from: k, reason: collision with root package name */
    public NestedScrollView f298k;

    /* renamed from: l, reason: collision with root package name */
    public Drawable f299l;

    /* renamed from: m, reason: collision with root package name */
    public ImageView f300m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f301n;

    /* renamed from: o, reason: collision with root package name */
    public TextView f302o;

    /* renamed from: p, reason: collision with root package name */
    public View f303p;

    /* renamed from: q, reason: collision with root package name */
    public ListAdapter f304q;

    /* renamed from: s, reason: collision with root package name */
    public final int f306s;

    /* renamed from: t, reason: collision with root package name */
    public final int f307t;

    /* renamed from: u, reason: collision with root package name */
    public final int f308u;

    /* renamed from: v, reason: collision with root package name */
    public final int f309v;

    /* renamed from: w, reason: collision with root package name */
    public final boolean f310w;

    /* renamed from: x, reason: collision with root package name */
    public final f f311x;

    /* renamed from: g, reason: collision with root package name */
    public boolean f294g = false;

    /* renamed from: r, reason: collision with root package name */
    public int f305r = -1;

    /* renamed from: y, reason: collision with root package name */
    public final a f312y = new a(0, this);

    public h(Context context, j jVar, Window window) {
        this.f290a = context;
        this.f291b = jVar;
        this.f292c = window;
        f fVar = new f();
        fVar.f247b = new WeakReference(jVar);
        this.f311x = fVar;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, e.a.f, R.attr.alertDialogStyle, 0);
        this.f306s = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.getResourceId(2, 0);
        this.f307t = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        typedArrayObtainStyledAttributes.getResourceId(5, 0);
        this.f308u = typedArrayObtainStyledAttributes.getResourceId(7, 0);
        this.f309v = typedArrayObtainStyledAttributes.getResourceId(3, 0);
        this.f310w = typedArrayObtainStyledAttributes.getBoolean(6, true);
        typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        jVar.c().g(1);
    }

    public static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public static void b(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    public static ViewGroup c(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }
}
