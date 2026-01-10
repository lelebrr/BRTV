package com.google.android.material.datepicker;

import android.content.res.Resources;
import com.p2elite.brtv2.R;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class g0 {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicReference f4838a = new AtomicReference();

    public static long a(long j10) {
        Calendar calendarH = h(null);
        calendarH.setTimeInMillis(j10);
        return c(calendarH).getTimeInMillis();
    }

    public static int b(int i6, int i10, String str, String str2) {
        while (i10 >= 0 && i10 < str.length() && str2.indexOf(str.charAt(i10)) == -1) {
            if (str.charAt(i10) == '\'') {
                do {
                    i10 += i6;
                    if (i10 < 0 || i10 >= str.length()) {
                        break;
                    }
                } while (str.charAt(i10) != '\'');
            }
            i10 += i6;
        }
        return i10;
    }

    public static Calendar c(Calendar calendar) {
        Calendar calendarH = h(calendar);
        Calendar calendarH2 = h(null);
        calendarH2.set(calendarH.get(1), calendarH.get(2), calendarH.get(5));
        return calendarH2;
    }

    public static DateFormat d(int i6, Locale locale) {
        DateFormat dateInstance = DateFormat.getDateInstance(i6, locale);
        dateInstance.setTimeZone(TimeZone.getTimeZone("UTC"));
        return dateInstance;
    }

    public static SimpleDateFormat e() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(((SimpleDateFormat) DateFormat.getDateInstance(3, Locale.getDefault())).toPattern().replaceAll("\\s+", ""), Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        simpleDateFormat.setLenient(false);
        return simpleDateFormat;
    }

    public static String f(Resources resources, SimpleDateFormat simpleDateFormat) throws Resources.NotFoundException {
        String pattern = simpleDateFormat.toPattern();
        String string = resources.getString(R.string.mtrl_picker_text_input_year_abbr);
        String string2 = resources.getString(R.string.mtrl_picker_text_input_month_abbr);
        String string3 = resources.getString(R.string.mtrl_picker_text_input_day_abbr);
        if (pattern.replaceAll("[^y]", "").length() == 1) {
            pattern = pattern.replace("y", "yyyy");
        }
        return pattern.replace("d", string3).replace("M", string2).replace("y", string);
    }

    public static Calendar g() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        calendar.setTimeZone(TimeZone.getTimeZone("UTC"));
        return calendar;
    }

    public static Calendar h(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        if (calendar == null) {
            calendar2.clear();
        } else {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        return calendar2;
    }
}
