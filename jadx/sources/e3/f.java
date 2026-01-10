package e3;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import java.nio.ByteBuffer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements v2.j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6497a;

    /* renamed from: b, reason: collision with root package name */
    public final p f6498b;

    public /* synthetic */ f(p pVar, int i6) {
        this.f6497a = i6;
        this.f6498b = pVar;
    }

    @Override // v2.j
    public final x2.x a(Object obj, int i6, int i10, v2.h hVar) {
        switch (this.f6497a) {
            case 0:
                p pVar = this.f6498b;
                return pVar.a(new a1.b((ByteBuffer) obj, pVar.d, pVar.f6526c, 16), i6, i10, hVar, p.f6522k);
            default:
                p pVar2 = this.f6498b;
                return pVar2.a(new a1.b((ParcelFileDescriptor) obj, pVar2.d, pVar2.f6526c), i6, i10, hVar, p.f6522k);
        }
    }

    @Override // v2.j
    public final boolean b(Object obj, v2.h hVar) {
        switch (this.f6497a) {
            case 0:
                this.f6498b.getClass();
                return true;
            default:
                ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) obj;
                String str = Build.MANUFACTURER;
                return (!("HUAWEI".equalsIgnoreCase(str) || "HONOR".equalsIgnoreCase(str)) || parcelFileDescriptor.getStatSize() <= 536870912) && !"robolectric".equals(Build.FINGERPRINT);
        }
    }
}
