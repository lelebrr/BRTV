package ga;

import android.util.SparseArray;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import ka.m0;
import org.bitspark.android.Spark;
import org.bitspark.android.SpkApplication;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.Group;
import org.bitspark.android.beans.GroupBeanModel;
import org.bitspark.android.beans.GroupL1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public static final String f7153a = a2.a.s("yOtsy+rhdxXk1l/I\n", "irg6pI6iH3Q=\n");

    /* renamed from: b, reason: collision with root package name */
    public static HashMap f7154b;

    /* renamed from: c, reason: collision with root package name */
    public static volatile SparseArray f7155c;
    public static volatile SparseArray d;

    /* renamed from: e, reason: collision with root package name */
    public static volatile HashSet f7156e;
    public static volatile List f;

    static {
        a2.a.s("FiRYsZ99jHQLOQaclXiJYwIwG7vBHpIKPAc=\n", "b10hyLIwwVk=\n");
        new SimpleDateFormat(a2.a.s("+b7GULG34fTko5h9u7Lk4+2qhVrv1P+K050=\n", "gMe/KZz6rNk=\n"), Locale.getDefault());
    }

    public static void a() {
        HashSet hashSet;
        if (f == null) {
            return;
        }
        long time = new Date().getTime();
        String str = f7153a;
        String str2 = a2.a.s("Qgd14tu3+TNVU3f4zvnhOV1TU+LA4v81XxQ6voG3\n", "MXMUkK+Xj1w=\n") + time;
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(str, str2);
        f7156e = new HashSet();
        i iVar = Spark.Y1;
        if (iVar != null) {
            synchronized (iVar) {
                hashSet = new HashSet();
                Iterator it = i.f7134g.iterator();
                while (it.hasNext()) {
                    hashSet.add(String.valueOf(((ChannelBean) it.next()).getChid()));
                }
            }
            f7156e = hashSet;
        }
        String str3 = f7153a;
        Log.i(str3, a2.a.s("hCFTdpsjQqaEIVN2mHYO4cRqETvWZQ3C1W0FJdFuBqU=\n", "pwJwVbgAYYU=\n") + f7156e.toString());
        f7155c = new SparseArray();
        f7154b = new HashMap();
        d = new SparseArray();
        GroupL1 groupL1 = new GroupL1();
        groupL1.id = 0;
        groupL1.name = SpkApplication.f8737c.getApplicationContext().getString(R.string.Recommend);
        groupL1.groups = new HashSet<>();
        d.put(groupL1.id, groupL1);
        f7154b.put(groupL1.name, Integer.valueOf(groupL1.id));
        Group group = new Group();
        group.name = SpkApplication.f8737c.getApplicationContext().getString(R.string.Popular);
        group.id = -10;
        group.channnels = new ArrayList();
        f7155c.put(-10, group);
        groupL1.groups.add(Integer.valueOf(group.id));
        Group group2 = new Group();
        group2.name = SpkApplication.f8737c.getApplicationContext().getString(R.string.Favorites);
        group2.id = -5;
        group2.channnels = new ArrayList();
        f7155c.put(-5, group2);
        groupL1.groups.add(Integer.valueOf(group2.id));
        Log.i(str3, a2.a.s("WTHcCzBv7KtZMd9+fCiJ+ht1kk19OOHBKU2sbVIejMAlQatpRwn1qA==\n", "ehL/KBNMz4g=\n") + m0.G0);
        new HashMap();
        for (GroupBeanModel groupBeanModel : f) {
            if (!m0.G0) {
                Group group3 = new Group();
                group3.id = groupBeanModel.group_id;
                group3.name = groupBeanModel.group_name;
                group3.restrictedAccess = groupBeanModel.restrictedAccess;
                group3.channnels = new ArrayList();
                GroupL1 groupL12 = new GroupL1();
                groupL12.name = groupBeanModel.group_name;
                groupL12.id = groupBeanModel.group_id;
                HashSet<Integer> hashSet2 = new HashSet<>();
                groupL12.groups = hashSet2;
                hashSet2.add(Integer.valueOf(groupBeanModel.group_id));
                d.put(groupL12.id, groupL12);
                f7154b.put(groupL12.name, Integer.valueOf(groupL12.id));
            }
        }
    }

    public static ChannelBean.TagsBean b(int i6) {
        if (f == null) {
            return null;
        }
        Iterator it = f.iterator();
        while (it.hasNext()) {
            for (ChannelBean.TagsBean tagsBean : ((GroupBeanModel) it.next()).items) {
                if (tagsBean.getId() == i6) {
                    return tagsBean;
                }
            }
        }
        return null;
    }
}
