package com.google.android.gms.common.server.response;

import android.util.Base64;
import b5.l;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.converter.StringToIntConverter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import k5.a;
import r4.b;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class FastSafeParcelableJsonResponse implements SafeParcelable {
    public static final Object o(FastJsonResponse$Field fastJsonResponse$Field, Object obj) {
        StringToIntConverter stringToIntConverter = fastJsonResponse$Field.f4056k;
        if (stringToIntConverter == null) {
            return obj;
        }
        String str = (String) stringToIntConverter.f4042c.get(((Integer) obj).intValue());
        return (str == null && stringToIntConverter.f4041b.containsKey("gms_unknown")) ? "gms_unknown" : str;
    }

    public static final void p(StringBuilder sb, FastJsonResponse$Field fastJsonResponse$Field, Object obj) {
        int i6 = fastJsonResponse$Field.f4049b;
        if (i6 == 11) {
            Class cls = fastJsonResponse$Field.f4053h;
            l.e(cls);
            sb.append(((FastSafeParcelableJsonResponse) cls.cast(obj)).toString());
        } else {
            if (i6 != 7) {
                sb.append(obj);
                return;
            }
            sb.append("\"");
            sb.append(a.b((String) obj));
            sb.append("\"");
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!getClass().isInstance(obj)) {
            return false;
        }
        FastSafeParcelableJsonResponse fastSafeParcelableJsonResponse = (FastSafeParcelableJsonResponse) obj;
        for (FastJsonResponse$Field fastJsonResponse$Field : h().values()) {
            if (m(fastJsonResponse$Field)) {
                if (!fastSafeParcelableJsonResponse.m(fastJsonResponse$Field) || !l.h(j(fastJsonResponse$Field), fastSafeParcelableJsonResponse.j(fastJsonResponse$Field))) {
                    return false;
                }
            } else if (fastSafeParcelableJsonResponse.m(fastJsonResponse$Field)) {
                return false;
            }
        }
        return true;
    }

    public abstract Map h();

    public final int hashCode() {
        int iHashCode = 0;
        for (FastJsonResponse$Field fastJsonResponse$Field : h().values()) {
            if (m(fastJsonResponse$Field)) {
                Object objJ = j(fastJsonResponse$Field);
                l.e(objJ);
                iHashCode = (iHashCode * 31) + objJ.hashCode();
            }
        }
        return iHashCode;
    }

    public final Object j(FastJsonResponse$Field fastJsonResponse$Field) {
        if (fastJsonResponse$Field.f4053h == null) {
            return l();
        }
        Object objL = l();
        String str = fastJsonResponse$Field.f;
        if (objL != null) {
            throw new IllegalStateException("Concrete field shouldn't be value object: " + str);
        }
        try {
            return getClass().getMethod("get" + Character.toUpperCase(str.charAt(0)) + str.substring(1), null).invoke(this, null);
        } catch (Exception e5) {
            throw new RuntimeException(e5);
        }
    }

    public Object l() {
        return null;
    }

    public final boolean m(FastJsonResponse$Field fastJsonResponse$Field) {
        if (fastJsonResponse$Field.d != 11) {
            return n();
        }
        if (fastJsonResponse$Field.f4051e) {
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        }
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    public boolean n() {
        return false;
    }

    public String toString() {
        Map mapH = h();
        StringBuilder sb = new StringBuilder(100);
        for (String str : mapH.keySet()) {
            FastJsonResponse$Field fastJsonResponse$Field = (FastJsonResponse$Field) mapH.get(str);
            if (m(fastJsonResponse$Field)) {
                Object objO = o(fastJsonResponse$Field, j(fastJsonResponse$Field));
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(",");
                }
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (objO != null) {
                    switch (fastJsonResponse$Field.d) {
                        case 8:
                            sb.append("\"");
                            sb.append(Base64.encodeToString((byte[]) objO, 0));
                            sb.append("\"");
                            break;
                        case 9:
                            sb.append("\"");
                            sb.append(Base64.encodeToString((byte[]) objO, 10));
                            sb.append("\"");
                            break;
                        case 10:
                            b.Q(sb, (HashMap) objO);
                            break;
                        default:
                            if (fastJsonResponse$Field.f4050c) {
                                ArrayList arrayList = (ArrayList) objO;
                                sb.append("[");
                                int size = arrayList.size();
                                for (int i6 = 0; i6 < size; i6++) {
                                    if (i6 > 0) {
                                        sb.append(",");
                                    }
                                    Object obj = arrayList.get(i6);
                                    if (obj != null) {
                                        p(sb, fastJsonResponse$Field, obj);
                                    }
                                }
                                sb.append("]");
                                break;
                            } else {
                                p(sb, fastJsonResponse$Field, objO);
                                break;
                            }
                    }
                } else {
                    sb.append("null");
                }
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }
}
