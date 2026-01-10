package androidx.leanback.widget.picker;

import a0.f;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.p2elite.brtv2.R;
import ea.q;
import h1.a;
import i1.d;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class TimePicker extends Picker {
    public String A;

    /* renamed from: p, reason: collision with root package name */
    public d f1902p;

    /* renamed from: q, reason: collision with root package name */
    public d f1903q;

    /* renamed from: r, reason: collision with root package name */
    public d f1904r;

    /* renamed from: s, reason: collision with root package name */
    public int f1905s;

    /* renamed from: t, reason: collision with root package name */
    public int f1906t;

    /* renamed from: u, reason: collision with root package name */
    public int f1907u;

    /* renamed from: v, reason: collision with root package name */
    public final f f1908v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f1909w;

    /* renamed from: x, reason: collision with root package name */
    public int f1910x;

    /* renamed from: y, reason: collision with root package name */
    public int f1911y;

    /* renamed from: z, reason: collision with root package name */
    public int f1912z;

    public TimePicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.timePickerStyle);
    }

    @Override // androidx.leanback.widget.picker.Picker
    public final void a(int i6, int i10) {
        if (i6 == this.f1905s) {
            this.f1910x = i10;
        } else if (i6 == this.f1906t) {
            this.f1911y = i10;
        } else {
            if (i6 != this.f1907u) {
                throw new IllegalArgumentException("Invalid column index.");
            }
            this.f1912z = i10;
        }
    }

    public String getBestHourMinutePattern() {
        String bestDateTimePattern = DateFormat.getBestDateTimePattern((Locale) this.f1908v.f38b, this.f1909w ? "Hma" : "hma");
        return TextUtils.isEmpty(bestDateTimePattern) ? "h:mma" : bestDateTimePattern;
    }

    public int getHour() {
        return this.f1909w ? this.f1910x : this.f1912z == 0 ? this.f1910x % 12 : (this.f1910x % 12) + 12;
    }

    public int getMinute() {
        return this.f1911y;
    }

    public final void i() {
        int i6 = 7;
        String bestHourMinutePattern = getBestHourMinutePattern();
        if (TextUtils.equals(bestHourMinutePattern, this.A)) {
            return;
        }
        this.A = bestHourMinutePattern;
        String bestHourMinutePattern2 = getBestHourMinutePattern();
        f fVar = this.f1908v;
        boolean z7 = TextUtils.getLayoutDirectionFromLocale((Locale) fVar.f38b) == 1;
        boolean z10 = bestHourMinutePattern2.indexOf(97) < 0 || bestHourMinutePattern2.indexOf(CmcdData.OBJECT_TYPE_AUDIO_ONLY) > bestHourMinutePattern2.indexOf(CmcdData.OBJECT_TYPE_MANIFEST);
        String strConcat = z7 ? "mh" : "hm";
        if (!this.f1909w) {
            strConcat = z10 ? strConcat.concat(CmcdData.OBJECT_TYPE_AUDIO_ONLY) : CmcdData.OBJECT_TYPE_AUDIO_ONLY.concat(strConcat);
        }
        String bestHourMinutePattern3 = getBestHourMinutePattern();
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        char[] cArr = {'H', 'h', 'K', 'k', 'm', 'M', 'a'};
        int i10 = 0;
        boolean z11 = false;
        char c5 = 0;
        while (i10 < bestHourMinutePattern3.length()) {
            char cCharAt = bestHourMinutePattern3.charAt(i10);
            if (cCharAt != ' ') {
                if (cCharAt != '\'') {
                    if (!z11) {
                        int i11 = 0;
                        while (true) {
                            if (i11 >= i6) {
                                sb.append(cCharAt);
                                break;
                            } else if (cCharAt != cArr[i11]) {
                                i11++;
                                i6 = 7;
                            } else if (cCharAt != c5) {
                                arrayList.add(sb.toString());
                                sb.setLength(0);
                            }
                        }
                    } else {
                        sb.append(cCharAt);
                    }
                    c5 = cCharAt;
                } else if (z11) {
                    z11 = false;
                } else {
                    sb.setLength(0);
                    z11 = true;
                }
            }
            i10++;
            i6 = 7;
        }
        arrayList.add(sb.toString());
        if (arrayList.size() != strConcat.length() + 1) {
            throw new IllegalStateException("Separators size: " + arrayList.size() + " must equal the size of timeFieldsPattern: " + strConcat.length() + " + 1");
        }
        setSeparators(arrayList);
        String upperCase = strConcat.toUpperCase((Locale) fVar.f38b);
        this.f1904r = null;
        this.f1903q = null;
        this.f1902p = null;
        this.f1907u = -1;
        this.f1906t = -1;
        this.f1905s = -1;
        ArrayList arrayList2 = new ArrayList(3);
        for (int i12 = 0; i12 < upperCase.length(); i12++) {
            char cCharAt2 = upperCase.charAt(i12);
            if (cCharAt2 == 'A') {
                d dVar = new d();
                this.f1904r = dVar;
                arrayList2.add(dVar);
                d dVar2 = this.f1904r;
                dVar2.d = (String[]) fVar.f40e;
                this.f1907u = i12;
                if (dVar2.f7296b != 0) {
                    dVar2.f7296b = 0;
                }
                if (1 != dVar2.f7297c) {
                    dVar2.f7297c = 1;
                }
            } else if (cCharAt2 == 'H') {
                d dVar3 = new d();
                this.f1902p = dVar3;
                arrayList2.add(dVar3);
                this.f1902p.d = (String[]) fVar.f39c;
                this.f1905s = i12;
            } else {
                if (cCharAt2 != 'M') {
                    throw new IllegalArgumentException("Invalid time picker format.");
                }
                d dVar4 = new d();
                this.f1903q = dVar4;
                arrayList2.add(dVar4);
                this.f1903q.d = (String[]) fVar.d;
                this.f1906t = i12;
            }
        }
        setColumns(arrayList2);
    }

    public final void j() {
        d dVar = this.f1902p;
        boolean z7 = this.f1909w;
        int i6 = !z7 ? 1 : 0;
        if (i6 != dVar.f7296b) {
            dVar.f7296b = i6;
        }
        int i10 = z7 ? 23 : 12;
        if (i10 != dVar.f7297c) {
            dVar.f7297c = i10;
        }
        d dVar2 = this.f1903q;
        if (dVar2.f7296b != 0) {
            dVar2.f7296b = 0;
        }
        if (59 != dVar2.f7297c) {
            dVar2.f7297c = 59;
        }
        d dVar3 = this.f1904r;
        if (dVar3 != null) {
            if (dVar3.f7296b != 0) {
                dVar3.f7296b = 0;
            }
            if (1 != dVar3.f7297c) {
                dVar3.f7297c = 1;
            }
        }
    }

    public void setHour(int i6) {
        if (i6 < 0 || i6 > 23) {
            throw new IllegalArgumentException(q.f(i6, "hour: ", " is not in [0-23] range in"));
        }
        this.f1910x = i6;
        boolean z7 = this.f1909w;
        if (!z7) {
            if (i6 >= 12) {
                this.f1912z = 1;
                if (i6 > 12) {
                    this.f1910x = i6 - 12;
                }
            } else {
                this.f1912z = 0;
                if (i6 == 0) {
                    this.f1910x = 12;
                }
            }
            if (!z7) {
                c(this.f1907u, this.f1912z);
            }
        }
        c(this.f1905s, this.f1910x);
    }

    public void setIs24Hour(boolean z7) {
        if (this.f1909w == z7) {
            return;
        }
        int hour = getHour();
        int minute = getMinute();
        this.f1909w = z7;
        i();
        j();
        setHour(hour);
        setMinute(minute);
        if (this.f1909w) {
            return;
        }
        c(this.f1907u, this.f1912z);
    }

    public void setMinute(int i6) {
        if (i6 < 0 || i6 > 59) {
            throw new IllegalArgumentException(q.f(i6, "minute: ", " is not in [0-59] range."));
        }
        this.f1911y = i6;
        c(this.f1906t, i6);
    }

    @SuppressLint({"CustomViewStyleable"})
    public TimePicker(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        Locale locale = Locale.getDefault();
        context.getResources();
        this.f1908v = new f(locale);
        int[] iArr = a.f7169l;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        s0.p(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, 0, 0);
        try {
            this.f1909w = typedArrayObtainStyledAttributes.getBoolean(0, DateFormat.is24HourFormat(context));
            boolean z7 = typedArrayObtainStyledAttributes.getBoolean(3, true);
            typedArrayObtainStyledAttributes.recycle();
            i();
            j();
            if (z7) {
                Calendar calendar = Calendar.getInstance(locale);
                setHour(calendar.get(11));
                setMinute(calendar.get(12));
                if (this.f1909w) {
                    return;
                }
                c(this.f1907u, this.f1912z);
            }
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }
}
