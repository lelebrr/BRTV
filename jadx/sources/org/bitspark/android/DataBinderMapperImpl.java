package org.bitspark.android;

import a2.a;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import ja.c;
import ja.d;
import ja.f;
import ja.g;
import ja.i;
import ja.k;
import ja.m;
import ja.o;
import ja.q;
import java.util.ArrayList;
import java.util.List;
import w0.b;
import w0.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class DataBinderMapperImpl extends b {

    /* renamed from: a, reason: collision with root package name */
    public static final SparseIntArray f8659a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(11);
        f8659a = sparseIntArray;
        sparseIntArray.put(R.layout.item_brand_rectangle, 1);
        sparseIntArray.put(R.layout.item_live_setting, 2);
        sparseIntArray.put(R.layout.item_live_setting_select, 3);
        sparseIntArray.put(R.layout.item_live_setting_subtitle, 4);
        sparseIntArray.put(R.layout.item_live_setting_subtitle_location, 5);
        sparseIntArray.put(R.layout.item_live_setting_subtitle_title, 6);
        sparseIntArray.put(R.layout.layout_live_setting_container, 7);
        sparseIntArray.put(R.layout.view_live_setting_fullscreen, 8);
        sparseIntArray.put(R.layout.view_live_setting_main, 9);
        sparseIntArray.put(R.layout.view_live_setting_source, 10);
        sparseIntArray.put(R.layout.view_live_setting_subtitle, 11);
    }

    @Override // w0.b
    public final List a() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        return arrayList;
    }

    @Override // w0.b
    public final e b(int i6, View view) {
        int i10 = f8659a.get(i6);
        if (i10 > 0) {
            Object tag = view.getTag();
            if (tag == null) {
                throw new RuntimeException(a.s("n+OIQcdJsYSdqoVXkUHklsn+jFE=\n", "6YrtNuckxPc=\n"));
            }
            switch (i10) {
                case 1:
                    if (a.s("WGSlRfVRf75AYLF14lcxuVBark/jUTG5U2m5dbA=\n", "NAXcKoAlUNc=\n").equals(tag)) {
                        return new ja.b(view);
                    }
                    throw new IllegalArgumentException(a.s("NYaVXe5VPJcHgYJd80A+2j6Mghz0UATFBI2EHPRTN9JBh4Nd81ot1g2HlFO6Zj7UBIeGGP4Oew==\n", "Ye7wfZo0W7c=\n") + tag);
                case 2:
                    if (a.s("gheUQ/0GjXeaE4Bz5BvUe7EFiFj8G8x5sUY=\n", "7nbtLIhyoh4=\n").equals(tag)) {
                        return new c(view);
                    }
                    throw new IllegalArgumentException(a.s("iNCTtPU9UAy614S06ChSQYPUn+LkA0RJqMyf+uZ8Xl/80Zji4DBeSPKYpPHiOV5audzMtA==\n", "3Lj2lIFcNyw=\n") + tag);
                case 3:
                    if (a.s("/Z5592A5XRblmm3HeSQEGs6MZexhJBwYzoxl9HAuBiCh\n", "kf8AmBVNcn8=\n").equals(tag)) {
                        return new d(view);
                    }
                    throw new IllegalArgumentException(a.s("dn+ixqSN6kZEeLXGuZjoC317rpC1s/4DVmOuiLez/gNOcqSS8IX+Rkt5sYe8helIAkWihbWF+wNG\nLec=\n", "IhfH5tDsjWY=\n") + tag);
                case 4:
                    if (a.s("IIfz21I1tVE4g+frSyjsXROV78BTKPRfE5X/1lMo7lQpubo=\n", "TOaKtCdBmjg=\n").equals(tag)) {
                        return new ja.e(view);
                    }
                    throw new IllegalArgumentException(a.s("lZaTvwco8RGnkYS/Gj3zXJ6Sn+kWFuVUtYqf8RQW5USjip/rHyy2WLLen/EFKPpYpdDWzRYq81i3\nm5KlUw==\n", "wf72n3NJljE=\n") + tag);
                case 5:
                    if (a.s("mG6mSoTF5z6AarJ6ndi+Mqt8ulGF2KYwq3yqR4XYvDuRULNKktC8PpthgBU=\n", "9A/fJfGxyFc=\n").equals(tag)) {
                        return new f(view);
                    }
                    throw new IllegalArgumentException(a.s("/umRjRCLWtPM7oaNDZ5YnvXtndsBtU6W3vWdwwO1TobI9Z3ZCI9in8XildkNhVPTw/LUxAqcXJ/D\n5dqNNo9elsP3kcleyg==\n", "qoH0rWTqPfM=\n") + tag);
                case 6:
                    if (!a.s("NphF8dOzq38unFHByq7ycwWKWerSrupxBYpJ/NKu8Ho/pkj30qvhSWo=\n", "Wvk8nqbHhBY=\n").equals(tag)) {
                        throw new IllegalArgumentException(a.s("YQy0O921jmdTC6M7wKCMKmoIuG3Mi5oiQRC4dc6LmjJXELhvxbG2M1wQvX6JvZpnXAqnesW9jWkV\nNrR4zL2fIlFe8Q==\n", "NWTRG6nU6Uc=\n") + tag);
                    }
                    g gVar = new g(view, (TextView) e.R(view, 1, null)[0]);
                    gVar.f7500n = -1L;
                    gVar.f7498l.setTag(null);
                    view.setTag(R.id.dataBinding, gVar);
                    synchronized (gVar) {
                        gVar.f7500n = 2L;
                    }
                    gVar.S();
                    return gVar;
                case 7:
                    if (a.s("L5Wn2wnCheQijbHBCOnG4TWRgccZwt7hLZOB1xPY3ukqmrvGI4Y=\n", "Q/TetHy2qog=\n").equals(tag)) {
                        return new i(view);
                    }
                    throw new IllegalArgumentException(a.s("0PA4fNivPxHi9y98wK8hXvHsAjDFuD1u9/0pKMWgP27n9zMozac2VPa4NC+MpzZH5fQ0OILuClTn\n/TQqyapiEQ==\n", "hJhdXKzOWDE=\n") + tag);
                case 8:
                    if (a.s("TBvNZrC5fDNJH8NWqaQlIH8J0X2xpD0ifxzBZam+MDdFH9pW9Q==\n", "IHq0CcXNU0U=\n").equals(tag)) {
                        return new k(view);
                    }
                    throw new IllegalArgumentException(a.s("XRtALZM+Ud1vHFctkTZTilYfTHuCAEWYfQdMY4AAUIhlH1ZulTpTkykaVi2OMUCcZRpBI8cNU55s\nGlNog2UW\n", "CXMlDedfNv0=\n") + tag);
                case 9:
                    if (a.s("9WX42lokB9jwYfbqQzley8Z35MFbOUbJxmng3EEPGA==\n", "mQSBtS9QKK4=\n").equals(tag)) {
                        return new m(view);
                    }
                    throw new IllegalArgumentException(a.s("ZOnWaZZUX+VW7sFplFxdsm/t2j+HakugRPXaJ4VqVaRZ75MgkRVRq0bg3yCGGxiXVeLWIJRQXP8Q\n", "MIGzSeI1OMU=\n") + tag);
                case 10:
                    if (a.s("5/H87FbQ8Aji9fLcT82pG9Tj4PdXzbEZ1OPq9lHHuiG7\n", "i5CFgyOk334=\n").equals(tag)) {
                        return new o(view);
                    }
                    throw new IllegalArgumentException(a.s("n/ecbwEztVSt8ItvAzu3A5TzkDkQDaERv+uQIRINoRu+7ZoqVTuhVKLxjy4ZO7Za682cLBA7pBGv\npdk=\n", "y5/5T3VS0nQ=\n") + tag);
                case 11:
                    if (a.s("gJpc+rRSo4qFnlLKrU/6mbOIQOG1T+Kbs4hQ97VP+JCJpBU=\n", "7PsllcEmjPw=\n").equals(tag)) {
                        return new q(view);
                    }
                    throw new IllegalArgumentException(a.s("DHwohA9dFNk+ez+EDVUWjgd4JNIeYwCcLGAkyhxjAIw6YCTQF1lTkCs0JMoNXR+QPDpt9h5fFpAu\ncSmeWw==\n", "WBRNpHs8c/k=\n") + tag);
            }
        }
        return null;
    }
}
