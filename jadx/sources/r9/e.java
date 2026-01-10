package r9;

import java.io.Serializable;
import java.util.regex.Pattern;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Pattern f9625a;

    public e(String str) {
        Pattern patternCompile = Pattern.compile(str);
        j9.i.e(patternCompile, "compile(...)");
        this.f9625a = patternCompile;
    }

    public final String toString() {
        String string = this.f9625a.toString();
        j9.i.e(string, "toString(...)");
        return string;
    }
}
