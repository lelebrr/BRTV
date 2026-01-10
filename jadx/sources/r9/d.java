package r9;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements Iterator, k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final String f9621a;

    /* renamed from: b, reason: collision with root package name */
    public int f9622b;

    /* renamed from: c, reason: collision with root package name */
    public int f9623c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f9624e;

    public d(String str) {
        j9.i.f(str, "string");
        this.f9621a = str;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i6;
        int i10;
        int i11 = this.f9622b;
        if (i11 != 0) {
            return i11 == 1;
        }
        if (this.f9624e < 0) {
            this.f9622b = 2;
            return false;
        }
        String str = this.f9621a;
        int length = str.length();
        int length2 = str.length();
        for (int i12 = this.f9623c; i12 < length2; i12++) {
            char cCharAt = str.charAt(i12);
            if (cCharAt == '\n' || cCharAt == '\r') {
                i6 = (cCharAt == '\r' && (i10 = i12 + 1) < str.length() && str.charAt(i10) == '\n') ? 2 : 1;
                length = i12;
                this.f9622b = 1;
                this.f9624e = i6;
                this.d = length;
                return true;
            }
        }
        i6 = -1;
        this.f9622b = 1;
        this.f9624e = i6;
        this.d = length;
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f9622b = 0;
        int i6 = this.d;
        int i10 = this.f9623c;
        this.f9623c = this.f9624e + i6;
        return this.f9621a.subSequence(i10, i6).toString();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
