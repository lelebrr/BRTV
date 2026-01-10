package x2;

import java.io.IOException;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class s implements Appendable {

    /* renamed from: a, reason: collision with root package name */
    public final Appendable f10959a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f10960b = true;

    public s(Appendable appendable) {
        this.f10959a = appendable;
    }

    @Override // java.lang.Appendable
    public final Appendable append(char c5) throws IOException {
        boolean z7 = this.f10960b;
        Appendable appendable = this.f10959a;
        if (z7) {
            this.f10960b = false;
            appendable.append("  ");
        }
        this.f10960b = c5 == '\n';
        appendable.append(c5);
        return this;
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence) throws IOException {
        if (charSequence == null) {
            charSequence = "";
        }
        append(charSequence, 0, charSequence.length());
        return this;
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i6, int i10) throws IOException {
        if (charSequence == null) {
            charSequence = "";
        }
        boolean z7 = this.f10960b;
        Appendable appendable = this.f10959a;
        boolean z10 = false;
        if (z7) {
            this.f10960b = false;
            appendable.append("  ");
        }
        if (charSequence.length() > 0 && charSequence.charAt(i10 - 1) == '\n') {
            z10 = true;
        }
        this.f10960b = z10;
        appendable.append(charSequence, i6, i10);
        return this;
    }
}
