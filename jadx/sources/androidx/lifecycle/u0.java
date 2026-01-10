package androidx.lifecycle;

import com.tencent.bugly.crashreport.biz.UserInfoBean;
import com.tencent.bugly.proguard.al;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2004a = 0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f2005b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f2006c;
    public final Object d;

    public u0(y yVar, n nVar) {
        j9.i.f(yVar, "registry");
        j9.i.f(nVar, "event");
        this.f2006c = yVar;
        this.d = nVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2004a) {
            case 0:
                if (!this.f2005b) {
                    ((y) this.f2006c).f((n) this.d);
                    this.f2005b = true;
                    break;
                }
                break;
            default:
                com.tencent.bugly.proguard.r rVar = (com.tencent.bugly.proguard.r) this.d;
                if (rVar.d) {
                    UserInfoBean userInfoBean = (UserInfoBean) this.f2006c;
                    if (userInfoBean != null) {
                        try {
                            com.tencent.bugly.proguard.r.a(userInfoBean);
                            al.c("[UserInfo] Record user info.", new Object[0]);
                            rVar.a(userInfoBean, false);
                        } catch (Throwable th) {
                            if (al.a(th)) {
                                return;
                            }
                            th.printStackTrace();
                        }
                    }
                    if (this.f2005b) {
                        rVar.b();
                        break;
                    }
                }
                break;
        }
    }

    public u0(com.tencent.bugly.proguard.r rVar, UserInfoBean userInfoBean, boolean z7) {
        this.d = rVar;
        this.f2006c = userInfoBean;
        this.f2005b = z7;
    }
}
