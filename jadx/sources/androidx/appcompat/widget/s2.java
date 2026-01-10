package androidx.appcompat.widget;

import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.SearchView;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s2 implements View.OnLayoutChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f833a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f834b;

    public /* synthetic */ s2(int i6, Object obj) {
        this.f833a = i6;
        this.f834b = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i6, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        z5.a aVar;
        Object obj = this.f834b;
        switch (this.f833a) {
            case 0:
                SearchView searchView = (SearchView) obj;
                View view2 = searchView.f599x;
                if (view2.getWidth() > 1) {
                    Resources resources = searchView.getContext().getResources();
                    int paddingLeft = searchView.f593r.getPaddingLeft();
                    Rect rect = new Rect();
                    boolean zA = c4.a(searchView);
                    int dimensionPixelSize = searchView.M ? resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_text_padding_left) : 0;
                    SearchView.SearchAutoComplete searchAutoComplete = searchView.f591p;
                    searchAutoComplete.getDropDownBackground().getPadding(rect);
                    searchAutoComplete.setDropDownHorizontalOffset(zA ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
                    searchAutoComplete.setDropDownWidth((((view2.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
                    break;
                }
                break;
            case 1:
                com.google.android.material.navigation.d dVar = (com.google.android.material.navigation.d) obj;
                ImageView imageView = dVar.f5112k;
                if (imageView.getVisibility() == 0 && (aVar = dVar.B) != null) {
                    Rect rect2 = new Rect();
                    imageView.getDrawingRect(rect2);
                    aVar.setBounds(rect2);
                    aVar.f(imageView, null);
                    break;
                }
                break;
            case 2:
                la.d dVar2 = (la.d) obj;
                dVar2.f8090j0.getWindowVisibleDisplayFrame(new Rect());
                if (r7 - r3.bottom > dVar2.f8090j0.getRootView().getHeight() * 0.15d) {
                    dVar2.f8088g0 = true;
                } else {
                    dVar2.f8088g0 = false;
                }
                String strS = a2.a.s("h0ouMj8=\n", "yyVJW1ETVo0=\n");
                String str = a2.a.s("hGfRKurfy+ioYfwl9NWEvA==\n", "6wmdS5Owvpw=\n") + dVar2.f8088g0;
                boolean z7 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS, str);
                break;
            default:
                z6.a aVar2 = (z6.a) obj;
                aVar2.getClass();
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                aVar2.I = iArr[0];
                view.getWindowVisibleDisplayFrame(aVar2.C);
                break;
        }
    }
}
