package v4;

import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.api.Status;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class t implements y4.l {

    /* renamed from: a, reason: collision with root package name */
    public final Status f10711a;

    /* renamed from: b, reason: collision with root package name */
    public final ApplicationMetadata f10712b;

    /* renamed from: c, reason: collision with root package name */
    public final String f10713c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f10714e;

    public t(Status status, ApplicationMetadata applicationMetadata, String str, String str2, boolean z7) {
        this.f10711a = status;
        this.f10712b = applicationMetadata;
        this.f10713c = str;
        this.d = str2;
        this.f10714e = z7;
    }

    @Override // y4.l
    public final Status h() {
        return this.f10711a;
    }
}
