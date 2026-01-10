package y4;

import com.google.android.gms.common.api.Status;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public class e extends Exception {

    /* renamed from: a, reason: collision with root package name */
    public final Status f11392a;

    /* JADX WARN: Illegal instructions before constructor call */
    public e(Status status) {
        int i6 = status.f3925a;
        String str = status.f3926b;
        super(i6 + ": " + (str == null ? "" : str));
        this.f11392a = status;
    }
}
