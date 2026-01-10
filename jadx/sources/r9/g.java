package r9;

import java.util.ArrayList;
import java.util.List;
import x8.r;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class g extends o9.e {
    public static String K(String str) {
        List listF;
        j9.i.f(str, "<this>");
        if (f.e0("|")) {
            throw new IllegalArgumentException("marginPrefix must be non-blank string.");
        }
        d dVar = new d(str);
        if (dVar.hasNext()) {
            Object next = dVar.next();
            if (dVar.hasNext()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(next);
                while (dVar.hasNext()) {
                    arrayList.add(dVar.next());
                }
                listF = arrayList;
            } else {
                listF = a2.a.F(next);
            }
        } else {
            listF = r.f11098a;
        }
        int length = str.length();
        listF.size();
        int iO = x8.k.O(listF);
        ArrayList arrayList2 = new ArrayList();
        int i6 = 0;
        for (Object obj : listF) {
            int i10 = i6 + 1;
            String strSubstring = null;
            if (i6 < 0) {
                x8.k.P();
                throw null;
            }
            String str2 = (String) obj;
            if ((i6 != 0 && i6 != iO) || !f.e0(str2)) {
                int length2 = str2.length();
                int i11 = 0;
                while (true) {
                    if (i11 >= length2) {
                        i11 = -1;
                        break;
                    }
                    char cCharAt = str2.charAt(i11);
                    if (!Character.isWhitespace(cCharAt) && !Character.isSpaceChar(cCharAt)) {
                        break;
                    }
                    i11++;
                }
                if (i11 != -1 && n.U(str2, i11, "|", false)) {
                    strSubstring = str2.substring(1 + i11);
                    j9.i.e(strSubstring, "substring(...)");
                }
                if (strSubstring == null) {
                    strSubstring = str2;
                }
            }
            if (strSubstring != null) {
                arrayList2.add(strSubstring);
            }
            i6 = i10;
        }
        StringBuilder sb = new StringBuilder(length);
        x8.j.W(arrayList2, sb, "\n", "", "", -1, "...", null);
        return sb.toString();
    }
}
