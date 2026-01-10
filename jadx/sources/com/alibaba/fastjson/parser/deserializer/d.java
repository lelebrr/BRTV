package com.alibaba.fastjson.parser.deserializer;

import android.os.LocaleList;
import java.util.Locale;
import java.util.concurrent.atomic.DoubleAdder;
import java.util.concurrent.atomic.LongAdder;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class d {
    public static /* bridge */ /* synthetic */ boolean B(Object obj) {
        return obj instanceof DoubleAdder;
    }

    public static /* bridge */ /* synthetic */ LocaleList h(Object obj) {
        return (LocaleList) obj;
    }

    public static /* synthetic */ LocaleList i(Locale[] localeArr) {
        return new LocaleList(localeArr);
    }

    public static /* bridge */ /* synthetic */ DoubleAdder t(Object obj) {
        return (DoubleAdder) obj;
    }

    public static /* bridge */ /* synthetic */ LongAdder u(Object obj) {
        return (LongAdder) obj;
    }

    public static /* bridge */ /* synthetic */ boolean y(Object obj) {
        return obj instanceof LongAdder;
    }
}
