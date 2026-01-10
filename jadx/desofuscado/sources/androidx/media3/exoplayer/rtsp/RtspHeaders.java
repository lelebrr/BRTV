package androidx.media3.exoplayer.rtsp;

import androidx.media3.common.util.Util;
import d7.c5;
import d7.d0;
import d7.g0;
import d7.i0;
import d7.p1;
import d7.q0;
import d7.s1;
import d7.u1;
import d7.v1;
import d7.w1;
import d7.y1;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class RtspHeaders {
    public static final String ACCEPT = "Accept";
    public static final String ALLOW = "Allow";
    public static final String AUTHORIZATION = "Authorization";
    public static final String BANDWIDTH = "Bandwidth";
    public static final String BLOCKSIZE = "Blocksize";
    public static final String CACHE_CONTROL = "Cache-Control";
    public static final String CONNECTION = "Connection";
    public static final String CONTENT_BASE = "Content-Base";
    public static final String CONTENT_ENCODING = "Content-Encoding";
    public static final String CONTENT_LANGUAGE = "Content-Language";
    public static final String CONTENT_LENGTH = "Content-Length";
    public static final String CONTENT_LOCATION = "Content-Location";
    public static final String CONTENT_TYPE = "Content-Type";
    public static final String CSEQ = "CSeq";
    public static final String DATE = "Date";
    public static final RtspHeaders EMPTY = new Builder().build();
    public static final String EXPIRES = "Expires";
    public static final String LOCATION = "Location";
    public static final String PROXY_AUTHENTICATE = "Proxy-Authenticate";
    public static final String PROXY_REQUIRE = "Proxy-Require";
    public static final String PUBLIC = "Public";
    public static final String RANGE = "Range";
    public static final String RTCP_INTERVAL = "RTCP-Interval";
    public static final String RTP_INFO = "RTP-Info";
    public static final String SCALE = "Scale";
    public static final String SESSION = "Session";
    public static final String SPEED = "Speed";
    public static final String SUPPORTED = "Supported";
    public static final String TIMESTAMP = "Timestamp";
    public static final String TRANSPORT = "Transport";
    public static final String USER_AGENT = "User-Agent";
    public static final String VIA = "Via";
    public static final String WWW_AUTHENTICATE = "WWW-Authenticate";
    private final w1 namesAndValues;

    /* compiled from: MyApplication */
    public static final class Builder {
        private final v1 namesAndValuesBuilder;

        public Builder add(String str, String str2) {
            this.namesAndValuesBuilder.e(RtspHeaders.convertToStandardHeaderName(str.trim()), str2.trim());
            return this;
        }

        public Builder addAll(List<String> list) {
            for (int i6 = 0; i6 < list.size(); i6++) {
                String[] strArrSplitAtFirst = Util.splitAtFirst(list.get(i6), ":\\s?");
                if (strArrSplitAtFirst.length == 2) {
                    add(strArrSplitAtFirst[0], strArrSplitAtFirst[1]);
                }
            }
            return this;
        }

        public RtspHeaders build() {
            return new RtspHeaders(this);
        }

        public Builder() {
            this.namesAndValuesBuilder = new v1();
        }

        public Builder addAll(Map<String, String> map) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                add(entry.getKey(), entry.getValue());
            }
            return this;
        }

        public Builder(String str, String str2, int i6) {
            this();
            add("User-Agent", str);
            add(RtspHeaders.CSEQ, String.valueOf(i6));
            if (str2 != null) {
                add(RtspHeaders.SESSION, str2);
            }
        }

        private Builder(v1 v1Var) {
            this.namesAndValuesBuilder = v1Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String convertToStandardHeaderName(String str) {
        return b7.b.q(str, "Accept") ? "Accept" : b7.b.q(str, ALLOW) ? ALLOW : b7.b.q(str, AUTHORIZATION) ? AUTHORIZATION : b7.b.q(str, BANDWIDTH) ? BANDWIDTH : b7.b.q(str, BLOCKSIZE) ? BLOCKSIZE : b7.b.q(str, "Cache-Control") ? "Cache-Control" : b7.b.q(str, "Connection") ? "Connection" : b7.b.q(str, CONTENT_BASE) ? CONTENT_BASE : b7.b.q(str, "Content-Encoding") ? "Content-Encoding" : b7.b.q(str, CONTENT_LANGUAGE) ? CONTENT_LANGUAGE : b7.b.q(str, "Content-Length") ? "Content-Length" : b7.b.q(str, CONTENT_LOCATION) ? CONTENT_LOCATION : b7.b.q(str, "Content-Type") ? "Content-Type" : b7.b.q(str, CSEQ) ? CSEQ : b7.b.q(str, "Date") ? "Date" : b7.b.q(str, "Expires") ? "Expires" : b7.b.q(str, "Location") ? "Location" : b7.b.q(str, PROXY_AUTHENTICATE) ? PROXY_AUTHENTICATE : b7.b.q(str, PROXY_REQUIRE) ? PROXY_REQUIRE : b7.b.q(str, PUBLIC) ? PUBLIC : b7.b.q(str, "Range") ? "Range" : b7.b.q(str, RTP_INFO) ? RTP_INFO : b7.b.q(str, RTCP_INTERVAL) ? RTCP_INTERVAL : b7.b.q(str, SCALE) ? SCALE : b7.b.q(str, SESSION) ? SESSION : b7.b.q(str, SPEED) ? SPEED : b7.b.q(str, SUPPORTED) ? SUPPORTED : b7.b.q(str, TIMESTAMP) ? TIMESTAMP : b7.b.q(str, TRANSPORT) ? TRANSPORT : b7.b.q(str, "User-Agent") ? "User-Agent" : b7.b.q(str, VIA) ? VIA : b7.b.q(str, WWW_AUTHENTICATE) ? WWW_AUTHENTICATE : str;
    }

    public w1 asMultiMap() {
        return this.namesAndValues;
    }

    public Builder buildUpon() {
        v1 v1Var = new v1();
        for (Map.Entry entry : this.namesAndValues.d().entrySet()) {
            Object key = entry.getKey();
            Iterable iterable = (Iterable) entry.getValue();
            if (key == null) {
                throw new NullPointerException("null key in entry: null=" + d0.F(iterable));
            }
            Iterator it = iterable.iterator();
            if (it.hasNext()) {
                i0 i0VarA = (i0) v1Var.f6105a;
                if (i0VarA == null) {
                    i0VarA = i0.a();
                    v1Var.f6105a = i0VarA;
                }
                p1 p1VarB = (p1) i0VarA.get(key);
                if (p1VarB == null) {
                    p1VarB = v1Var.b(v1Var.a(iterable));
                    i0 i0VarA2 = (i0) v1Var.f6105a;
                    if (i0VarA2 == null) {
                        i0VarA2 = i0.a();
                        v1Var.f6105a = i0VarA2;
                    }
                    i0VarA2.put(key, p1VarB);
                }
                while (it.hasNext()) {
                    Object next = it.next();
                    d0.c(key, next);
                    p1VarB.b(next);
                }
            }
        }
        return new Builder(v1Var);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RtspHeaders) {
            return this.namesAndValues.equals(((RtspHeaders) obj).namesAndValues);
        }
        return false;
    }

    public String get(String str) {
        u1 u1VarValues = values(str);
        if (u1VarValues.isEmpty()) {
            return null;
        }
        return (String) d0.n(u1VarValues);
    }

    public int hashCode() {
        return this.namesAndValues.hashCode();
    }

    public u1 values(String str) {
        return this.namesAndValues.get(convertToStandardHeaderName(str));
    }

    private RtspHeaders(Builder builder) {
        w1 w1Var;
        i0 i0Var = (i0) builder.namesAndValuesBuilder.f6105a;
        if (i0Var == null) {
            w1Var = q0.f6241h;
        } else {
            Collection collectionEntrySet = i0Var.entrySet();
            if (((AbstractCollection) collectionEntrySet).isEmpty()) {
                w1Var = q0.f6241h;
            } else {
                g0 g0Var = (g0) collectionEntrySet;
                y1 y1Var = new y1(((i0) g0Var.f6147b).size());
                Iterator it = g0Var.iterator();
                int i6 = 0;
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    Object key = entry.getKey();
                    c5 c5VarG = ((s1) entry.getValue()).g();
                    y1Var.b(key, c5VarG);
                    i6 += c5VarG.d;
                }
                w1Var = new w1(y1Var.a(), i6);
            }
        }
        this.namesAndValues = w1Var;
    }
}
