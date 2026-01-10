package e6;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h implements ViewGroup.OnHierarchyChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public ViewGroup.OnHierarchyChangeListener f6597a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ChipGroup f6598b;

    public h(ChipGroup chipGroup) {
        this.f6598b = chipGroup;
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewAdded(View view, View view2) {
        ChipGroup chipGroup = this.f6598b;
        if (view == chipGroup && (view2 instanceof Chip)) {
            if (view2.getId() == -1) {
                WeakHashMap weakHashMap = s0.f8353a;
                view2.setId(View.generateViewId());
            }
            com.google.android.material.internal.a aVar = chipGroup.f4789h;
            Chip chip = (Chip) view2;
            aVar.f4976a.put(Integer.valueOf(chip.getId()), chip);
            if (chip.isChecked()) {
                aVar.a(chip);
            }
            chip.setInternalOnCheckedChangeListener(new a0.b(16, aVar));
        }
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f6597a;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewAdded(view, view2);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewRemoved(View view, View view2) {
        ChipGroup chipGroup = this.f6598b;
        if (view == chipGroup && (view2 instanceof Chip)) {
            com.google.android.material.internal.a aVar = chipGroup.f4789h;
            Chip chip = (Chip) view2;
            aVar.getClass();
            chip.setInternalOnCheckedChangeListener(null);
            aVar.f4976a.remove(Integer.valueOf(chip.getId()));
            aVar.f4977b.remove(Integer.valueOf(chip.getId()));
        }
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f6597a;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewRemoved(view, view2);
        }
    }
}
