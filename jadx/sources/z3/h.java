package z3;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class h extends a {

    /* renamed from: a, reason: collision with root package name */
    public final Integer f11555a;

    /* renamed from: b, reason: collision with root package name */
    public final String f11556b;

    /* renamed from: c, reason: collision with root package name */
    public final String f11557c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public final String f11558e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f11559g;

    /* renamed from: h, reason: collision with root package name */
    public final String f11560h;

    /* renamed from: i, reason: collision with root package name */
    public final String f11561i;

    /* renamed from: j, reason: collision with root package name */
    public final String f11562j;

    /* renamed from: k, reason: collision with root package name */
    public final String f11563k;

    /* renamed from: l, reason: collision with root package name */
    public final String f11564l;

    public h(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.f11555a = num;
        this.f11556b = str;
        this.f11557c = str2;
        this.d = str3;
        this.f11558e = str4;
        this.f = str5;
        this.f11559g = str6;
        this.f11560h = str7;
        this.f11561i = str8;
        this.f11562j = str9;
        this.f11563k = str10;
        this.f11564l = str11;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        Integer num = this.f11555a;
        if (num != null ? num.equals(((h) aVar).f11555a) : ((h) aVar).f11555a == null) {
            String str = this.f11556b;
            if (str != null ? str.equals(((h) aVar).f11556b) : ((h) aVar).f11556b == null) {
                String str2 = this.f11557c;
                if (str2 != null ? str2.equals(((h) aVar).f11557c) : ((h) aVar).f11557c == null) {
                    String str3 = this.d;
                    if (str3 != null ? str3.equals(((h) aVar).d) : ((h) aVar).d == null) {
                        String str4 = this.f11558e;
                        if (str4 != null ? str4.equals(((h) aVar).f11558e) : ((h) aVar).f11558e == null) {
                            String str5 = this.f;
                            if (str5 != null ? str5.equals(((h) aVar).f) : ((h) aVar).f == null) {
                                String str6 = this.f11559g;
                                if (str6 != null ? str6.equals(((h) aVar).f11559g) : ((h) aVar).f11559g == null) {
                                    String str7 = this.f11560h;
                                    if (str7 != null ? str7.equals(((h) aVar).f11560h) : ((h) aVar).f11560h == null) {
                                        String str8 = this.f11561i;
                                        if (str8 != null ? str8.equals(((h) aVar).f11561i) : ((h) aVar).f11561i == null) {
                                            String str9 = this.f11562j;
                                            if (str9 != null ? str9.equals(((h) aVar).f11562j) : ((h) aVar).f11562j == null) {
                                                String str10 = this.f11563k;
                                                if (str10 != null ? str10.equals(((h) aVar).f11563k) : ((h) aVar).f11563k == null) {
                                                    String str11 = this.f11564l;
                                                    if (str11 == null) {
                                                        if (((h) aVar).f11564l == null) {
                                                            return true;
                                                        }
                                                    } else if (str11.equals(((h) aVar).f11564l)) {
                                                        return true;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        Integer num = this.f11555a;
        int iHashCode = ((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003;
        String str = this.f11556b;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f11557c;
        int iHashCode3 = (iHashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f11558e;
        int iHashCode5 = (iHashCode4 ^ (str4 == null ? 0 : str4.hashCode())) * 1000003;
        String str5 = this.f;
        int iHashCode6 = (iHashCode5 ^ (str5 == null ? 0 : str5.hashCode())) * 1000003;
        String str6 = this.f11559g;
        int iHashCode7 = (iHashCode6 ^ (str6 == null ? 0 : str6.hashCode())) * 1000003;
        String str7 = this.f11560h;
        int iHashCode8 = (iHashCode7 ^ (str7 == null ? 0 : str7.hashCode())) * 1000003;
        String str8 = this.f11561i;
        int iHashCode9 = (iHashCode8 ^ (str8 == null ? 0 : str8.hashCode())) * 1000003;
        String str9 = this.f11562j;
        int iHashCode10 = (iHashCode9 ^ (str9 == null ? 0 : str9.hashCode())) * 1000003;
        String str10 = this.f11563k;
        int iHashCode11 = (iHashCode10 ^ (str10 == null ? 0 : str10.hashCode())) * 1000003;
        String str11 = this.f11564l;
        return (str11 != null ? str11.hashCode() : 0) ^ iHashCode11;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AndroidClientInfo{sdkVersion=");
        sb.append(this.f11555a);
        sb.append(", model=");
        sb.append(this.f11556b);
        sb.append(", hardware=");
        sb.append(this.f11557c);
        sb.append(", device=");
        sb.append(this.d);
        sb.append(", product=");
        sb.append(this.f11558e);
        sb.append(", osBuild=");
        sb.append(this.f);
        sb.append(", manufacturer=");
        sb.append(this.f11559g);
        sb.append(", fingerprint=");
        sb.append(this.f11560h);
        sb.append(", locale=");
        sb.append(this.f11561i);
        sb.append(", country=");
        sb.append(this.f11562j);
        sb.append(", mccMnc=");
        sb.append(this.f11563k);
        sb.append(", applicationBuild=");
        return a.e.t(sb, this.f11564l, "}");
    }
}
