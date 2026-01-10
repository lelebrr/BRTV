package coil.memory;

import android.os.Parcel;
import android.os.Parcelable;
import h5.a;
import j9.i;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class MemoryCache$Key implements Parcelable {

    @Deprecated
    public static final Parcelable.Creator<MemoryCache$Key> CREATOR = new a(6);

    /* renamed from: a, reason: collision with root package name */
    public final String f3487a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f3488b;

    public MemoryCache$Key(String str, Map map) {
        this.f3487a = str;
        this.f3488b = map;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MemoryCache$Key) {
            MemoryCache$Key memoryCache$Key = (MemoryCache$Key) obj;
            if (i.a(this.f3487a, memoryCache$Key.f3487a) && i.a(this.f3488b, memoryCache$Key.f3488b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f3488b.hashCode() + (this.f3487a.hashCode() * 31);
    }

    public final String toString() {
        return "Key(key=" + this.f3487a + ", extras=" + this.f3488b + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeString(this.f3487a);
        Map map = this.f3488b;
        parcel.writeInt(map.size());
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            parcel.writeString(str);
            parcel.writeString(str2);
        }
    }
}
