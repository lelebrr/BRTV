package androidx.viewpager2.adapter;

import android.os.Parcelable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public interface StatefulAdapter {
    void restoreState(Parcelable parcelable);

    Parcelable saveState();
}
