package androidx.leanback.widget.picker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import com.p2elite.brtv2.R;
import h1.a;
import i1.d;
import java.util.ArrayList;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class PinPicker extends Picker {
    public PinPicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.pinPickerStyle);
    }

    @Override // androidx.leanback.widget.picker.Picker, android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getAction() != 1 || keyCode < 7 || keyCode > 16) {
            return super.dispatchKeyEvent(keyEvent);
        }
        c(getSelectedColumn(), keyCode - 7);
        performClick();
        return true;
    }

    public String getPin() {
        StringBuilder sb = new StringBuilder();
        int columnsCount = getColumnsCount();
        for (int i6 = 0; i6 < columnsCount; i6++) {
            ArrayList arrayList = this.f1891c;
            sb.append(Integer.toString((arrayList == null ? null : (d) arrayList.get(i6)).f7295a));
        }
        return sb.toString();
    }

    @Override // android.view.View
    public final boolean performClick() {
        int selectedColumn = getSelectedColumn();
        if (selectedColumn == getColumnsCount() - 1) {
            return super.performClick();
        }
        setSelectedColumn(selectedColumn + 1);
        return false;
    }

    public void setNumberOfColumns(int i6) {
        ArrayList arrayList = new ArrayList(i6);
        for (int i10 = 0; i10 < i6; i10++) {
            d dVar = new d();
            dVar.f7296b = 0;
            dVar.f7297c = 9;
            dVar.f7298e = "%d";
            arrayList.add(dVar);
        }
        setColumns(arrayList);
    }

    @SuppressLint({"CustomViewStyleable"})
    public PinPicker(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        int[] iArr = a.f7165h;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i6, 0);
        s0.p(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i6, 0);
        try {
            setSeparator(" ");
            setNumberOfColumns(typedArrayObtainStyledAttributes.getInt(0, 4));
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
