package androidx.appcompat.app;

import android.widget.ArrayAdapter;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends ArrayAdapter {
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final long getItemId(int i6) {
        return i6;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }
}
