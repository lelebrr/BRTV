package q4;

import android.os.Parcel;
import com.google.android.gms.internal.cast.d0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x extends com.google.android.gms.internal.cast.s {
    public final g d;

    /* renamed from: e, reason: collision with root package name */
    public final Class f9231e;

    public x(g gVar) {
        super("com.google.android.gms.cast.framework.ISessionManagerListener", 0);
        this.d = gVar;
        this.f9231e = b.class;
    }

    @Override // com.google.android.gms.internal.cast.s
    public final boolean w(int i6, Parcel parcel, Parcel parcel2) {
        Class cls = this.f9231e;
        g gVar = this.d;
        switch (i6) {
            case 1:
                m5.b bVar = new m5.b(gVar);
                parcel2.writeNoException();
                d0.d(parcel2, bVar);
                return true;
            case 2:
                m5.a aVarX = m5.b.x(parcel.readStrongBinder());
                d0.b(parcel);
                e eVar = (e) m5.b.y(aVarX);
                if (cls.isInstance(eVar) && gVar != null) {
                    gVar.n((e) cls.cast(eVar));
                }
                parcel2.writeNoException();
                return true;
            case 3:
                m5.a aVarX2 = m5.b.x(parcel.readStrongBinder());
                String string = parcel.readString();
                d0.b(parcel);
                e eVar2 = (e) m5.b.y(aVarX2);
                if (cls.isInstance(eVar2) && gVar != null) {
                    gVar.h((e) cls.cast(eVar2), string);
                }
                parcel2.writeNoException();
                return true;
            case 4:
                m5.a aVarX3 = m5.b.x(parcel.readStrongBinder());
                int i10 = parcel.readInt();
                d0.b(parcel);
                e eVar3 = (e) m5.b.y(aVarX3);
                if (cls.isInstance(eVar3) && gVar != null) {
                    gVar.a((e) cls.cast(eVar3), i10);
                }
                parcel2.writeNoException();
                return true;
            case 5:
                m5.a aVarX4 = m5.b.x(parcel.readStrongBinder());
                d0.b(parcel);
                e eVar4 = (e) m5.b.y(aVarX4);
                if (cls.isInstance(eVar4) && gVar != null) {
                    gVar.l((e) cls.cast(eVar4));
                }
                parcel2.writeNoException();
                return true;
            case 6:
                m5.a aVarX5 = m5.b.x(parcel.readStrongBinder());
                int i11 = parcel.readInt();
                d0.b(parcel);
                e eVar5 = (e) m5.b.y(aVarX5);
                if (cls.isInstance(eVar5) && gVar != null) {
                    gVar.m((e) cls.cast(eVar5), i11);
                }
                parcel2.writeNoException();
                return true;
            case 7:
                m5.a aVarX6 = m5.b.x(parcel.readStrongBinder());
                String string2 = parcel.readString();
                d0.b(parcel);
                e eVar6 = (e) m5.b.y(aVarX6);
                if (cls.isInstance(eVar6) && gVar != null) {
                    gVar.k((e) cls.cast(eVar6), string2);
                }
                parcel2.writeNoException();
                return true;
            case 8:
                m5.a aVarX7 = m5.b.x(parcel.readStrongBinder());
                int i12 = d0.f4128a;
                boolean z7 = parcel.readInt() != 0;
                d0.b(parcel);
                e eVar7 = (e) m5.b.y(aVarX7);
                if (cls.isInstance(eVar7) && gVar != null) {
                    gVar.d((e) cls.cast(eVar7), z7);
                }
                parcel2.writeNoException();
                return true;
            case 9:
                m5.a aVarX8 = m5.b.x(parcel.readStrongBinder());
                int i13 = parcel.readInt();
                d0.b(parcel);
                e eVar8 = (e) m5.b.y(aVarX8);
                if (cls.isInstance(eVar8) && gVar != null) {
                    gVar.i((e) cls.cast(eVar8), i13);
                }
                parcel2.writeNoException();
                return true;
            case 10:
                m5.a aVarX9 = m5.b.x(parcel.readStrongBinder());
                int i14 = parcel.readInt();
                d0.b(parcel);
                e eVar9 = (e) m5.b.y(aVarX9);
                if (cls.isInstance(eVar9) && gVar != null) {
                    gVar.g((e) cls.cast(eVar9), i14);
                }
                parcel2.writeNoException();
                return true;
            case 11:
                parcel2.writeNoException();
                parcel2.writeInt(12451000);
                return true;
            default:
                return false;
        }
    }
}
