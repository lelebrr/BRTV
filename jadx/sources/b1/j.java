package b1;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.emoji2.text.EmojiCompatInitializer;
import androidx.lifecycle.w;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j implements androidx.lifecycle.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ androidx.lifecycle.p f3113a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ EmojiCompatInitializer f3114b;

    public j(EmojiCompatInitializer emojiCompatInitializer, androidx.lifecycle.p pVar) {
        this.f3114b = emojiCompatInitializer;
        this.f3113a = pVar;
    }

    @Override // androidx.lifecycle.e
    public final void b(w wVar) {
        this.f3114b.getClass();
        (Build.VERSION.SDK_INT >= 28 ? b.a(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new l(0), 500L);
        this.f3113a.c(this);
    }

    @Override // androidx.lifecycle.e
    public final void c(w wVar) {
        j9.i.f(wVar, "owner");
    }

    @Override // androidx.lifecycle.e
    public final void onStart(w wVar) {
        j9.i.f(wVar, "owner");
    }

    @Override // androidx.lifecycle.e
    public final /* synthetic */ void e(w wVar) {
    }

    @Override // androidx.lifecycle.e
    public final /* synthetic */ void onDestroy(w wVar) {
    }

    @Override // androidx.lifecycle.e
    public final /* synthetic */ void onStop(w wVar) {
    }
}
