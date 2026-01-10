package b7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends c {

    /* renamed from: a, reason: collision with root package name */
    public final char f3295a;

    public d(char c5) {
        this.f3295a = c5;
    }

    @Override // b7.c
    public final boolean a(char c5) {
        return c5 == this.f3295a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CharMatcher.is('");
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        char c5 = this.f3295a;
        for (int i6 = 0; i6 < 4; i6++) {
            cArr[5 - i6] = "0123456789ABCDEF".charAt(c5 & 15);
            c5 = (char) (c5 >> 4);
        }
        sb.append(String.copyValueOf(cArr));
        sb.append("')");
        return sb.toString();
    }
}
