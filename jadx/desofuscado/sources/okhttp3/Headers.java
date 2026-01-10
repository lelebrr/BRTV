package okhttp3;

import com.lzy.okgo.cookie.SerializableCookie;
import j9.i;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import k9.a;
import o9.d;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import r9.n;
import w8.f;
import x8.r;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class Headers implements Iterable<f>, a {
    public static final Companion Companion = new Companion(null);
    private final String[] namesAndValues;

    /* compiled from: MyApplication */
    public static final class Builder {
        private final List<String> namesAndValues = new ArrayList(20);

        public final Builder add(String str) {
            i.f(str, "line");
            int iB0 = r9.f.b0(str, ':', 0, false, 6);
            if (iB0 == -1) {
                throw new IllegalArgumentException("Unexpected header: ".concat(str).toString());
            }
            String strSubstring = str.substring(0, iB0);
            i.e(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            String string = r9.f.n0(strSubstring).toString();
            String strSubstring2 = str.substring(iB0 + 1);
            i.e(strSubstring2, "this as java.lang.String).substring(startIndex)");
            add(string, strSubstring2);
            return this;
        }

        public final Builder addAll(Headers headers) {
            i.f(headers, "headers");
            int size = headers.size();
            for (int i6 = 0; i6 < size; i6++) {
                addLenient$okhttp(headers.name(i6), headers.value(i6));
            }
            return this;
        }

        public final Builder addLenient$okhttp(String str) {
            i.f(str, "line");
            int iB0 = r9.f.b0(str, ':', 1, false, 4);
            if (iB0 != -1) {
                String strSubstring = str.substring(0, iB0);
                i.e(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                String strSubstring2 = str.substring(iB0 + 1);
                i.e(strSubstring2, "this as java.lang.String).substring(startIndex)");
                addLenient$okhttp(strSubstring, strSubstring2);
            } else if (str.charAt(0) == ':') {
                String strSubstring3 = str.substring(1);
                i.e(strSubstring3, "this as java.lang.String).substring(startIndex)");
                addLenient$okhttp("", strSubstring3);
            } else {
                addLenient$okhttp("", str);
            }
            return this;
        }

        public final Builder addUnsafeNonAscii(String str, String str2) {
            i.f(str, SerializableCookie.NAME);
            i.f(str2, "value");
            Headers.Companion.checkName(str);
            addLenient$okhttp(str, str2);
            return this;
        }

        public final Headers build() {
            return new Headers((String[]) this.namesAndValues.toArray(new String[0]), null);
        }

        public final String get(String str) {
            i.f(str, SerializableCookie.NAME);
            int size = this.namesAndValues.size() - 2;
            int iP = d.p(size, 0, -2);
            if (iP > size) {
                return null;
            }
            while (!str.equalsIgnoreCase(this.namesAndValues.get(size))) {
                if (size == iP) {
                    return null;
                }
                size -= 2;
            }
            return this.namesAndValues.get(size + 1);
        }

        public final List<String> getNamesAndValues$okhttp() {
            return this.namesAndValues;
        }

        public final Builder removeAll(String str) {
            i.f(str, SerializableCookie.NAME);
            int i6 = 0;
            while (i6 < this.namesAndValues.size()) {
                if (str.equalsIgnoreCase(this.namesAndValues.get(i6))) {
                    this.namesAndValues.remove(i6);
                    this.namesAndValues.remove(i6);
                    i6 -= 2;
                }
                i6 += 2;
            }
            return this;
        }

        public final Builder set(String str, Date date) {
            i.f(str, SerializableCookie.NAME);
            i.f(date, "value");
            set(str, DatesKt.toHttpDateString(date));
            return this;
        }

        @IgnoreJRERequirement
        public final Builder set(String str, Instant instant) {
            i.f(str, SerializableCookie.NAME);
            i.f(instant, "value");
            return set(str, new Date(instant.toEpochMilli()));
        }

        public final Builder set(String str, String str2) {
            i.f(str, SerializableCookie.NAME);
            i.f(str2, "value");
            Companion companion = Headers.Companion;
            companion.checkName(str);
            companion.checkValue(str2, str);
            removeAll(str);
            addLenient$okhttp(str, str2);
            return this;
        }

        public final Builder add(String str, String str2) {
            i.f(str, SerializableCookie.NAME);
            i.f(str2, "value");
            Companion companion = Headers.Companion;
            companion.checkName(str);
            companion.checkValue(str2, str);
            addLenient$okhttp(str, str2);
            return this;
        }

        public final Builder add(String str, Date date) {
            i.f(str, SerializableCookie.NAME);
            i.f(date, "value");
            add(str, DatesKt.toHttpDateString(date));
            return this;
        }

        public final Builder addLenient$okhttp(String str, String str2) {
            i.f(str, SerializableCookie.NAME);
            i.f(str2, "value");
            this.namesAndValues.add(str);
            this.namesAndValues.add(r9.f.n0(str2).toString());
            return this;
        }

        @IgnoreJRERequirement
        public final Builder add(String str, Instant instant) {
            i.f(str, SerializableCookie.NAME);
            i.f(instant, "value");
            add(str, new Date(instant.toEpochMilli()));
            return this;
        }
    }

    /* compiled from: MyApplication */
    public static final class Companion {
        public /* synthetic */ Companion(j9.f fVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkName(String str) {
            if (str.length() <= 0) {
                throw new IllegalArgumentException("name is empty");
            }
            int length = str.length();
            for (int i6 = 0; i6 < length; i6++) {
                char cCharAt = str.charAt(i6);
                if ('!' > cCharAt || cCharAt >= 127) {
                    throw new IllegalArgumentException(Util.format("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i6), str).toString());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkValue(String str, String str2) {
            int length = str.length();
            for (int i6 = 0; i6 < length; i6++) {
                char cCharAt = str.charAt(i6);
                if (cCharAt != '\t' && (' ' > cCharAt || cCharAt >= 127)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(Util.format("Unexpected char %#04x at %d in %s value", Integer.valueOf(cCharAt), Integer.valueOf(i6), str2));
                    sb.append(Util.isSensitiveHeader(str2) ? "" : ": ".concat(str));
                    throw new IllegalArgumentException(sb.toString().toString());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String get(String[] strArr, String str) {
            int length = strArr.length - 2;
            int iP = d.p(length, 0, -2);
            if (iP > length) {
                return null;
            }
            while (!n.P(str, strArr[length])) {
                if (length == iP) {
                    return null;
                }
                length -= 2;
            }
            return strArr[length + 1];
        }

        /* renamed from: -deprecated_of, reason: not valid java name */
        public final Headers m54deprecated_of(String... strArr) {
            i.f(strArr, "namesAndValues");
            return of((String[]) Arrays.copyOf(strArr, strArr.length));
        }

        public final Headers of(String... strArr) {
            i.f(strArr, "namesAndValues");
            if (strArr.length % 2 != 0) {
                throw new IllegalArgumentException("Expected alternating header names and values");
            }
            String[] strArr2 = (String[]) strArr.clone();
            int length = strArr2.length;
            int i6 = 0;
            for (int i10 = 0; i10 < length; i10++) {
                String str = strArr2[i10];
                if (str == null) {
                    throw new IllegalArgumentException("Headers cannot be null");
                }
                strArr2[i10] = r9.f.n0(str).toString();
            }
            int iP = d.p(0, strArr2.length - 1, 2);
            if (iP >= 0) {
                while (true) {
                    String str2 = strArr2[i6];
                    String str3 = strArr2[i6 + 1];
                    checkName(str2);
                    checkValue(str3, str2);
                    if (i6 == iP) {
                        break;
                    }
                    i6 += 2;
                }
            }
            return new Headers(strArr2, null);
        }

        private Companion() {
        }

        /* renamed from: -deprecated_of, reason: not valid java name */
        public final Headers m53deprecated_of(Map<String, String> map) {
            i.f(map, "headers");
            return of(map);
        }

        public final Headers of(Map<String, String> map) {
            i.f(map, "<this>");
            String[] strArr = new String[map.size() * 2];
            int i6 = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                String string = r9.f.n0(key).toString();
                String string2 = r9.f.n0(value).toString();
                checkName(string);
                checkValue(string2, string);
                strArr[i6] = string;
                strArr[i6 + 1] = string2;
                i6 += 2;
            }
            return new Headers(strArr, null);
        }
    }

    public /* synthetic */ Headers(String[] strArr, j9.f fVar) {
        this(strArr);
    }

    public static final Headers of(Map<String, String> map) {
        return Companion.of(map);
    }

    /* renamed from: -deprecated_size, reason: not valid java name */
    public final int m52deprecated_size() {
        return size();
    }

    public final long byteCount() {
        String[] strArr = this.namesAndValues;
        long length = strArr.length * 2;
        for (int i6 = 0; i6 < strArr.length; i6++) {
            length += this.namesAndValues[i6].length();
        }
        return length;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Headers) && Arrays.equals(this.namesAndValues, ((Headers) obj).namesAndValues);
    }

    public final String get(String str) {
        i.f(str, SerializableCookie.NAME);
        return Companion.get(this.namesAndValues, str);
    }

    public final Date getDate(String str) {
        i.f(str, SerializableCookie.NAME);
        String str2 = get(str);
        if (str2 != null) {
            return DatesKt.toHttpDateOrNull(str2);
        }
        return null;
    }

    @IgnoreJRERequirement
    public final Instant getInstant(String str) {
        i.f(str, SerializableCookie.NAME);
        Date date = getDate(str);
        if (date != null) {
            return date.toInstant();
        }
        return null;
    }

    public int hashCode() {
        return Arrays.hashCode(this.namesAndValues);
    }

    @Override // java.lang.Iterable
    public Iterator<f> iterator() {
        int size = size();
        f[] fVarArr = new f[size];
        for (int i6 = 0; i6 < size; i6++) {
            fVarArr[i6] = new f(name(i6), value(i6));
        }
        return new j9.a(fVarArr);
    }

    public final String name(int i6) {
        return this.namesAndValues[i6 * 2];
    }

    public final Set<String> names() {
        TreeSet treeSet = new TreeSet(n.Q());
        int size = size();
        for (int i6 = 0; i6 < size; i6++) {
            treeSet.add(name(i6));
        }
        Set<String> setUnmodifiableSet = Collections.unmodifiableSet(treeSet);
        i.e(setUnmodifiableSet, "unmodifiableSet(result)");
        return setUnmodifiableSet;
    }

    public final Builder newBuilder() {
        Builder builder = new Builder();
        List<String> namesAndValues$okhttp = builder.getNamesAndValues$okhttp();
        String[] strArr = this.namesAndValues;
        i.f(namesAndValues$okhttp, "<this>");
        i.f(strArr, "elements");
        List listAsList = Arrays.asList(strArr);
        i.e(listAsList, "asList(...)");
        namesAndValues$okhttp.addAll(listAsList);
        return builder;
    }

    public final int size() {
        return this.namesAndValues.length / 2;
    }

    public final Map<String, List<String>> toMultimap() {
        TreeMap treeMap = new TreeMap(n.Q());
        int size = size();
        for (int i6 = 0; i6 < size; i6++) {
            String strName = name(i6);
            Locale locale = Locale.US;
            i.e(locale, "US");
            String lowerCase = strName.toLowerCase(locale);
            i.e(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            List arrayList = (List) treeMap.get(lowerCase);
            if (arrayList == null) {
                arrayList = new ArrayList(2);
                treeMap.put(lowerCase, arrayList);
            }
            arrayList.add(value(i6));
        }
        return treeMap;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i6 = 0; i6 < size; i6++) {
            String strName = name(i6);
            String strValue = value(i6);
            sb.append(strName);
            sb.append(": ");
            if (Util.isSensitiveHeader(strName)) {
                strValue = "██";
            }
            sb.append(strValue);
            sb.append("\n");
        }
        String string = sb.toString();
        i.e(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String value(int i6) {
        return this.namesAndValues[(i6 * 2) + 1];
    }

    public final List<String> values(String str) {
        i.f(str, SerializableCookie.NAME);
        int size = size();
        ArrayList arrayList = null;
        for (int i6 = 0; i6 < size; i6++) {
            if (str.equalsIgnoreCase(name(i6))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(value(i6));
            }
        }
        if (arrayList == null) {
            return r.f11098a;
        }
        List<String> listUnmodifiableList = Collections.unmodifiableList(arrayList);
        i.e(listUnmodifiableList, "{\n      Collections.unmodifiableList(result)\n    }");
        return listUnmodifiableList;
    }

    private Headers(String[] strArr) {
        this.namesAndValues = strArr;
    }

    public static final Headers of(String... strArr) {
        return Companion.of(strArr);
    }
}
