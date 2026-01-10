package l0;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import androidx.appcompat.app.r0;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: b, reason: collision with root package name */
    public static final String f7931b;

    /* renamed from: c, reason: collision with root package name */
    public static final String f7932c;
    public static final b d;

    /* renamed from: e, reason: collision with root package name */
    public static final b f7933e;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f7934a;

    static {
        r0 r0Var = j.f7942c;
        f7931b = Character.toString((char) 8206);
        f7932c = Character.toString((char) 8207);
        d = new b(false);
        f7933e = new b(true);
    }

    public b(boolean z7) {
        r0 r0Var = j.f7940a;
        this.f7934a = z7;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0068, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0070, code lost:
    
        if (r1 != 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0073, code lost:
    
        if (r2 == 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0079, code lost:
    
        if (r0.f7930c <= 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007f, code lost:
    
        switch(r0.a()) {
            case 14: goto L66;
            case 15: goto L66;
            case 16: goto L65;
            case 17: goto L65;
            case 18: goto L64;
            default: goto L70;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0083, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0086, code lost:
    
        if (r1 != r3) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0089, code lost:
    
        r3 = r3 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x008c, code lost:
    
        if (r1 != r3) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:?, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:?, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:?, code lost:
    
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int a(java.lang.CharSequence r9) {
        /*
            l0.a r0 = new l0.a
            r0.<init>(r9)
            r9 = 0
            r0.f7930c = r9
            r1 = 0
            r2 = 0
            r3 = 0
        Lb:
            int r4 = r0.f7930c
            int r5 = r0.f7929b
            r6 = 1
            r7 = -1
            if (r4 >= r5) goto L70
            if (r1 != 0) goto L70
            java.lang.CharSequence r5 = r0.f7928a
            char r4 = r5.charAt(r4)
            r0.d = r4
            boolean r4 = java.lang.Character.isHighSurrogate(r4)
            if (r4 == 0) goto L37
            int r4 = r0.f7930c
            int r4 = java.lang.Character.codePointAt(r5, r4)
            int r5 = r0.f7930c
            int r8 = java.lang.Character.charCount(r4)
            int r8 = r8 + r5
            r0.f7930c = r8
            byte r4 = java.lang.Character.getDirectionality(r4)
            goto L4b
        L37:
            int r4 = r0.f7930c
            int r4 = r4 + r6
            r0.f7930c = r4
            char r4 = r0.d
            r5 = 1792(0x700, float:2.511E-42)
            if (r4 >= r5) goto L47
            byte[] r5 = l0.a.f7927e
            r4 = r5[r4]
            goto L4b
        L47:
            byte r4 = java.lang.Character.getDirectionality(r4)
        L4b:
            if (r4 == 0) goto L6a
            if (r4 == r6) goto L66
            r5 = 2
            if (r4 == r5) goto L66
            r5 = 9
            if (r4 == r5) goto Lb
            switch(r4) {
                case 14: goto L62;
                case 15: goto L62;
                case 16: goto L5e;
                case 17: goto L5e;
                case 18: goto L5a;
                default: goto L59;
            }
        L59:
            goto L6e
        L5a:
            int r3 = r3 + (-1)
            r2 = 0
            goto Lb
        L5e:
            int r3 = r3 + 1
            r2 = 1
            goto Lb
        L62:
            int r3 = r3 + 1
            r2 = -1
            goto Lb
        L66:
            if (r3 != 0) goto L6e
        L68:
            r9 = 1
            goto L8f
        L6a:
            if (r3 != 0) goto L6e
        L6c:
            r9 = -1
            goto L8f
        L6e:
            r1 = r3
            goto Lb
        L70:
            if (r1 != 0) goto L73
            goto L8f
        L73:
            if (r2 == 0) goto L77
            r9 = r2
            goto L8f
        L77:
            int r2 = r0.f7930c
            if (r2 <= 0) goto L8f
            byte r2 = r0.a()
            switch(r2) {
                case 14: goto L8c;
                case 15: goto L8c;
                case 16: goto L86;
                case 17: goto L86;
                case 18: goto L83;
                default: goto L82;
            }
        L82:
            goto L77
        L83:
            int r3 = r3 + 1
            goto L77
        L86:
            if (r1 != r3) goto L89
            goto L68
        L89:
            int r3 = r3 + (-1)
            goto L77
        L8c:
            if (r1 != r3) goto L89
            goto L6c
        L8f:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: l0.b.a(java.lang.CharSequence):int");
    }

    public static int b(CharSequence charSequence) {
        a aVar = new a(charSequence);
        aVar.f7930c = aVar.f7929b;
        int i6 = 0;
        int i10 = 0;
        while (aVar.f7930c > 0) {
            byte bA = aVar.a();
            if (bA != 0) {
                if (bA == 1 || bA == 2) {
                    if (i6 == 0) {
                        return 1;
                    }
                    if (i10 == 0) {
                        i10 = i6;
                    }
                } else if (bA != 9) {
                    switch (bA) {
                        case 14:
                        case 15:
                            if (i10 == i6) {
                                return -1;
                            }
                            i6--;
                            break;
                        case 16:
                        case 17:
                            if (i10 == i6) {
                                return 1;
                            }
                            i6--;
                            break;
                        case 18:
                            i6++;
                            break;
                        default:
                            if (i10 != 0) {
                                break;
                            } else {
                                i10 = i6;
                                break;
                            }
                    }
                } else {
                    continue;
                }
            } else {
                if (i6 == 0) {
                    return -1;
                }
                if (i10 == 0) {
                    i10 = i6;
                }
            }
        }
        return 0;
    }

    public static b c() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? f7933e : d;
    }

    public final SpannableStringBuilder d(CharSequence charSequence) {
        r0 r0Var = j.f7942c;
        if (charSequence == null) {
            return null;
        }
        boolean zD = r0Var.d(charSequence, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        boolean zD2 = (zD ? j.f7941b : j.f7940a).d(charSequence, charSequence.length());
        String str = "";
        String str2 = f7932c;
        String str3 = f7931b;
        boolean z7 = this.f7934a;
        spannableStringBuilder.append((CharSequence) ((z7 || !(zD2 || a(charSequence) == 1)) ? (!z7 || (zD2 && a(charSequence) != -1)) ? "" : str2 : str3));
        if (zD != z7) {
            spannableStringBuilder.append(zD ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        boolean zD3 = (zD ? j.f7941b : j.f7940a).d(charSequence, charSequence.length());
        if (!z7 && (zD3 || b(charSequence) == 1)) {
            str = str3;
        } else if (z7 && (!zD3 || b(charSequence) == -1)) {
            str = str2;
        }
        spannableStringBuilder.append((CharSequence) str);
        return spannableStringBuilder;
    }
}
