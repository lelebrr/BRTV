package n7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public static final int f8479a;

    static {
        int i6;
        String property = System.getProperty("java.version");
        try {
            String[] strArrSplit = property.split("[._]");
            i6 = Integer.parseInt(strArrSplit[0]);
            if (i6 == 1 && strArrSplit.length > 1) {
                i6 = Integer.parseInt(strArrSplit[1]);
            }
        } catch (NumberFormatException unused) {
            i6 = -1;
        }
        if (i6 == -1) {
            try {
                StringBuilder sb = new StringBuilder();
                for (int i10 = 0; i10 < property.length(); i10++) {
                    char cCharAt = property.charAt(i10);
                    if (!Character.isDigit(cCharAt)) {
                        break;
                    }
                    sb.append(cCharAt);
                }
                i6 = Integer.parseInt(sb.toString());
            } catch (NumberFormatException unused2) {
                i6 = -1;
            }
        }
        if (i6 == -1) {
            i6 = 6;
        }
        f8479a = i6;
    }
}
