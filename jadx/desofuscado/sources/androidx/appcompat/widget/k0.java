package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
import com.google.android.material.textfield.MaterialAutoCompleteTextView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k0 implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f763a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f764b;

    public /* synthetic */ k0(int i6, Object obj) {
        this.f763a = i6;
        this.f764b = obj;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i6, long j10) {
        Object item;
        switch (this.f763a) {
            case 0:
                m0 m0Var = (m0) this.f764b;
                m0Var.G.setSelection(i6);
                AppCompatSpinner appCompatSpinner = m0Var.G;
                if (appCompatSpinner.getOnItemClickListener() != null) {
                    appCompatSpinner.performItemClick(view, i6, m0Var.D.getItemId(i6));
                }
                m0Var.dismiss();
                break;
            case 1:
                ((SearchView) this.f764b).p(i6);
                break;
            default:
                MaterialAutoCompleteTextView materialAutoCompleteTextView = (MaterialAutoCompleteTextView) this.f764b;
                if (i6 < 0) {
                    ListPopupWindow listPopupWindow = materialAutoCompleteTextView.f5250e;
                    item = !listPopupWindow.f583y.isShowing() ? null : listPopupWindow.f563c.getSelectedItem();
                } else {
                    item = materialAutoCompleteTextView.getAdapter().getItem(i6);
                }
                MaterialAutoCompleteTextView.a(materialAutoCompleteTextView, item);
                AdapterView.OnItemClickListener onItemClickListener = materialAutoCompleteTextView.getOnItemClickListener();
                ListPopupWindow listPopupWindow2 = materialAutoCompleteTextView.f5250e;
                if (onItemClickListener != null) {
                    if (view == null || i6 < 0) {
                        view = listPopupWindow2.f583y.isShowing() ? listPopupWindow2.f563c.getSelectedView() : null;
                        i6 = !listPopupWindow2.f583y.isShowing() ? -1 : listPopupWindow2.f563c.getSelectedItemPosition();
                        j10 = !listPopupWindow2.f583y.isShowing() ? Long.MIN_VALUE : listPopupWindow2.f563c.getSelectedItemId();
                    }
                    onItemClickListener.onItemClick(listPopupWindow2.f563c, view, i6, j10);
                }
                listPopupWindow2.dismiss();
                break;
        }
    }
}
