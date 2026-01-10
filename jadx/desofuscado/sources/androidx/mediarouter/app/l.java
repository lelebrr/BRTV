package androidx.mediarouter.app;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f2622a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u f2623b;

    public l(u uVar, boolean z7) {
        this.f2623b = uVar;
        this.f2622a = z7;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int iN;
        HashMap map;
        HashMap map2;
        Bitmap bitmap;
        u uVar = this.f2623b;
        uVar.f2720s.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        if (uVar.f2699f0) {
            uVar.f2701g0 = true;
            return;
        }
        int i6 = uVar.f2727z.getLayoutParams().height;
        u.q(-1, uVar.f2727z);
        uVar.w(uVar.k());
        View decorView = uVar.getWindow().getDecorView();
        decorView.measure(View.MeasureSpec.makeMeasureSpec(uVar.getWindow().getAttributes().width, 1073741824), 0);
        u.q(i6, uVar.f2727z);
        if (!(uVar.f2721t.getDrawable() instanceof BitmapDrawable) || (bitmap = ((BitmapDrawable) uVar.f2721t.getDrawable()).getBitmap()) == null) {
            iN = 0;
        } else {
            iN = uVar.n(bitmap.getWidth(), bitmap.getHeight());
            uVar.f2721t.setScaleType(bitmap.getWidth() >= bitmap.getHeight() ? ImageView.ScaleType.FIT_XY : ImageView.ScaleType.FIT_CENTER);
        }
        int iO = uVar.o(uVar.k());
        int size = uVar.F.size();
        boolean zP = uVar.p();
        q1.s0 s0Var = uVar.f2702h;
        int size2 = zP ? Collections.unmodifiableList(s0Var.f9148v).size() * uVar.N : 0;
        if (size > 0) {
            size2 += uVar.P;
        }
        int iMin = Math.min(size2, uVar.O);
        if (!uVar.f2698e0) {
            iMin = 0;
        }
        int iMax = Math.max(iN, iMin) + iO;
        Rect rect = new Rect();
        decorView.getWindowVisibleDisplayFrame(rect);
        int iHeight = rect.height() - (uVar.f2719r.getMeasuredHeight() - uVar.f2720s.getMeasuredHeight());
        if (iN <= 0 || iMax > iHeight) {
            if (uVar.f2727z.getMeasuredHeight() + uVar.D.getLayoutParams().height >= uVar.f2720s.getMeasuredHeight()) {
                uVar.f2721t.setVisibility(8);
            }
            iMax = iMin + iO;
            iN = 0;
        } else {
            uVar.f2721t.setVisibility(0);
            u.q(iN, uVar.f2721t);
        }
        if (!uVar.k() || iMax > iHeight) {
            uVar.A.setVisibility(8);
        } else {
            uVar.A.setVisibility(0);
        }
        uVar.w(uVar.A.getVisibility() == 0);
        int iO2 = uVar.o(uVar.A.getVisibility() == 0);
        int iMax2 = Math.max(iN, iMin) + iO2;
        if (iMax2 > iHeight) {
            iMin -= iMax2 - iHeight;
        } else {
            iHeight = iMax2;
        }
        uVar.f2727z.clearAnimation();
        uVar.D.clearAnimation();
        uVar.f2720s.clearAnimation();
        boolean z7 = this.f2622a;
        if (z7) {
            uVar.j(iO2, uVar.f2727z);
            uVar.j(iMin, uVar.D);
            uVar.j(iHeight, uVar.f2720s);
        } else {
            u.q(iO2, uVar.f2727z);
            u.q(iMin, uVar.D);
            u.q(iHeight, uVar.f2720s);
        }
        u.q(rect.height(), uVar.f2718q);
        List listUnmodifiableList = Collections.unmodifiableList(s0Var.f9148v);
        if (listUnmodifiableList.isEmpty()) {
            uVar.F.clear();
            uVar.E.notifyDataSetChanged();
            return;
        }
        if (new HashSet(uVar.F).equals(new HashSet(listUnmodifiableList))) {
            uVar.E.notifyDataSetChanged();
            return;
        }
        if (z7) {
            OverlayListView overlayListView = uVar.D;
            t tVar = uVar.E;
            map = new HashMap();
            int firstVisiblePosition = overlayListView.getFirstVisiblePosition();
            for (int i10 = 0; i10 < overlayListView.getChildCount(); i10++) {
                Object item = tVar.getItem(firstVisiblePosition + i10);
                View childAt = overlayListView.getChildAt(i10);
                map.put(item, new Rect(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom()));
            }
        } else {
            map = null;
        }
        if (z7) {
            OverlayListView overlayListView2 = uVar.D;
            t tVar2 = uVar.E;
            map2 = new HashMap();
            int firstVisiblePosition2 = overlayListView2.getFirstVisiblePosition();
            for (int i11 = 0; i11 < overlayListView2.getChildCount(); i11++) {
                Object item2 = tVar2.getItem(firstVisiblePosition2 + i11);
                View childAt2 = overlayListView2.getChildAt(i11);
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(childAt2.getWidth(), childAt2.getHeight(), Bitmap.Config.ARGB_8888);
                childAt2.draw(new Canvas(bitmapCreateBitmap));
                map2.put(item2, new BitmapDrawable(uVar.f2704i.getResources(), bitmapCreateBitmap));
            }
        } else {
            map2 = null;
        }
        ArrayList arrayList = uVar.F;
        HashSet hashSet = new HashSet(listUnmodifiableList);
        hashSet.removeAll(arrayList);
        uVar.G = hashSet;
        HashSet hashSet2 = new HashSet(uVar.F);
        hashSet2.removeAll(listUnmodifiableList);
        uVar.H = hashSet2;
        uVar.F.addAll(0, uVar.G);
        uVar.F.removeAll(uVar.H);
        uVar.E.notifyDataSetChanged();
        if (z7 && uVar.f2698e0) {
            if (uVar.H.size() + uVar.G.size() > 0) {
                uVar.D.setEnabled(false);
                uVar.D.requestLayout();
                uVar.f2699f0 = true;
                uVar.D.getViewTreeObserver().addOnGlobalLayoutListener(new n(uVar, map, map2));
                return;
            }
        }
        uVar.G = null;
        uVar.H = null;
    }
}
