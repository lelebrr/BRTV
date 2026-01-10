package androidx.databinding.library.baseAdapters;

import android.util.SparseIntArray;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
import w0.b;
import w0.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class DataBinderMapperImpl extends b {

    /* renamed from: a, reason: collision with root package name */
    public static final SparseIntArray f1333a = new SparseIntArray(0);

    @Override // w0.b
    public final List a() {
        return new ArrayList(0);
    }

    @Override // w0.b
    public final e b(int i6, View view) {
        if (f1333a.get(i6) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }
}
