package com.trello.rxlifecycle.components.support;

import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import ya.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class RxFragmentActivity extends FragmentActivity {

    /* renamed from: w, reason: collision with root package name */
    public final a f5985w = a.a();

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f5985w.b(d8.a.f6322a);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        this.f5985w.b(d8.a.f);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        this.f5985w.b(d8.a.d);
        super.onPause();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        this.f5985w.b(d8.a.f6324c);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStart() {
        super.onStart();
        this.f5985w.b(d8.a.f6323b);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        this.f5985w.b(d8.a.f6325e);
        super.onStop();
    }
}
