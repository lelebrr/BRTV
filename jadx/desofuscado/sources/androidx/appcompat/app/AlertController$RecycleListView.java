package androidx.appcompat.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ListView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AlertController$RecycleListView extends ListView {

    /* renamed from: a, reason: collision with root package name */
    public final int f214a;

    /* renamed from: b, reason: collision with root package name */
    public final int f215b;

    public AlertController$RecycleListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.a.f6365u);
        this.f215b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, -1);
        this.f214a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, -1);
    }
}
