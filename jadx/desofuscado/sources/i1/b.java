package i1;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.leanback.widget.VerticalGridView;
import androidx.leanback.widget.picker.Picker;
import androidx.recyclerview.widget.k0;
import androidx.recyclerview.widget.p1;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends k0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f7290a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7291b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7292c;
    public final d d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Picker f7293e;

    public b(Picker picker, int i6, int i10, int i11) {
        this.f7293e = picker;
        this.f7290a = i6;
        this.f7291b = i11;
        this.f7292c = i10;
        this.d = (d) picker.f1891c.get(i11);
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemCount() {
        d dVar = this.d;
        if (dVar == null) {
            return 0;
        }
        return (dVar.f7297c - dVar.f7296b) + 1;
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(p1 p1Var, int i6) {
        d dVar;
        c cVar = (c) p1Var;
        TextView textView = cVar.f7294a;
        if (textView != null && (dVar = this.d) != null) {
            int i10 = dVar.f7296b + i6;
            CharSequence[] charSequenceArr = dVar.d;
            textView.setText(charSequenceArr == null ? String.format(dVar.f7298e, Integer.valueOf(i10)) : charSequenceArr[i10]);
        }
        View view = cVar.itemView;
        Picker picker = this.f7293e;
        ArrayList arrayList = picker.f1890b;
        int i11 = this.f7291b;
        picker.e(view, ((VerticalGridView) arrayList.get(i11)).getSelectedPosition() == i6, i11, false);
    }

    @Override // androidx.recyclerview.widget.k0
    public final p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(this.f7290a, viewGroup, false);
        int i10 = this.f7292c;
        return new c(viewInflate, i10 != 0 ? (TextView) viewInflate.findViewById(i10) : (TextView) viewInflate);
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onViewAttachedToWindow(p1 p1Var) {
        ((c) p1Var).itemView.setFocusable(this.f7293e.isActivated());
    }
}
