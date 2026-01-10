package ea;

import android.view.ViewGroup;
import android.widget.ImageView;
import java.util.ArrayList;
import okio.Path;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class q {
    public static r4.b a(int i6, int i10, int i11) {
        if (i6 == -2) {
            return n2.b.f8375c;
        }
        int i12 = i6 - i11;
        if (i12 > 0) {
            return new n2.a(i12);
        }
        int i13 = i10 - i11;
        if (i13 > 0) {
            return new n2.a(i13);
        }
        return null;
    }

    public static n2.h b(n2.f fVar) {
        ViewGroup.LayoutParams layoutParams = fVar.f8379a.getLayoutParams();
        int i6 = layoutParams != null ? layoutParams.width : -1;
        ImageView imageView = fVar.f8379a;
        int width = imageView.getWidth();
        boolean z7 = fVar.f8380b;
        r4.b bVarA = a(i6, width, z7 ? imageView.getPaddingRight() + imageView.getPaddingLeft() : 0);
        if (bVarA == null) {
            return null;
        }
        ViewGroup.LayoutParams layoutParams2 = imageView.getLayoutParams();
        r4.b bVarA2 = a(layoutParams2 != null ? layoutParams2.height : -1, imageView.getHeight(), z7 ? imageView.getPaddingBottom() + imageView.getPaddingTop() : 0);
        if (bVarA2 == null) {
            return null;
        }
        return new n2.h(bVarA, bVarA2);
    }

    public static /* synthetic */ boolean c(int i6) {
        if (i6 == 1 || i6 == 2 || i6 == 3) {
            return false;
        }
        if (i6 == 4 || i6 == 5) {
            return true;
        }
        throw null;
    }

    public static float d(float f, float f3, float f4, float f5) {
        return ((f - f3) * f4) + f5;
    }

    public static Object e(int i6, ArrayList arrayList) {
        return arrayList.get(arrayList.size() - i6);
    }

    public static String f(int i6, String str, String str2) {
        return str + i6 + str2;
    }

    public static String g(Object obj, String str) {
        return str + obj;
    }

    public static String h(String str, String str2) {
        return str + str2;
    }

    public static String i(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String j(String str, String str2, StringBuilder sb, int i6) {
        sb.append(a2.a.s(str, str2));
        sb.append(i6);
        return sb.toString();
    }

    public static String k(String str, String str2, StringBuilder sb, String str3) {
        sb.append(a2.a.s(str, str2));
        sb.append(str3);
        return sb.toString();
    }

    public static String l(Path path, String str) {
        return str + path;
    }

    public static StringBuilder m(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    public static /* synthetic */ void n(Object obj) {
        if (obj != null) {
            throw new ClassCastException();
        }
    }

    public static void o(StringBuilder sb, String str, char c5, String str2, String str3) {
        sb.append(str);
        sb.append(c5);
        sb.append(a2.a.s(str2, str3));
    }

    public static String p(String str, String str2) {
        return str + str2;
    }

    public static /* synthetic */ String q(int i6) {
        switch (i6) {
            case 1:
                return "NONE";
            case 2:
                return "LEFT";
            case 3:
                return "TOP";
            case 4:
                return "RIGHT";
            case 5:
                return "BOTTOM";
            case 6:
                return "BASELINE";
            case 7:
                return "CENTER";
            case 8:
                return "CENTER_X";
            case 9:
                return "CENTER_Y";
            default:
                throw null;
        }
    }

    public static /* synthetic */ String r(int i6) {
        switch (i6) {
            case 1:
                return "BEGIN_ARRAY";
            case 2:
                return "END_ARRAY";
            case 3:
                return "BEGIN_OBJECT";
            case 4:
                return "END_OBJECT";
            case 5:
                return "NAME";
            case 6:
                return "STRING";
            case 7:
                return "NUMBER";
            case 8:
                return "BOOLEAN";
            case 9:
                return "NULL";
            case 10:
                return "END_DOCUMENT";
            default:
                return "null";
        }
    }

    public static /* synthetic */ String s(int i6) {
        return i6 != 1 ? i6 != 2 ? i6 != 3 ? i6 != 4 ? i6 != 5 ? "null" : "MEMORY_CACHE" : "RESOURCE_DISK_CACHE" : "DATA_DISK_CACHE" : "REMOTE" : "LOCAL";
    }

    public static /* synthetic */ String t(int i6) {
        switch (i6) {
            case 1:
                return "INITIALIZE";
            case 2:
                return "RESOURCE_CACHE";
            case 3:
                return "DATA_CACHE";
            case 4:
                return "SOURCE";
            case 5:
                return "ENCODE";
            case 6:
                return "FINISHED";
            default:
                return "null";
        }
    }
}
