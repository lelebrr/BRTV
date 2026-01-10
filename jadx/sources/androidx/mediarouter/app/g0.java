package androidx.mediarouter.app;

import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.p1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import q1.u0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2603a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2604b;

    public /* synthetic */ g0(int i6, Object obj) {
        this.f2603a = i6;
        this.f2604b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int iMax;
        switch (this.f2603a) {
            case 0:
                h0 h0Var = (h0) this.f2604b;
                q0 q0Var = h0Var.d;
                if (q0Var.f2674v != null) {
                    q0Var.f2669q.removeMessages(2);
                }
                q1.s0 s0Var = h0Var.f2606a;
                q0 q0Var2 = h0Var.d;
                q0Var2.f2674v = s0Var;
                boolean zIsActivated = view.isActivated();
                boolean z7 = !zIsActivated;
                if (zIsActivated) {
                    Integer num = (Integer) q0Var2.f2675w.get(h0Var.f2606a.f9131c);
                    iMax = num == null ? 1 : Math.max(1, num.intValue());
                } else {
                    iMax = 0;
                }
                h0Var.c(z7);
                h0Var.f2608c.setProgress(iMax);
                h0Var.f2606a.j(iMax);
                q0Var2.f2669q.sendEmptyMessageDelayed(2, 500L);
                return;
            case 1:
                MediaRouteExpandCollapseButton mediaRouteExpandCollapseButton = (MediaRouteExpandCollapseButton) this.f2604b;
                boolean z10 = mediaRouteExpandCollapseButton.f2537h;
                mediaRouteExpandCollapseButton.f2537h = !z10;
                if (z10) {
                    mediaRouteExpandCollapseButton.setImageDrawable(mediaRouteExpandCollapseButton.f2535e);
                    mediaRouteExpandCollapseButton.f2535e.start();
                    mediaRouteExpandCollapseButton.setContentDescription(mediaRouteExpandCollapseButton.f);
                } else {
                    mediaRouteExpandCollapseButton.setImageDrawable(mediaRouteExpandCollapseButton.d);
                    mediaRouteExpandCollapseButton.d.start();
                    mediaRouteExpandCollapseButton.setContentDescription(mediaRouteExpandCollapseButton.f2536g);
                }
                View.OnClickListener onClickListener = mediaRouteExpandCollapseButton.f2538i;
                if (onClickListener != null) {
                    onClickListener.onClick(view);
                    return;
                }
                return;
            case 2:
                ((c0) this.f2604b).dismiss();
                return;
            case 3:
                j0 j0Var = (j0) this.f2604b;
                u0 u0Var = j0Var.f2617g.f2651j.f2658e;
                q1.s0 s0Var2 = j0Var.f;
                u0Var.getClass();
                if (s0Var2 == null) {
                    throw new NullPointerException("route must not be null");
                }
                u0.b();
                q1.h hVarC = u0.c();
                q1.p0 p0VarA = hVarC.d.a();
                if (p0VarA == null) {
                    Log.w("AxMediaRouter", "Ignoring attempt to transfer for a selected non-group route");
                } else {
                    List<q1.s0> listSingletonList = Collections.singletonList(s0Var2);
                    ArrayList arrayList = new ArrayList();
                    for (q1.s0 s0Var3 : listSingletonList) {
                        q1.z zVar = (q1.z) p0VarA.f9106x.get(s0Var3.f9131c);
                        if (zVar == null || !zVar.f9188e) {
                            Log.w("AxMediaRouter", "Ignoring attempt to update the group with a non-transferable route: " + s0Var3);
                        } else {
                            arrayList.add(s0Var3.f9130b);
                        }
                    }
                    if (arrayList.isEmpty()) {
                        Log.w("AxMediaRouter", "Ignoring attempt to update the group with non-transferable routes");
                    } else if (p0VarA.g()) {
                        q1.c0 c0Var = hVarC.f8989e;
                        if (!(c0Var instanceof q1.b0)) {
                            throw new IllegalStateException("There is no currently selected dynamic group route.");
                        }
                        ((q1.b0) c0Var).p(arrayList);
                    } else if (p0VarA.n()) {
                        hVarC.e();
                        Log.w("AxMediaRouter", "Ignoring attempt to update routes for a non-available connected route: " + p0VarA);
                    } else {
                        Log.w("AxMediaRouter", "Ignoring attempt to update routes for an unsupported group route:" + p0VarA);
                    }
                }
                j0Var.f2614b.setVisibility(4);
                j0Var.f2615c.setVisibility(0);
                return;
            default:
                n0 n0Var = (n0) this.f2604b;
                boolean zD = n0Var.d(n0Var.f2606a);
                boolean z11 = !zD;
                boolean zE = n0Var.f2606a.e();
                o0 o0Var = n0Var.f2641n;
                if (zD) {
                    u0 u0Var2 = o0Var.f2651j.f2658e;
                    q1.s0 s0Var4 = n0Var.f2606a;
                    u0Var2.getClass();
                    if (s0Var4 == null) {
                        throw new NullPointerException("route must not be null");
                    }
                    u0.b();
                    q1.h hVarC2 = u0.c();
                    q1.p0 p0VarA2 = hVarC2.d.a();
                    if (p0VarA2 == null) {
                        Log.w("AxMediaRouter", "Ignoring attempt to remove a member route from a selected non-group route");
                    } else {
                        q1.z zVar2 = (q1.z) p0VarA2.f9106x.get(s0Var4.f9131c);
                        if (zVar2 == null || !zVar2.f9187c) {
                            Log.w("AxMediaRouter", "Ignoring attempt to remove a non-unselectable member route: " + s0Var4);
                        } else if (!Collections.unmodifiableList(p0VarA2.f9148v).contains(s0Var4)) {
                            Log.w("AxMediaRouter", "Ignoring attempt to remove a non-in-group member route: " + s0Var4);
                        } else if (Collections.unmodifiableList(p0VarA2.f9148v).size() <= 1) {
                            Log.w("AxMediaRouter", "Ignoring attempt to remove the last member route.");
                        } else if (p0VarA2.g()) {
                            q1.c0 c0Var2 = hVarC2.f8989e;
                            if (!(c0Var2 instanceof q1.b0)) {
                                throw new IllegalStateException("There is no currently selected dynamic group route.");
                            }
                            ((q1.b0) c0Var2).o(s0Var4.f9130b);
                        } else if (p0VarA2.n()) {
                            hVarC2.e();
                            Log.w("AxMediaRouter", "Ignoring attempt to update routes for a non-available connected route: " + p0VarA2);
                        } else {
                            Log.w("AxMediaRouter", "Ignoring attempt to remove a route from an unsupported group route:" + p0VarA2);
                        }
                    }
                } else {
                    u0 u0Var3 = o0Var.f2651j.f2658e;
                    q1.s0 s0Var5 = n0Var.f2606a;
                    u0Var3.getClass();
                    if (s0Var5 == null) {
                        throw new NullPointerException("route must not be null");
                    }
                    u0.b();
                    q1.h hVarC3 = u0.c();
                    q1.p0 p0VarA3 = hVarC3.d.a();
                    if (p0VarA3 == null) {
                        Log.w("AxMediaRouter", "Ignoring attempt to add a member route to a selected non-group route");
                    } else if (!p0VarA3.o(s0Var5)) {
                        Log.w("AxMediaRouter", "Ignoring attempt to add a non-groupable member route: " + s0Var5);
                    } else if (Collections.unmodifiableList(p0VarA3.f9148v).contains(s0Var5)) {
                        Log.w("AxMediaRouter", "Ignoring attempt to add an existing member route: " + s0Var5);
                    } else if (p0VarA3.g()) {
                        q1.c0 c0Var3 = hVarC3.f8989e;
                        if (!(c0Var3 instanceof q1.b0)) {
                            throw new IllegalStateException("There is no currently selected dynamic group route.");
                        }
                        ((q1.b0) c0Var3).n(s0Var5.f9130b);
                    } else if (p0VarA3.n()) {
                        hVarC3.e();
                        Log.w("AxMediaRouter", "Ignoring attempt to add a route to a non-available connected route: " + p0VarA3);
                    } else {
                        Log.w("AxMediaRouter", "Ignoring attempt to add a route to an unsupported group route:" + p0VarA3);
                    }
                }
                n0Var.e(z11, !zE);
                if (zE) {
                    List listUnmodifiableList = Collections.unmodifiableList(o0Var.f2651j.f2660h.f9148v);
                    for (q1.s0 s0Var6 : Collections.unmodifiableList(n0Var.f2606a.f9148v)) {
                        if (listUnmodifiableList.contains(s0Var6) != z11) {
                            h0 h0Var2 = (h0) o0Var.f2651j.f2673u.get(s0Var6.f9131c);
                            if (h0Var2 instanceof n0) {
                                ((n0) h0Var2).e(z11, true);
                            }
                        }
                    }
                }
                q1.s0 s0Var7 = n0Var.f2606a;
                q0 q0Var3 = o0Var.f2651j;
                List listUnmodifiableList2 = Collections.unmodifiableList(q0Var3.f2660h.f9148v);
                int iMax2 = Math.max(1, listUnmodifiableList2.size());
                if (s0Var7.e()) {
                    Iterator it = Collections.unmodifiableList(s0Var7.f9148v).iterator();
                    while (it.hasNext()) {
                        if (listUnmodifiableList2.contains((q1.s0) it.next()) != z11) {
                            iMax2 += !zD ? 1 : -1;
                        }
                    }
                } else {
                    iMax2 += zD ? -1 : 1;
                }
                q0 q0Var4 = o0Var.f2651j;
                boolean z12 = q0Var4.R && Collections.unmodifiableList(q0Var4.f2660h.f9148v).size() > 1;
                boolean z13 = q0Var3.R && iMax2 >= 2;
                if (z12 != z13) {
                    p1 p1VarFindViewHolderForAdapterPosition = q0Var3.f2670r.findViewHolderForAdapterPosition(0);
                    if (p1VarFindViewHolderForAdapterPosition instanceof k0) {
                        k0 k0Var = (k0) p1VarFindViewHolderForAdapterPosition;
                        o0Var.a(z13 ? k0Var.f : 0, k0Var.itemView);
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
