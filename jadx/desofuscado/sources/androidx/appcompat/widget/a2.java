package androidx.appcompat.widget;

import android.database.DataSetObserver;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a2 extends DataSetObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f662a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f663b;

    public /* synthetic */ a2(int i6, Object obj) {
        this.f662a = i6;
        this.f663b = obj;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        switch (this.f662a) {
            case 0:
                ListPopupWindow listPopupWindow = (ListPopupWindow) this.f663b;
                if (listPopupWindow.f583y.isShowing()) {
                    listPopupWindow.a();
                    break;
                }
                break;
            case 1:
                ((ViewPager) this.f663b).e();
                break;
            case 2:
                f3 f3Var = (f3) this.f663b;
                f3Var.f10055a = true;
                f3Var.notifyDataSetChanged();
                break;
            default:
                ((TabLayout) this.f663b).j();
                break;
        }
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        switch (this.f662a) {
            case 0:
                ((ListPopupWindow) this.f663b).dismiss();
                break;
            case 1:
                ((ViewPager) this.f663b).e();
                break;
            case 2:
                f3 f3Var = (f3) this.f663b;
                f3Var.f10055a = false;
                f3Var.notifyDataSetInvalidated();
                break;
            default:
                ((TabLayout) this.f663b).j();
                break;
        }
    }
}
