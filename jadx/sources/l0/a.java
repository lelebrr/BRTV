package l0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: e, reason: collision with root package name */
    public static final byte[] f7927e = new byte[1792];

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f7928a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7929b;

    /* renamed from: c, reason: collision with root package name */
    public int f7930c;
    public char d;

    static {
        for (int i6 = 0; i6 < 1792; i6++) {
            f7927e[i6] = Character.getDirectionality(i6);
        }
    }

    public a(CharSequence charSequence) {
        this.f7928a = charSequence;
        this.f7929b = charSequence.length();
    }

    public final byte a() {
        int i6 = this.f7930c - 1;
        CharSequence charSequence = this.f7928a;
        char cCharAt = charSequence.charAt(i6);
        this.d = cCharAt;
        if (Character.isLowSurrogate(cCharAt)) {
            int iCodePointBefore = Character.codePointBefore(charSequence, this.f7930c);
            this.f7930c -= Character.charCount(iCodePointBefore);
            return Character.getDirectionality(iCodePointBefore);
        }
        this.f7930c--;
        char c5 = this.d;
        return c5 < 1792 ? f7927e[c5] : Character.getDirectionality(c5);
    }
}
