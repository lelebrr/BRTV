package androidx.core.graphics.drawable;

import a2.b;
import a2.c;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcel;
import android.os.Parcelable;
import java.nio.charset.Charset;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static IconCompat read(b bVar) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f1253a = bVar.f(iconCompat.f1253a, 1);
        byte[] bArr = iconCompat.f1255c;
        if (bVar.e(2)) {
            Parcel parcel = ((c) bVar).f84e;
            int i6 = parcel.readInt();
            if (i6 < 0) {
                bArr = null;
            } else {
                byte[] bArr2 = new byte[i6];
                parcel.readByteArray(bArr2);
                bArr = bArr2;
            }
        }
        iconCompat.f1255c = bArr;
        iconCompat.d = bVar.g(iconCompat.d, 3);
        iconCompat.f1256e = bVar.f(iconCompat.f1256e, 4);
        iconCompat.f = bVar.f(iconCompat.f, 5);
        iconCompat.f1257g = (ColorStateList) bVar.g(iconCompat.f1257g, 6);
        String string = iconCompat.f1259i;
        if (bVar.e(7)) {
            string = ((c) bVar).f84e.readString();
        }
        iconCompat.f1259i = string;
        String string2 = iconCompat.f1260j;
        if (bVar.e(8)) {
            string2 = ((c) bVar).f84e.readString();
        }
        iconCompat.f1260j = string2;
        iconCompat.f1258h = PorterDuff.Mode.valueOf(iconCompat.f1259i);
        switch (iconCompat.f1253a) {
            case -1:
                Parcelable parcelable = iconCompat.d;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                iconCompat.f1254b = parcelable;
                return iconCompat;
            case 0:
            default:
                return iconCompat;
            case 1:
            case 5:
                Parcelable parcelable2 = iconCompat.d;
                if (parcelable2 != null) {
                    iconCompat.f1254b = parcelable2;
                } else {
                    byte[] bArr3 = iconCompat.f1255c;
                    iconCompat.f1254b = bArr3;
                    iconCompat.f1253a = 3;
                    iconCompat.f1256e = 0;
                    iconCompat.f = bArr3.length;
                }
                return iconCompat;
            case 2:
            case 4:
            case 6:
                String str = new String(iconCompat.f1255c, Charset.forName("UTF-16"));
                iconCompat.f1254b = str;
                if (iconCompat.f1253a == 2 && iconCompat.f1260j == null) {
                    iconCompat.f1260j = str.split(":", -1)[0];
                }
                return iconCompat;
            case 3:
                iconCompat.f1254b = iconCompat.f1255c;
                return iconCompat;
        }
    }

    public static void write(IconCompat iconCompat, b bVar) {
        bVar.getClass();
        iconCompat.f1259i = iconCompat.f1258h.name();
        switch (iconCompat.f1253a) {
            case -1:
                iconCompat.d = (Parcelable) iconCompat.f1254b;
                break;
            case 1:
            case 5:
                iconCompat.d = (Parcelable) iconCompat.f1254b;
                break;
            case 2:
                iconCompat.f1255c = ((String) iconCompat.f1254b).getBytes(Charset.forName("UTF-16"));
                break;
            case 3:
                iconCompat.f1255c = (byte[]) iconCompat.f1254b;
                break;
            case 4:
            case 6:
                iconCompat.f1255c = iconCompat.f1254b.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
        int i6 = iconCompat.f1253a;
        if (-1 != i6) {
            bVar.j(i6, 1);
        }
        byte[] bArr = iconCompat.f1255c;
        if (bArr != null) {
            bVar.i(2);
            int length = bArr.length;
            Parcel parcel = ((c) bVar).f84e;
            parcel.writeInt(length);
            parcel.writeByteArray(bArr);
        }
        Parcelable parcelable = iconCompat.d;
        if (parcelable != null) {
            bVar.k(parcelable, 3);
        }
        int i10 = iconCompat.f1256e;
        if (i10 != 0) {
            bVar.j(i10, 4);
        }
        int i11 = iconCompat.f;
        if (i11 != 0) {
            bVar.j(i11, 5);
        }
        ColorStateList colorStateList = iconCompat.f1257g;
        if (colorStateList != null) {
            bVar.k(colorStateList, 6);
        }
        String str = iconCompat.f1259i;
        if (str != null) {
            bVar.i(7);
            ((c) bVar).f84e.writeString(str);
        }
        String str2 = iconCompat.f1260j;
        if (str2 != null) {
            bVar.i(8);
            ((c) bVar).f84e.writeString(str2);
        }
    }
}
