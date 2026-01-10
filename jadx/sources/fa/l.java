package fa;

import android.view.KeyEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.Constants$VIDEO_TYPE;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6907a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f6908b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f6909c;

    public /* synthetic */ l(Object obj, int i6, Object obj2) {
        this.f6907a = i6;
        this.f6909c = obj;
        this.f6908b = obj2;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
        int keyCode;
        Object obj = this.f6908b;
        Object obj2 = this.f6909c;
        switch (this.f6907a) {
            case 0:
                ((RecyclerView) obj).getLayoutManager();
                String str = o.f6924i;
                String str2 = a2.a.s("qLEIboDqUwGosQhzgOpTAaixCG6A6lMBteNbGNiuVA==\n", "lYw1U73Xbjw=\n") + i6 + a2.a.s("/Y7ZXNmFHg==\n", "3euvObfxJI8=\n") + keyEvent;
                boolean z7 = org.bitspark.android.utils.m.f8784b;
                Log.i(str, str2);
                o oVar = (o) obj2;
                if (i6 == 4) {
                    if (keyEvent.getAction() != 0) {
                        Log.i(str, a2.a.s("9uq9bXqrAjX26r1weqsCNfbqvW16qwI165zlKQLgWma/+cETE99wRpSC0Gpn5Fp8vqXucDPkSm0=\n", "y9eAUEeWPwg=\n"));
                        return false;
                    }
                    ea.d dVar = oVar.f;
                    if (dVar == ea.d.f6633e) {
                        oVar.f6930h.j();
                    } else if (dVar == ea.d.f6634g) {
                        Spark.X1.sendEmptyMessage(106);
                    } else {
                        Log.i(str, a2.a.s("zMpPwJxFVxj7y0Hbolc=\n", "v6Igt80wPmw=\n"));
                        org.bitspark.android.utils.m.p(oVar.f6925a);
                    }
                } else {
                    if (keyEvent.getAction() != 0) {
                        return false;
                    }
                    if (i6 == 22) {
                        return oVar.a(1);
                    }
                    if (i6 == 21) {
                        if (oVar.f6926b % oVar.f6929g != 0) {
                            return oVar.a(-1);
                        }
                        ea.d dVar2 = oVar.f;
                        ea.d dVar3 = ea.d.f6633e;
                        if (dVar2 == dVar3 && !ka.m0.G0) {
                            Spark.X1.sendEmptyMessage(120);
                            ka.m0.F0 = dVar3;
                        } else if (dVar2 == ea.d.f6634g) {
                            Spark.X1.sendEmptyMessage(106);
                        } else if (dVar2 == dVar3 && ka.m0.G0) {
                            Spark.X1.sendEmptyMessage(107);
                            ka.m0.F0 = dVar3;
                        }
                        oVar.d = -1;
                        oVar.f6927c = 1;
                    } else {
                        if (i6 != 19) {
                            if (i6 == 20) {
                                return oVar.a(oVar.f6929g);
                            }
                            return false;
                        }
                        if (oVar.f != ea.d.f6634g || oVar.f6926b > oVar.f6929g) {
                            return oVar.a(-oVar.f6929g);
                        }
                    }
                }
                return true;
            case 1:
                ((RecyclerView) obj).getLayoutManager();
                p pVar = (p) obj2;
                if (keyEvent.getAction() == 0 && i6 == 4) {
                    a7.f fVar = pVar.f6935e;
                    if (fVar != null) {
                        fVar.j();
                    }
                } else if (keyEvent.getAction() == 0) {
                    int keyCode2 = keyEvent.getKeyCode();
                    if (keyCode2 == 23 || keyCode2 == 66 || keyCode2 == 96) {
                        if ((keyEvent.getFlags() & 128) != 128) {
                            keyEvent.startTracking();
                        } else if (pVar.f6934c.findViewHolderForAdapterPosition(pVar.f6932a) != null) {
                            pVar.f6934c.findViewHolderForAdapterPosition(pVar.f6932a).itemView.performLongClick();
                        }
                    } else {
                        if (i6 == 19) {
                            if (pVar.d == 11) {
                                return p.a(pVar, -1);
                            }
                            pVar.f6933b = -1;
                            return false;
                        }
                        if (i6 == 20) {
                            int i10 = pVar.d;
                            if (i10 == 11) {
                                return p.a(pVar, 1);
                            }
                            ka.m0.F0 = ea.d.f6633e;
                            pVar.f6933b = -1;
                            if (i10 != 2 || ka.m0.C0.getVisibility() != 8) {
                                return false;
                            }
                        } else {
                            if (i6 == 22) {
                                if (pVar.d != 11) {
                                    return p.a(pVar, 1);
                                }
                                pVar.f6933b = -1;
                                return false;
                            }
                            if (i6 != 21) {
                                return false;
                            }
                            if (pVar.d != 11) {
                                return p.a(pVar, -1);
                            }
                            Spark.X1.sendEmptyMessage(105);
                        }
                    }
                } else {
                    if (keyEvent.getAction() != 1) {
                        return false;
                    }
                    int keyCode3 = keyEvent.getKeyCode();
                    if ((keyCode3 != 23 && keyCode3 != 66 && keyCode3 != 96) || (keyEvent.getFlags() & 128) == 128) {
                        return false;
                    }
                    if (pVar.f6934c.findViewHolderForAdapterPosition(pVar.f6932a) != null) {
                        pVar.f6934c.findViewHolderForAdapterPosition(pVar.f6932a).itemView.performClick();
                    }
                }
                return true;
            case 2:
                ((RecyclerView) obj).getLayoutManager();
                if (keyEvent.getAction() != 0 || i6 != 4) {
                    u uVar = (u) obj2;
                    if (keyEvent.getAction() == 0) {
                        int keyCode4 = keyEvent.getKeyCode();
                        if (keyCode4 != 23 && keyCode4 != 66 && keyCode4 != 96) {
                            Constants$VIDEO_TYPE constants$VIDEO_TYPE = uVar.f6957a;
                            Constants$VIDEO_TYPE constants$VIDEO_TYPE2 = Constants$VIDEO_TYPE.BSLIVE;
                            if (constants$VIDEO_TYPE != constants$VIDEO_TYPE2) {
                                Constants$VIDEO_TYPE constants$VIDEO_TYPE3 = Constants$VIDEO_TYPE.BSVOD;
                                if (constants$VIDEO_TYPE == constants$VIDEO_TYPE3) {
                                    if (i6 == 22) {
                                        return u.a(uVar, 1);
                                    }
                                    if (i6 == 21) {
                                        if (uVar.f6958b % ea.h.f6690u != 0) {
                                            return u.a(uVar, -1);
                                        }
                                        Spark.X1.sendEmptyMessage(112);
                                        ka.e.f7770k0 = constants$VIDEO_TYPE3;
                                        uVar.f6959c = -1;
                                    } else {
                                        if (i6 == 19) {
                                            return u.a(uVar, -5);
                                        }
                                        if (i6 == 20) {
                                            return u.a(uVar, 5);
                                        }
                                    }
                                }
                                return false;
                            }
                            if (i6 == 22) {
                                return u.a(uVar, 1);
                            }
                            if (i6 == 21) {
                                if (uVar.f6958b != 0) {
                                    return u.a(uVar, -1);
                                }
                                Spark.X1.sendEmptyMessage(112);
                                ka.e.f7770k0 = constants$VIDEO_TYPE2;
                                uVar.f6959c = -1;
                            } else if (i6 != 19) {
                                if (i6 == 20) {
                                    return u.a(uVar, (-uVar.f6958b) - 1);
                                }
                                return false;
                            }
                        } else if ((keyEvent.getFlags() & 128) != 128) {
                            keyEvent.startTracking();
                        } else if (uVar.d.findViewHolderForAdapterPosition(uVar.f6958b) != null && uVar.d.findViewHolderForAdapterPosition(uVar.f6958b).itemView != null) {
                            uVar.d.findViewHolderForAdapterPosition(uVar.f6958b).itemView.performLongClick();
                        }
                    } else {
                        if (keyEvent.getAction() != 1 || (!((keyCode = keyEvent.getKeyCode()) == 23 || keyCode == 66 || keyCode == 96) || (keyEvent.getFlags() & 128) == 128)) {
                            if (i6 == 4) {
                                if (u.f > 0) {
                                    u.f = 0;
                                } else {
                                    Spark.X1.sendEmptyMessage(112);
                                }
                            }
                            return false;
                        }
                        if (uVar.d.findViewHolderForAdapterPosition(uVar.f6958b) != null && uVar.d.findViewHolderForAdapterPosition(uVar.f6958b).itemView != null) {
                            uVar.d.findViewHolderForAdapterPosition(uVar.f6958b).itemView.performClick();
                        }
                    }
                }
                return true;
            default:
                ka.i0 i0Var = (ka.i0) obj2;
                if (i6 != 4) {
                    x6.h hVar = (x6.h) obj;
                    if ((i6 != 21 || hVar.d != 0) && ((i6 != 22 || hVar.d != i0Var.X.getTabCount() - 1) && i6 != 19)) {
                        return false;
                    }
                } else if (keyEvent.getAction() == 1) {
                    i0Var.U.f();
                }
                return true;
        }
    }
}
