package ra;

import ea.f0;
import ea.u;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9631a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f0 f9632b;

    public /* synthetic */ d(f0 f0Var, int i6) {
        this.f9631a = i6;
        this.f9632b = f0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9631a) {
            case 0:
                f0 f0Var = this.f9632b;
                if (f0Var.f6649b) {
                    int i6 = f0Var.f6655j;
                    if (i6 == 2) {
                        f0Var.f6653h += f0Var.f6654i;
                        f0Var.f6655j = 0;
                    } else {
                        f0Var.f6655j = i6 + 1;
                    }
                    long j10 = f0Var.d - (f0Var.f6653h * 1000);
                    f0Var.d = j10;
                    if (j10 < 0) {
                        f0Var.d = 0L;
                    }
                    a2.a.s("rs9fH/RGxG6yxEkU9ke2aanEElY=\n", "3Koodpoilhs=\n");
                    a2.a.s("1TLwEA==\n", "+B/dPQdc1Ws=\n");
                    f0Var.b(f0Var.d);
                    u uVar = f0Var.f6651e;
                    uVar.removeCallbacks(this);
                    uVar.postDelayed(this, 100L);
                    break;
                }
                break;
            default:
                f0 f0Var2 = this.f9632b;
                if (f0Var2.f6650c) {
                    int i10 = f0Var2.f6655j;
                    if (i10 == 2) {
                        f0Var2.f6653h += f0Var2.f6654i;
                        f0Var2.f6655j = 0;
                    } else {
                        f0Var2.f6655j = i10 + 1;
                    }
                    long j11 = f0Var2.d + (f0Var2.f6653h * 1000);
                    f0Var2.d = j11;
                    long j12 = f0Var2.f6652g;
                    if (j11 > j12) {
                        f0Var2.d = j12;
                    }
                    f0Var2.b(f0Var2.d);
                    a2.a.s("mokfUHmEyg6dmgh2SoXWGJ6ECQRNntZD3A==\n", "/OhsJD/ruHk=\n");
                    a2.a.s("+/p+HQ==\n", "1tdTMFRAT/Q=\n");
                    u uVar2 = f0Var2.f6651e;
                    uVar2.removeCallbacks(this);
                    uVar2.postDelayed(this, 100L);
                    break;
                }
                break;
        }
    }
}
