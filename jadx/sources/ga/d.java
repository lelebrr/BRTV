package ga;

import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import org.bitspark.android.SpkApplication;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.Group;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final String f7120a = a2.a.s("L8+3+OdcxCEB\n", "bZz0kIYyqkQ=\n");

    /* renamed from: b, reason: collision with root package name */
    public static volatile List f7121b;

    /* renamed from: c, reason: collision with root package name */
    public static volatile HashMap f7122c;
    public static volatile HashMap d;

    /* renamed from: e, reason: collision with root package name */
    public static volatile HashMap f7123e;
    public static volatile HashSet f;

    public static void a() {
        String strS = a2.a.s("JWrwRt1grP8/bOpf336y/Th/4w==\n", "djqvAJw287M=\n");
        HashSet hashSet = new HashSet();
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        f = new HashSet(SpkApplication.f8737c.getApplicationContext().getSharedPreferences(a2.a.s("mtqSo7erTB8=\n", "+Kni0dLNKW0=\n"), 0).getStringSet(strS, hashSet));
        String str = f7120a;
        Log.i(str, a2.a.s("Pr7vG4ULvco+vu8bhkv2iHPzqVThWvGcbfSiX4Y=\n", "HZ3MOKYonuk=\n") + f.toString());
        f7122c = new HashMap();
        d = new HashMap();
        f7123e = new HashMap();
        if (f7121b == null || f7121b.size() == 0) {
            Log.i(str, a2.a.s("dqFf/kQyzqB2oV/+R3KF4jvsGbEgY4L2JesSukcxjus07BK4C12E8CG/QbMSfYGjKf5cvg9wg+0w\n7jC0FGXD8Dz4GfVOLNCz\n", "VYJ83WcR7YM=\n"));
            return;
        }
        Group group = new Group();
        group.name = SpkApplication.f8737c.getApplicationContext().getString(R.string.Favorites_live);
        group.type = -5;
        group.channnels = new ArrayList();
        d.put(-5, group);
        if (ea.h.D) {
            Group group2 = new Group();
            group2.name = SpkApplication.f8737c.getApplicationContext().getString(R.string.Playback);
            group2.type = -4;
            group2.channnels = new ArrayList();
            d.put(-4, group2);
        }
        Group group3 = new Group();
        group3.name = SpkApplication.f8737c.getApplicationContext().getString(R.string.All_A_Z);
        group3.type = -3;
        group3.channnels = new ArrayList();
        d.put(-3, group3);
        for (ChannelBean channelBean : f7121b) {
            List<ChannelBean.TagsBean> tags = channelBean.getTags();
            f7122c.put(Integer.valueOf(channelBean.getChid()), channelBean);
            if (channelBean.getSid() > 0) {
                f7123e.put(Integer.valueOf(channelBean.getSid()), channelBean);
            }
            for (ChannelBean.TagsBean tagsBean : tags) {
                if (d.get(Integer.valueOf(tagsBean.getId())) == null) {
                    Group group4 = new Group();
                    group4.name = tagsBean.getName().getInit();
                    boolean zIsRestrictedAccess = tagsBean.isRestrictedAccess();
                    group4.restrictedAccess = zIsRestrictedAccess;
                    if (zIsRestrictedAccess || channelBean.getLevel() != 18) {
                        if (!ea.h.C || tagsBean.getType() != 104) {
                            group4.type = tagsBean.getType();
                            ArrayList arrayList = new ArrayList();
                            group4.channnels = arrayList;
                            arrayList.add(channelBean);
                            d.put(Integer.valueOf(tagsBean.getId()), group4);
                            if (!f.contains("" + channelBean.getChid())) {
                            }
                        }
                    }
                } else if (((Group) d.get(Integer.valueOf(tagsBean.getId()))).restrictedAccess || channelBean.getLevel() != 18) {
                    if (!ea.h.C || tagsBean.getType() != 104) {
                        ((Group) d.get(Integer.valueOf(tagsBean.getId()))).channnels.add(channelBean);
                        if (!f.contains("" + channelBean.getChid()) && ((Group) d.get(-5)).channnels.indexOf(channelBean) < 0) {
                            ((Group) d.get(-5)).channnels.add(channelBean);
                        }
                    }
                }
            }
            if (channelBean.getLevel() < 18) {
                ((Group) d.get(-3)).channnels.add(channelBean);
                if (channelBean.isHasPlayBack() && ea.h.D) {
                    ((Group) d.get(-4)).channnels.add(channelBean);
                }
            }
        }
        if (!ea.h.f6686q && d.get(-5) != null && ((Group) d.get(-5)).channnels != null && ((Group) d.get(-5)).channnels.size() == 0) {
            d.remove(-5);
        }
        Log.i(f7120a, a2.a.s("w+gKQCXbOYfD6ApAJp9oy5W7agtnlnTBjIZIEyY=\n", "4MspYwb4GqQ=\n") + d.size());
    }
}
