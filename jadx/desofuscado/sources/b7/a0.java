package b7;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a0 implements Iterator {

    /* renamed from: b, reason: collision with root package name */
    public String f3287b;

    /* renamed from: c, reason: collision with root package name */
    public final CharSequence f3288c;
    public final e d;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ a0.b f3290g;

    /* renamed from: a, reason: collision with root package name */
    public int f3286a = 2;

    /* renamed from: e, reason: collision with root package name */
    public int f3289e = 0;

    public a0(a0.b bVar, b0 b0Var, CharSequence charSequence) {
        this.f3290g = bVar;
        this.d = b0Var.f3291a;
        this.f = b0Var.f3293c;
        this.f3288c = charSequence;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        String string;
        b.o(this.f3286a != 4);
        int iA = u.h.a(this.f3286a);
        if (iA == 0) {
            return true;
        }
        if (iA == 2) {
            return false;
        }
        this.f3286a = 4;
        int i6 = this.f3289e;
        while (true) {
            int length = this.f3289e;
            if (length == -1) {
                this.f3286a = 3;
                string = null;
                break;
            }
            d dVar = (d) this.f3290g.f32b;
            CharSequence charSequence = this.f3288c;
            int length2 = charSequence.length();
            b.k(length, length2);
            while (true) {
                if (length >= length2) {
                    length = -1;
                    break;
                }
                if (dVar.a(charSequence.charAt(length))) {
                    break;
                }
                length++;
            }
            if (length == -1) {
                length = charSequence.length();
                this.f3289e = -1;
            } else {
                this.f3289e = length + 1;
            }
            int i10 = this.f3289e;
            if (i10 == i6) {
                int i11 = i10 + 1;
                this.f3289e = i11;
                if (i11 > charSequence.length()) {
                    this.f3289e = -1;
                }
            } else {
                e eVar = this.d;
                if (i6 < length) {
                    charSequence.charAt(i6);
                    eVar.getClass();
                }
                if (length > i6) {
                    charSequence.charAt(length - 1);
                    eVar.getClass();
                }
                int i12 = this.f;
                if (i12 == 1) {
                    length = charSequence.length();
                    this.f3289e = -1;
                    if (length > i6) {
                        charSequence.charAt(length - 1);
                        eVar.getClass();
                    }
                } else {
                    this.f = i12 - 1;
                }
                string = charSequence.subSequence(i6, length).toString();
            }
        }
        this.f3287b = string;
        if (this.f3286a == 3) {
            return false;
        }
        this.f3286a = 1;
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f3286a = 2;
        String str = this.f3287b;
        this.f3287b = null;
        return str;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
