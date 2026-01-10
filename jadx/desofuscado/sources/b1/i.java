package b1;

import android.os.Handler;
import android.os.Looper;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import androidx.leanback.widget.n0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: i, reason: collision with root package name */
    public static final Object f3105i = new Object();

    /* renamed from: j, reason: collision with root package name */
    public static volatile i f3106j;

    /* renamed from: a, reason: collision with root package name */
    public final ReentrantReadWriteLock f3107a;

    /* renamed from: b, reason: collision with root package name */
    public final p.f f3108b;

    /* renamed from: c, reason: collision with root package name */
    public volatile int f3109c;
    public final Handler d;

    /* renamed from: e, reason: collision with root package name */
    public final f f3110e;
    public final h f;

    /* renamed from: g, reason: collision with root package name */
    public final int f3111g;

    /* renamed from: h, reason: collision with root package name */
    public final d f3112h;

    public i(p pVar) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f3107a = reentrantReadWriteLock;
        this.f3109c = 3;
        h hVar = pVar.f3131a;
        this.f = hVar;
        int i6 = pVar.f3132b;
        this.f3111g = i6;
        this.f3112h = pVar.f3133c;
        this.d = new Handler(Looper.getMainLooper());
        this.f3108b = new p.f(0);
        f fVar = new f(this);
        this.f3110e = fVar;
        reentrantReadWriteLock.writeLock().lock();
        if (i6 == 0) {
            try {
                this.f3109c = 0;
            } catch (Throwable th) {
                this.f3107a.writeLock().unlock();
                throw th;
            }
        }
        reentrantReadWriteLock.writeLock().unlock();
        if (b() == 0) {
            try {
                hVar.a(new e(fVar));
            } catch (Throwable th2) {
                d(th2);
            }
        }
    }

    public static i a() {
        i iVar;
        synchronized (f3105i) {
            try {
                iVar = f3106j;
                if (!(iVar != null)) {
                    throw new IllegalStateException("EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
                }
            } finally {
            }
        }
        return iVar;
    }

    public final int b() {
        this.f3107a.readLock().lock();
        try {
            return this.f3109c;
        } finally {
            this.f3107a.readLock().unlock();
        }
    }

    public final void c() {
        if (!(this.f3111g == 1)) {
            throw new IllegalStateException("Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        }
        if (b() == 1) {
            return;
        }
        this.f3107a.writeLock().lock();
        try {
            if (this.f3109c == 0) {
                return;
            }
            this.f3109c = 0;
            this.f3107a.writeLock().unlock();
            f fVar = this.f3110e;
            i iVar = fVar.f3102a;
            try {
                iVar.f.a(new e(fVar));
            } catch (Throwable th) {
                iVar.d(th);
            }
        } finally {
            this.f3107a.writeLock().unlock();
        }
    }

    public final void d(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.f3107a.writeLock().lock();
        try {
            this.f3109c = 2;
            arrayList.addAll(this.f3108b);
            this.f3108b.clear();
            this.f3107a.writeLock().unlock();
            this.d.post(new n0(arrayList, this.f3109c, th));
        } catch (Throwable th2) {
            this.f3107a.writeLock().unlock();
            throw th2;
        }
    }

    public final CharSequence e(CharSequence charSequence, int i6, int i10) {
        int iCharCount;
        t[] tVarArr;
        if (!(b() == 1)) {
            throw new IllegalStateException("Not initialized yet");
        }
        if (i6 < 0) {
            throw new IllegalArgumentException("start cannot be negative");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("end cannot be negative");
        }
        a2.a.n("start should be <= than end", i6 <= i10);
        v vVar = null;
        if (charSequence == null) {
            return null;
        }
        a2.a.n("start should be < than charSequence length", i6 <= charSequence.length());
        a2.a.n("end should be < than charSequence length", i10 <= charSequence.length());
        if (charSequence.length() == 0 || i6 == i10) {
            return charSequence;
        }
        a7.f fVar = this.f3110e.f3103b;
        fVar.getClass();
        boolean z7 = charSequence instanceof s;
        if (z7) {
            ((s) charSequence).a();
        }
        if (z7) {
            vVar = new v((Spannable) charSequence);
        } else {
            try {
                if (charSequence instanceof Spannable) {
                    vVar = new v((Spannable) charSequence);
                } else if ((charSequence instanceof Spanned) && ((Spanned) charSequence).nextSpanTransition(i6 - 1, i10 + 1, t.class) <= i10) {
                    vVar = new v(charSequence);
                }
            } finally {
                if (z7) {
                    ((s) charSequence).b();
                }
            }
        }
        if (vVar != null && (tVarArr = (t[]) vVar.f3144b.getSpans(i6, i10, t.class)) != null && tVarArr.length > 0) {
            for (t tVar : tVarArr) {
                int spanStart = vVar.f3144b.getSpanStart(tVar);
                int spanEnd = vVar.f3144b.getSpanEnd(tVar);
                if (spanStart != i10) {
                    vVar.removeSpan(tVar);
                }
                i6 = Math.min(spanStart, i6);
                i10 = Math.max(spanEnd, i10);
            }
        }
        if (i6 != i10 && i6 < charSequence.length()) {
            n nVar = new n((q) ((a0.f) fVar.f169b).d);
            v vVar2 = vVar;
            int iCodePointAt = Character.codePointAt(charSequence, i6);
            int i11 = 0;
            loop1: while (true) {
                iCharCount = i6;
                while (i6 < i10 && i11 < Integer.MAX_VALUE) {
                    int iA = nVar.a(iCodePointAt);
                    if (iA == 1) {
                        iCharCount += Character.charCount(Character.codePointAt(charSequence, iCharCount));
                        if (iCharCount < i10) {
                            iCodePointAt = Character.codePointAt(charSequence, iCharCount);
                        }
                        i6 = iCharCount;
                    } else if (iA == 2) {
                        i6 += Character.charCount(iCodePointAt);
                        if (i6 < i10) {
                            iCodePointAt = Character.codePointAt(charSequence, i6);
                        }
                    } else if (iA == 3) {
                        if (!fVar.D(charSequence, iCharCount, i6, ((q) nVar.f).f3135b)) {
                            if (vVar2 == null) {
                                vVar2 = new v((Spannable) new SpannableString(charSequence));
                            }
                            vVar2.setSpan(new t(((q) nVar.f).f3135b), iCharCount, i6, 33);
                            i11++;
                        }
                    }
                }
                break loop1;
            }
            if (nVar.f3121a == 2 && ((q) nVar.f3124e).f3135b != null && ((nVar.f3123c > 1 || nVar.d()) && i11 < Integer.MAX_VALUE && !fVar.D(charSequence, iCharCount, i6, ((q) nVar.f3124e).f3135b))) {
                if (vVar2 == null) {
                    vVar2 = new v(charSequence);
                }
                vVar2.setSpan(new t(((q) nVar.f3124e).f3135b), iCharCount, i6, 33);
            }
            if (vVar2 != null) {
                Spannable spannable = vVar2.f3144b;
                if (z7) {
                    ((s) charSequence).b();
                }
                return spannable;
            }
            if (!z7) {
                return charSequence;
            }
        } else if (!z7) {
            return charSequence;
        }
        return charSequence;
    }

    public final void f(g gVar) {
        a2.a.p(gVar, "initCallback cannot be null");
        this.f3107a.writeLock().lock();
        try {
            if (this.f3109c == 1 || this.f3109c == 2) {
                this.d.post(new n0(Arrays.asList(gVar), this.f3109c, (Throwable) null));
            } else {
                this.f3108b.add(gVar);
            }
            this.f3107a.writeLock().unlock();
        } catch (Throwable th) {
            this.f3107a.writeLock().unlock();
            throw th;
        }
    }
}
