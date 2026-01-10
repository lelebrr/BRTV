package a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.media3.common.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.fastjson.parser.JSONLexerBase;
import com.alibaba.fastjson.parser.JSONScanner;
import com.google.android.gms.internal.cast.u7;
import com.google.android.gms.internal.cast.x6;
import com.lzy.okgo.db.ColumnEntity;
import com.lzy.okgo.db.TableEntity;
import com.lzy.okgo.utils.OkLogger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class e {
    public static void A(long j10, StringBuilder sb, String str, String str2) {
        sb.append(System.currentTimeMillis() - j10);
        sb.append(str);
        OkLogger.v(str2, sb.toString());
    }

    public static /* synthetic */ void B(u7 u7Var) {
        if (u7Var != null) {
            throw new ClassCastException();
        }
    }

    public static /* synthetic */ void C(Object obj) {
        throw new ClassCastException();
    }

    public static void D(String str, String str2, String str3) {
        Log.w(str3, str + str2);
    }

    public static /* synthetic */ String E(int i6) {
        return i6 != 1 ? i6 != 2 ? i6 != 3 ? "null" : "REMOVING" : "ADDING" : "NONE";
    }

    public static /* synthetic */ String F(int i6) {
        return i6 != 1 ? i6 != 2 ? i6 != 3 ? i6 != 4 ? "null" : "INVISIBLE" : "GONE" : "VISIBLE" : "REMOVED";
    }

    public static final void a(int i6, View view) {
        int iA = u.h.a(i6);
        if (iA == 0) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                if (android.util.Log.isLoggable("FragmentManager", 2)) {
                    android.util.Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                }
                viewGroup.removeView(view);
                return;
            }
            return;
        }
        if (iA == 1) {
            if (android.util.Log.isLoggable("FragmentManager", 2)) {
                android.util.Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
            }
            view.setVisibility(0);
            return;
        }
        if (iA == 2) {
            if (android.util.Log.isLoggable("FragmentManager", 2)) {
                android.util.Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
            }
            view.setVisibility(8);
            return;
        }
        if (iA != 3) {
            return;
        }
        if (android.util.Log.isLoggable("FragmentManager", 2)) {
            android.util.Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
        }
        view.setVisibility(4);
    }

    public static int b(int i6) {
        if (i6 == 0) {
            return 2;
        }
        if (i6 == 4) {
            return 4;
        }
        if (i6 == 8) {
            return 3;
        }
        throw new IllegalArgumentException(n(i6, "Unknown visibility "));
    }

    public static int c(View view) {
        if (view.getAlpha() == 0.0f && view.getVisibility() == 0) {
            return 4;
        }
        return b(view.getVisibility());
    }

    public static char d(int i6, int i10, int i11, JSONLexerBase jSONLexerBase) {
        return jSONLexerBase.charAt(i6 + i10 + i11);
    }

    public static char e(int i6, int i10, int i11, JSONScanner jSONScanner) {
        return jSONScanner.charAt(i6 + i10 + i11);
    }

    public static int f(int i6, int i10, int i11) {
        return x6.K(i6) + i10 + i11;
    }

    public static int g(int i6, int i10, int i11, int i12) {
        return ((i6 + i10) - i11) - i12;
    }

    public static int h(int i6, int i10, String str) {
        return (str.hashCode() + i6) * i10;
    }

    public static View i(ViewGroup viewGroup, int i6, ViewGroup viewGroup2, boolean z7) {
        return LayoutInflater.from(viewGroup.getContext()).inflate(i6, viewGroup2, z7);
    }

    public static TableEntity j(String str, String str2, TableEntity tableEntity) {
        return tableEntity.addColumn(new ColumnEntity(str, str2));
    }

    public static ClassCastException k(int i6, ArrayList arrayList) {
        arrayList.get(i6).getClass();
        return new ClassCastException();
    }

    public static ClassCastException l(Iterator it) {
        it.next().getClass();
        return new ClassCastException();
    }

    public static String m(int i6, int i10, String str, String str2) {
        return str + i6 + str2 + i10;
    }

    public static String n(int i6, String str) {
        return str + i6;
    }

    public static String o(long j10, String str) {
        return str + j10;
    }

    public static String p(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.exceptionLabel());
        return sb.toString();
    }

    public static String q(Class cls, String str) {
        return str + cls;
    }

    public static String r(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String s(StringBuilder sb, long j10, String str) {
        sb.append(j10);
        sb.append(str);
        return sb.toString();
    }

    public static String t(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static StringBuilder u(int i6, String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i6);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder v(String str, int i6, String str2, int i10, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i6);
        sb.append(str2);
        sb.append(i10);
        sb.append(str3);
        return sb;
    }

    public static StringBuilder w(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder x(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    public static void y(int i6, String str, String str2) {
        Log.w(str2, str + i6);
    }

    public static void z(int i6, HashMap map, String str, int i10, String str2) {
        map.put(str, Integer.valueOf(i6));
        map.put(str2, Integer.valueOf(i10));
    }
}
