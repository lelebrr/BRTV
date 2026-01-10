package d7;

import java.util.Iterator;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f4 extends r5 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6143b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ f4(Iterator it, int i6) {
        super(it);
        this.f6143b = i6;
    }

    @Override // d7.r5
    public final Object a(Object obj) {
        switch (this.f6143b) {
            case 0:
                return ((Map.Entry) obj).getKey();
            case 1:
                return ((Map.Entry) obj).getValue();
            default:
                return new t4((Map.Entry) obj);
        }
    }
}
