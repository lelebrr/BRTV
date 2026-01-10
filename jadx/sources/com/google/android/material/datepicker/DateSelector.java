package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public interface DateSelector<S> extends Parcelable {
    String a(Context context);

    int b(Context context);

    ArrayList c();

    View e(LayoutInflater layoutInflater, ViewGroup viewGroup, CalendarConstraints calendarConstraints, t tVar);

    boolean f();

    ArrayList g();

    Object i();

    void k(long j10);
}
