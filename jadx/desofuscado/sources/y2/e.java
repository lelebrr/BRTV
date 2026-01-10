package y2;

import d7.c2;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class e extends c2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11353b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e(int i6) {
        super(2);
        this.f11353b = i6;
    }

    public final h e() {
        switch (this.f11353b) {
            case 0:
                return new d(this);
            default:
                return new j(this);
        }
    }
}
