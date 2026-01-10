package androidx.appcompat.widget;

import android.text.StaticLayout;
import android.widget.TextView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e1 extends d1 {
    @Override // androidx.appcompat.widget.d1, androidx.appcompat.widget.f1
    public void a(StaticLayout.Builder builder, TextView textView) {
        builder.setTextDirection(textView.getTextDirectionHeuristic());
    }

    @Override // androidx.appcompat.widget.f1
    public boolean b(TextView textView) {
        return textView.isHorizontallyScrollable();
    }
}
