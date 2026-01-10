package com.trello.rxlifecycle.components;

import android.app.Activity;
import android.os.Bundle;
import ya.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class RxActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    public final a f5983a = a.a();

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f5983a.b(d8.a.f6322a);
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        this.f5983a.b(d8.a.f);
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onPause() {
        this.f5983a.b(d8.a.d);
        super.onPause();
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        this.f5983a.b(d8.a.f6324c);
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        this.f5983a.b(d8.a.f6323b);
    }

    @Override // android.app.Activity
    public final void onStop() {
        this.f5983a.b(d8.a.f6325e);
        super.onStop();
    }
}
