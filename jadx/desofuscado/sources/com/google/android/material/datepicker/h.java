package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.material.textfield.TextInputLayout;
import com.p2elite.brtv2.R;
import java.text.SimpleDateFormat;
import java.util.Date;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4839a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j f4840b;

    public h(j jVar, String str) {
        this.f4840b = jVar;
        this.f4839a = str;
    }

    @Override // java.lang.Runnable
    public final void run() throws Resources.NotFoundException {
        j jVar = this.f4840b;
        TextInputLayout textInputLayout = jVar.f4847a;
        SimpleDateFormat simpleDateFormat = jVar.f4848b;
        Context context = textInputLayout.getContext();
        textInputLayout.setError(context.getString(R.string.mtrl_picker_invalid_format) + "\n" + String.format(context.getString(R.string.mtrl_picker_invalid_format_use), this.f4839a) + "\n" + String.format(context.getString(R.string.mtrl_picker_invalid_format_example), simpleDateFormat.format(new Date(g0.g().getTimeInMillis()))));
        jVar.a();
    }
}
