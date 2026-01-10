package androidx.mediarouter.app;

import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.SystemClock;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import androidx.media.MediaBrowserServiceCompat;
import androidx.media3.common.C;
import androidx.mediarouter.media.MediaRouteProviderService;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import fa.f1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import org.bitspark.android.SpkApplication;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.Group;
import org.bitspark.android.beans.GroupBeanModel;
import org.bitspark.android.keyboard.custom.MyKeyBoardView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2557a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f2558b;

    public /* synthetic */ c(int i6, Object obj) {
        this.f2557a = i6;
        this.f2558b = obj;
    }

    public void a(Runnable runnable) {
        if (Thread.currentThread() == getLooper().getThread()) {
            runnable.run();
        } else {
            post(runnable);
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        q1.k0 k0Var;
        int iC;
        int i6 = 0;
        int i10 = 1;
        switch (this.f2557a) {
            case 0:
                int i11 = message.what;
                f fVar = (f) this.f2558b;
                if (i11 == 1) {
                    fVar.i((List) message.obj);
                    return;
                }
                if (i11 == 2) {
                    if (fVar.f2584h.isEmpty()) {
                        fVar.l(2);
                        c cVar = fVar.f2598v;
                        cVar.removeMessages(2);
                        cVar.removeMessages(3);
                        cVar.sendMessageDelayed(cVar.obtainMessage(3), C.DEFAULT_SEEK_FORWARD_INCREMENT_MS);
                        return;
                    }
                    return;
                }
                if (i11 == 3 && fVar.f2584h.isEmpty()) {
                    fVar.l(3);
                    c cVar2 = fVar.f2598v;
                    cVar2.removeMessages(2);
                    cVar2.removeMessages(3);
                    cVar2.removeMessages(1);
                    fVar.f2582e.h(fVar.f);
                    return;
                }
                return;
            case 1:
                if (message.what != 1) {
                    return;
                }
                List list = (List) message.obj;
                c0 c0Var = (c0) this.f2558b;
                c0Var.getClass();
                c0Var.f2568o = SystemClock.uptimeMillis();
                c0Var.f2562i.clear();
                c0Var.f2562i.addAll(list);
                c0Var.f2563j.a();
                return;
            case 2:
                int i12 = message.what;
                q0 q0Var = (q0) this.f2558b;
                if (i12 == 1) {
                    q0Var.p();
                    return;
                } else {
                    if (i12 == 2 && q0Var.f2674v != null) {
                        q0Var.f2674v = null;
                        q0Var.q();
                        return;
                    }
                    return;
                }
            case 3:
                int i13 = message.what;
                ka.r rVar = (ka.r) this.f2558b;
                if (i13 == 1) {
                    rVar.Z();
                } else if (i13 == 2) {
                    int i14 = message.arg1;
                    if (rVar.h() == null || rVar.h().getCurrentFocus() == null || rVar.h().getCurrentFocus().getId() != R.id.group_ch_search) {
                        rVar.Y(i14);
                    } else {
                        rVar.f7864q0 = Boolean.FALSE;
                    }
                }
                super.handleMessage(message);
                return;
            case 4:
                int i15 = message.what;
                if (i15 == 0) {
                    int i16 = message.arg1;
                    String strS = a2.a.s("WWBfqps=\n", "GzMJxf8lkZo=\n");
                    String strJ = ea.q.j("1GzE/ExzOlDcddf3R2U8UNwa\n", "kTqBshgsaBU=\n", new StringBuilder(), i16);
                    boolean z7 = org.bitspark.android.utils.m.f8784b;
                    Log.i(strS, strJ);
                    ka.m0 m0Var = (ka.m0) this.f2558b;
                    m0Var.f7819d0.f6972j.clear();
                    m0Var.f7819d0.f6972j.addAll(((Group) ga.o.f7155c.get(-1)).channnels);
                    m0Var.f7819d0.notifyItemRemoved(i16);
                    m0Var.f7819d0.notifyDataSetChanged();
                } else if (i15 == 1) {
                    String strS2 = a2.a.s("cxJ3/T8=\n", "MUEhkltHNqo=\n");
                    String strS3 = a2.a.s("pxYqBoa6jv+FLRQu6b6c5YwrBDf23w==\n", "y3lLYqb/2Lo=\n");
                    boolean z10 = org.bitspark.android.utils.m.f8784b;
                    Log.i(strS2, strS3);
                    ((ka.m0) this.f2558b).X();
                } else if (i15 == 2) {
                    HashSet hashSet = (HashSet) message.getData().getSerializable(a2.a.s("tgnGDz/DqVg=\n", "0Xupek+QzCw=\n"));
                    String strS4 = a2.a.s("MmQwElE=\n", "cDdmfTXMekg=\n");
                    String str = a2.a.s("545u74Oqepeg\n", "gPwBmvP5H+M=\n") + hashSet;
                    boolean z11 = org.bitspark.android.utils.m.f8784b;
                    Log.i(strS4, str);
                    ka.m0 m0Var2 = (ka.m0) this.f2558b;
                    m0Var2.getClass();
                    SparseArray sparseArray = new SparseArray();
                    if (hashSet != null) {
                        for (GroupBeanModel groupBeanModel : ga.o.f) {
                            if (hashSet.contains(Integer.valueOf(groupBeanModel.group_id))) {
                                for (ChannelBean.TagsBean tagsBean : groupBeanModel.items) {
                                    Group group = new Group();
                                    group.name = tagsBean.getName().getInit();
                                    group.id = tagsBean.getId();
                                    group.url = tagsBean.url;
                                    group.restrictedAccess = tagsBean.isRestrictedAccess();
                                    sparseArray.put(group.id, group);
                                }
                            }
                        }
                        if (sparseArray.size() == 0) {
                            Group group2 = new Group();
                            group2.name = SpkApplication.f8737c.getApplicationContext().getString(R.string.Popular);
                            group2.id = -10;
                            sparseArray.put(-10, group2);
                            Group group3 = new Group();
                            group3.name = SpkApplication.f8737c.getApplicationContext().getString(R.string.Favorites);
                            group3.id = -5;
                            sparseArray.put(-5, group3);
                        }
                    }
                    f1 f1Var = m0Var2.f7818c0;
                    if (f1Var == null) {
                        m0Var2.f7818c0 = new f1(sparseArray, m0Var2.h(), ka.m0.E0);
                        m0Var2.b0();
                    } else {
                        SparseArray sparseArray2 = f1Var.f6850h;
                        sparseArray2.clear();
                        f1Var.f6932a = 0;
                        for (int i17 = 0; i17 < sparseArray.size(); i17++) {
                            sparseArray2.put(sparseArray.keyAt(i17), (Group) sparseArray.valueAt(i17));
                        }
                        HashSet hashSet2 = new HashSet();
                        for (int i18 = 0; i18 < sparseArray.size(); i18++) {
                            hashSet2.add(Integer.valueOf(sparseArray.keyAt(i18)));
                        }
                        ArrayList arrayList = f1Var.f6851i;
                        arrayList.clear();
                        arrayList.addAll(hashSet2);
                        Collections.sort(arrayList);
                        m0Var2.f7818c0.notifyDataSetChanged();
                        if (m0Var2.f7832r0) {
                            m0Var2.W.smoothScrollToPosition(0);
                        } else {
                            m0Var2.Y.smoothScrollToPosition(0);
                        }
                    }
                    String str2 = ka.m0.B0;
                    String str3 = a2.a.s("qpLKJnQLTV6jjsA/SSlVEb6J3zY+aA==\n", "zeClUwRIJT8=\n") + sparseArray.size() + a2.a.s("xeLtNlae3hfM/ucva7zGTII=\n", "opCCQybdtnY=\n") + sparseArray;
                    boolean z12 = org.bitspark.android.utils.m.f8784b;
                    Log.i(str2, str3);
                    f1 f1Var2 = m0Var2.f7818c0;
                    if (f1Var2 != null) {
                        if (m0Var2.f7832r0) {
                            m0Var2.W.swapAdapter(f1Var2, false);
                        } else {
                            m0Var2.Y.swapAdapter(f1Var2, false);
                        }
                        ArrayList arrayList2 = m0Var2.f7818c0.f6851i;
                        if (arrayList2 != null && arrayList2.size() > 0) {
                            m0Var2.Y(((Integer) m0Var2.f7818c0.f6851i.get(0)).intValue(), "");
                        }
                    }
                } else if (i15 == 3) {
                    int i19 = message.arg1;
                    String str4 = (String) message.obj;
                    if (i19 == -20) {
                        ka.m0 m0Var3 = (ka.m0) this.f2558b;
                        String strD = ga.m.d(ga.m.g(ga.l.f7144i) + a2.a.s("Ug==\n", "fWaur5IIJCo=\n") + (-20));
                        String str5 = ka.m0.B0;
                        m0Var3.Y(-20, strD);
                    } else {
                        ka.m0 m0Var4 = (ka.m0) this.f2558b;
                        String str6 = ka.m0.B0;
                        m0Var4.Y(i19, str4);
                    }
                }
                super.handleMessage(message);
                return;
            case 5:
                Bundle data = message.getData();
                int i20 = message.what;
                j7.c cVar3 = (j7.c) this.f2558b;
                switch (i20) {
                    case 1:
                        Bundle bundle = data.getBundle("data_root_hints");
                        MediaSessionCompat.ensureClassLoader(bundle);
                        String string = data.getString("data_package_name");
                        int i21 = data.getInt("data_calling_pid");
                        int i22 = data.getInt("data_calling_uid");
                        m1.p pVar = new m1.p(message.replyTo);
                        MediaBrowserServiceCompat mediaBrowserServiceCompat = (MediaBrowserServiceCompat) cVar3.f7444b;
                        if (string != null) {
                            String[] packagesForUid = mediaBrowserServiceCompat.getPackageManager().getPackagesForUid(i22);
                            int length = packagesForUid.length;
                            while (i6 < length) {
                                if (packagesForUid[i6].equals(string)) {
                                    mediaBrowserServiceCompat.f2036e.a(new m1.k(i21, i22, bundle, cVar3, string, pVar));
                                    return;
                                }
                                i6++;
                            }
                        } else {
                            mediaBrowserServiceCompat.getClass();
                        }
                        throw new IllegalArgumentException("Package/uid mismatch: uid=" + i22 + " package=" + string);
                    case 2:
                        ((MediaBrowserServiceCompat) cVar3.f7444b).f2036e.a(new m1.l(cVar3, new m1.p(message.replyTo), i6));
                        return;
                    case 3:
                        Bundle bundle2 = data.getBundle("data_options");
                        MediaSessionCompat.ensureClassLoader(bundle2);
                        ((MediaBrowserServiceCompat) cVar3.f7444b).f2036e.a(new m1.m(cVar3, new m1.p(message.replyTo), data.getString("data_media_item_id"), data.getBinder("data_callback_token"), bundle2));
                        return;
                    case 4:
                        ((MediaBrowserServiceCompat) cVar3.f7444b).f2036e.a(new k.d(cVar3, new m1.p(message.replyTo), data.getString("data_media_item_id"), data.getBinder("data_callback_token"), 1));
                        return;
                    case 5:
                        String string2 = data.getString("data_media_item_id");
                        ResultReceiver resultReceiver = (ResultReceiver) data.getParcelable("data_result_receiver");
                        m1.p pVar2 = new m1.p(message.replyTo);
                        cVar3.getClass();
                        if (TextUtils.isEmpty(string2) || resultReceiver == null) {
                            return;
                        }
                        ((MediaBrowserServiceCompat) cVar3.f7444b).f2036e.a(new m1.n(cVar3, pVar2, string2, resultReceiver));
                        return;
                    case 6:
                        Bundle bundle3 = data.getBundle("data_root_hints");
                        MediaSessionCompat.ensureClassLoader(bundle3);
                        ((MediaBrowserServiceCompat) cVar3.f7444b).f2036e.a(new m1.o(data.getInt("data_calling_uid"), data.getInt("data_calling_pid"), bundle3, cVar3, data.getString("data_package_name"), new m1.p(message.replyTo)));
                        return;
                    case 7:
                        ((MediaBrowserServiceCompat) cVar3.f7444b).f2036e.a(new m1.l(cVar3, new m1.p(message.replyTo), i10));
                        return;
                    case 8:
                        Bundle bundle4 = data.getBundle("data_search_extras");
                        MediaSessionCompat.ensureClassLoader(bundle4);
                        String string3 = data.getString("data_search_query");
                        ResultReceiver resultReceiver2 = (ResultReceiver) data.getParcelable("data_result_receiver");
                        m1.p pVar3 = new m1.p(message.replyTo);
                        cVar3.getClass();
                        if (TextUtils.isEmpty(string3) || resultReceiver2 == null) {
                            return;
                        }
                        ((MediaBrowserServiceCompat) cVar3.f7444b).f2036e.a(new m1.n(cVar3, pVar3, string3, bundle4, resultReceiver2));
                        return;
                    case 9:
                        Bundle bundle5 = data.getBundle("data_custom_action_extras");
                        MediaSessionCompat.ensureClassLoader(bundle5);
                        String string4 = data.getString("data_custom_action");
                        ResultReceiver resultReceiver3 = (ResultReceiver) data.getParcelable("data_result_receiver");
                        m1.p pVar4 = new m1.p(message.replyTo);
                        cVar3.getClass();
                        if (TextUtils.isEmpty(string4) || resultReceiver3 == null) {
                            return;
                        }
                        ((MediaBrowserServiceCompat) cVar3.f7444b).f2036e.a(new m1.m(cVar3, pVar4, string4, bundle5, resultReceiver3));
                        return;
                    default:
                        android.util.Log.w("MBServiceCompat", "Unhandled message: " + message + "\n  Service version: 2\n  Client version: " + message.arg1);
                        return;
                }
            case 6:
                MyKeyBoardView.a((MyKeyBoardView) this.f2558b, (View) message.obj, message.what);
                return;
            case 7:
                int i23 = message.what;
                int i24 = message.arg1;
                Object obj = message.obj;
                Bundle bundlePeekData = message.peekData();
                q1.l lVar = (q1.l) this.f2558b;
                q1.o0 o0Var = (q1.o0) lVar.f9048j.get(i24);
                if (o0Var == null) {
                    android.util.Log.w("MR2Provider", "Pending callback not found for control request.");
                    return;
                }
                lVar.f9048j.remove(i24);
                if (i23 == 3) {
                    o0Var.b((Bundle) obj);
                    return;
                } else {
                    if (i23 != 4) {
                        return;
                    }
                    o0Var.a(bundlePeekData != null ? bundlePeekData.getString("error") : null, (Bundle) obj);
                    return;
                }
            case 8:
                int i25 = message.what;
                q1.e0 e0Var = (q1.e0) this.f2558b;
                if (i25 != 1) {
                    if (i25 != 2) {
                        return;
                    }
                    e0Var.f = false;
                    e0Var.e(e0Var.f8959e);
                    return;
                }
                e0Var.f8961h = false;
                u7.d dVar = e0Var.d;
                if (dVar != null) {
                    dVar.w(e0Var, e0Var.f8960g);
                    return;
                }
                return;
            default:
                if (message.what == 1 && (iC = (k0Var = ((MediaRouteProviderService) this.f2558b).f2741e).c((Messenger) message.obj)) >= 0) {
                    q1.j0 j0Var = (q1.j0) k0Var.f9031b.remove(iC);
                    k0Var.e();
                    int i26 = MediaRouteProviderService.f;
                    j0Var.d();
                    return;
                }
                return;
        }
    }

    @Override // android.os.Handler
    public boolean sendMessageAtTime(Message message, long j10) {
        switch (this.f2557a) {
            case 5:
                Bundle data = message.getData();
                data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
                data.putInt("data_calling_uid", Binder.getCallingUid());
                int callingPid = Binder.getCallingPid();
                if (callingPid > 0) {
                    data.putInt("data_calling_pid", callingPid);
                } else if (!data.containsKey("data_calling_pid")) {
                    data.putInt("data_calling_pid", -1);
                }
                break;
        }
        return super.sendMessageAtTime(message, j10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c(ka.b bVar, Looper looper, int i6) {
        super(looper);
        this.f2557a = i6;
        this.f2558b = bVar;
    }

    public c(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
        this.f2557a = 5;
        this.f2558b = new j7.c(13, mediaBrowserServiceCompat);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(q1.l lVar) {
        super(Looper.getMainLooper());
        this.f2557a = 7;
        this.f2558b = lVar;
    }
}
