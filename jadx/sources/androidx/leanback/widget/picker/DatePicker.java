package androidx.leanback.widget.picker;

import a7.f;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.util.Log;
import com.p2elite.brtv2.R;
import h1.a;
import i1.d;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class DatePicker extends Picker {
    public static final int[] C = {5, 2, 1};
    public final Calendar A;
    public final Calendar B;

    /* renamed from: p, reason: collision with root package name */
    public String f1878p;

    /* renamed from: q, reason: collision with root package name */
    public d f1879q;

    /* renamed from: r, reason: collision with root package name */
    public d f1880r;

    /* renamed from: s, reason: collision with root package name */
    public d f1881s;

    /* renamed from: t, reason: collision with root package name */
    public int f1882t;

    /* renamed from: u, reason: collision with root package name */
    public int f1883u;

    /* renamed from: v, reason: collision with root package name */
    public int f1884v;

    /* renamed from: w, reason: collision with root package name */
    public final SimpleDateFormat f1885w;

    /* renamed from: x, reason: collision with root package name */
    public final f f1886x;

    /* renamed from: y, reason: collision with root package name */
    public final Calendar f1887y;

    /* renamed from: z, reason: collision with root package name */
    public final Calendar f1888z;

    public DatePicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.datePickerStyle);
    }

    @Override // androidx.leanback.widget.picker.Picker
    public final void a(int i6, int i10) {
        this.B.setTimeInMillis(this.A.getTimeInMillis());
        ArrayList arrayList = this.f1891c;
        int i11 = (arrayList == null ? null : (d) arrayList.get(i6)).f7295a;
        if (i6 == this.f1883u) {
            this.B.add(5, i10 - i11);
        } else if (i6 == this.f1882t) {
            this.B.add(2, i10 - i11);
        } else {
            if (i6 != this.f1884v) {
                throw new IllegalArgumentException();
            }
            this.B.add(1, i10 - i11);
        }
        j(this.B.get(1), this.B.get(2), this.B.get(5));
    }

    public long getDate() {
        return this.A.getTimeInMillis();
    }

    public String getDatePickerFormat() {
        return this.f1878p;
    }

    public long getMaxDate() {
        return this.f1888z.getTimeInMillis();
    }

    public long getMinDate() {
        return this.f1887y.getTimeInMillis();
    }

    public final boolean i(String str, Calendar calendar) {
        try {
            calendar.setTime(this.f1885w.parse(str));
            return true;
        } catch (ParseException unused) {
            Log.w("DatePicker", "Date: " + str + " not in format: MM/dd/yyyy");
            return false;
        }
    }

    public final void j(int i6, int i10, int i11) {
        if (this.A.get(1) == i6 && this.A.get(2) == i11 && this.A.get(5) == i10) {
            return;
        }
        this.A.set(i6, i10, i11);
        if (this.A.before(this.f1887y)) {
            this.A.setTimeInMillis(this.f1887y.getTimeInMillis());
        } else if (this.A.after(this.f1888z)) {
            this.A.setTimeInMillis(this.f1888z.getTimeInMillis());
        }
        post(new a.f(19, this));
    }

    public void setDate(long j10) {
        this.B.setTimeInMillis(j10);
        j(this.B.get(1), this.B.get(2), this.B.get(5));
    }

    public void setDatePickerFormat(String str) {
        int i6 = 6;
        f fVar = this.f1886x;
        String str2 = TextUtils.isEmpty(str) ? new String(DateFormat.getDateFormatOrder(getContext())) : str;
        if (TextUtils.equals(this.f1878p, str2)) {
            return;
        }
        this.f1878p = str2;
        String bestDateTimePattern = DateFormat.getBestDateTimePattern((Locale) fVar.f169b, str2);
        if (TextUtils.isEmpty(bestDateTimePattern)) {
            bestDateTimePattern = "MM/dd/yyyy";
        }
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        char[] cArr = {'Y', 'y', 'M', 'm', 'D', 'd'};
        int i10 = 0;
        boolean z7 = false;
        char c5 = 0;
        while (i10 < bestDateTimePattern.length()) {
            char cCharAt = bestDateTimePattern.charAt(i10);
            if (cCharAt != ' ') {
                if (cCharAt != '\'') {
                    if (!z7) {
                        int i11 = 0;
                        while (true) {
                            if (i11 >= i6) {
                                sb.append(cCharAt);
                                break;
                            } else if (cCharAt != cArr[i11]) {
                                i11++;
                                i6 = 6;
                            } else if (cCharAt != c5) {
                                arrayList.add(sb.toString());
                                sb.setLength(0);
                            }
                        }
                    } else {
                        sb.append(cCharAt);
                    }
                    c5 = cCharAt;
                } else if (z7) {
                    z7 = false;
                } else {
                    sb.setLength(0);
                    z7 = true;
                }
            }
            i10++;
            i6 = 6;
        }
        arrayList.add(sb.toString());
        if (arrayList.size() != str2.length() + 1) {
            throw new IllegalStateException("Separators size: " + arrayList.size() + " must equal the size of datePickerFormat: " + str2.length() + " + 1");
        }
        setSeparators(arrayList);
        this.f1880r = null;
        this.f1879q = null;
        this.f1881s = null;
        this.f1882t = -1;
        this.f1883u = -1;
        this.f1884v = -1;
        String upperCase = str2.toUpperCase((Locale) fVar.f169b);
        ArrayList arrayList2 = new ArrayList(3);
        for (int i12 = 0; i12 < upperCase.length(); i12++) {
            char cCharAt2 = upperCase.charAt(i12);
            if (cCharAt2 == 'D') {
                if (this.f1880r != null) {
                    throw new IllegalArgumentException("datePicker format error");
                }
                d dVar = new d();
                this.f1880r = dVar;
                arrayList2.add(dVar);
                this.f1880r.f7298e = "%02d";
                this.f1883u = i12;
            } else if (cCharAt2 != 'M') {
                if (cCharAt2 != 'Y') {
                    throw new IllegalArgumentException("datePicker format error");
                }
                if (this.f1881s != null) {
                    throw new IllegalArgumentException("datePicker format error");
                }
                d dVar2 = new d();
                this.f1881s = dVar2;
                arrayList2.add(dVar2);
                this.f1884v = i12;
                this.f1881s.f7298e = "%d";
            } else {
                if (this.f1879q != null) {
                    throw new IllegalArgumentException("datePicker format error");
                }
                d dVar3 = new d();
                this.f1879q = dVar3;
                arrayList2.add(dVar3);
                this.f1879q.d = (String[]) fVar.f170c;
                this.f1882t = i12;
            }
        }
        setColumns(arrayList2);
        post(new a.f(19, this));
    }

    public void setMaxDate(long j10) {
        this.B.setTimeInMillis(j10);
        if (this.B.get(1) != this.f1888z.get(1) || this.B.get(6) == this.f1888z.get(6)) {
            this.f1888z.setTimeInMillis(j10);
            if (this.A.after(this.f1888z)) {
                this.A.setTimeInMillis(this.f1888z.getTimeInMillis());
            }
            post(new a.f(19, this));
        }
    }

    public void setMinDate(long j10) {
        this.B.setTimeInMillis(j10);
        if (this.B.get(1) != this.f1887y.get(1) || this.B.get(6) == this.f1887y.get(6)) {
            this.f1887y.setTimeInMillis(j10);
            if (this.A.before(this.f1887y)) {
                this.A.setTimeInMillis(this.f1887y.getTimeInMillis());
            }
            post(new a.f(19, this));
        }
    }

    @SuppressLint({"CustomViewStyleable"})
    public DatePicker(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1885w = new SimpleDateFormat("MM/dd/yyyy", Locale.getDefault());
        Locale locale = Locale.getDefault();
        getContext().getResources();
        this.f1886x = new f(locale);
        this.B = n5.d.t(this.B, locale);
        this.f1887y = n5.d.t(this.f1887y, (Locale) this.f1886x.f169b);
        this.f1888z = n5.d.t(this.f1888z, (Locale) this.f1886x.f169b);
        this.A = n5.d.t(this.A, (Locale) this.f1886x.f169b);
        d dVar = this.f1879q;
        if (dVar != null) {
            dVar.d = (String[]) this.f1886x.f170c;
            b(this.f1882t, dVar);
        }
        int[] iArr = a.f7163e;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        s0.p(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, 0, 0);
        try {
            String string = typedArrayObtainStyledAttributes.getString(0);
            String string2 = typedArrayObtainStyledAttributes.getString(1);
            String string3 = typedArrayObtainStyledAttributes.getString(2);
            typedArrayObtainStyledAttributes.recycle();
            this.B.clear();
            if (TextUtils.isEmpty(string) || !i(string, this.B)) {
                this.B.set(1900, 0, 1);
            }
            this.f1887y.setTimeInMillis(this.B.getTimeInMillis());
            this.B.clear();
            if (TextUtils.isEmpty(string2) || !i(string2, this.B)) {
                this.B.set(2100, 0, 1);
            }
            this.f1888z.setTimeInMillis(this.B.getTimeInMillis());
            setDatePickerFormat(TextUtils.isEmpty(string3) ? new String(DateFormat.getDateFormatOrder(context)) : string3);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }
}
