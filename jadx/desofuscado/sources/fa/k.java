package fa;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.bitspark.android.SpkApplication;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.EpgBeans;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k extends BaseExpandableListAdapter {

    /* renamed from: n, reason: collision with root package name */
    public static String f6888n;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f6889a;

    /* renamed from: b, reason: collision with root package name */
    public final ExpandableListView f6890b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f6891c;
    public final String[] d;

    /* renamed from: e, reason: collision with root package name */
    public int f6892e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final int f6893g;

    /* renamed from: h, reason: collision with root package name */
    public final SimpleDateFormat f6894h = new SimpleDateFormat(a2.a.s("qvET/smFJveL0A==\n", "77RW0unIa9o=\n"), Locale.getDefault());

    /* renamed from: i, reason: collision with root package name */
    public final long f6895i;

    /* renamed from: j, reason: collision with root package name */
    public final HashMap f6896j;

    /* renamed from: k, reason: collision with root package name */
    public final ka.r f6897k;

    /* renamed from: l, reason: collision with root package name */
    public final HashMap f6898l;

    /* renamed from: m, reason: collision with root package name */
    public final ka.n f6899m;

    static {
        a2.a.s("Cuv0n/CvPyUq6Q==\n", "T5uT3pTOT1E=\n");
        f6888n = "";
    }

    public k(HashMap map, ka.r rVar, ExpandableListView expandableListView, boolean z7, int i6, ka.n nVar) {
        HashMap map2 = new HashMap();
        this.f6898l = map2;
        map2.clear();
        this.f6899m = nVar;
        this.f6893g = i6;
        this.f6890b = expandableListView;
        this.f = z7;
        this.f6897k = rVar;
        this.f6889a = map;
        expandableListView.setOnGroupExpandListener(new d(this));
        expandableListView.setOnGroupCollapseListener(new e(this));
        ArrayList arrayList = new ArrayList(map.keySet());
        long time = new Date().getTime() + org.bitspark.android.utils.m.f8783a;
        this.f6895i = org.bitspark.android.utils.m.c(time);
        String str = ea.h.f6672a;
        Collections.sort(arrayList);
        HashMap map3 = new HashMap();
        if (ga.d.f7122c == null || ga.d.f7122c.get(Integer.valueOf(i6)) == null || !((ChannelBean) ga.d.f7122c.get(Integer.valueOf(i6))).isHasPlayBack()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Long l9 = (Long) it.next();
                if (l9.longValue() < this.f6895i) {
                    it.remove();
                } else {
                    List list = (List) map.get(l9);
                    ArrayList arrayList2 = new ArrayList();
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        EpgBeans.EpgBean epgBean = (EpgBeans.EpgBean) list.get(i10);
                        if (epgBean.getEndTime() != null) {
                            if (epgBean.getEndTime().longValue() < time) {
                                arrayList2.add(Integer.valueOf(i10));
                            }
                        } else if (epgBean.getTime().longValue() < time) {
                            arrayList2.add(Integer.valueOf(i10));
                        }
                    }
                    map3.put(l9, arrayList2);
                }
            }
        }
        this.f6891c = arrayList;
        this.d = new String[arrayList.size()];
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            this.d[i11] = this.f6894h.format(this.f6891c.get(i11));
        }
        this.f6896j = map3;
    }

    @Override // android.widget.ExpandableListAdapter
    public final Object getChild(int i6, int i10) {
        return ((List) this.f6889a.get(this.f6891c.get(i6))).get(i10);
    }

    @Override // android.widget.ExpandableListAdapter
    public final long getChildId(int i6, int i10) {
        return i10;
    }

    @Override // android.widget.ExpandableListAdapter
    public final View getChildView(int i6, int i10, boolean z7, View view, ViewGroup viewGroup) {
        if (this.f6891c.get(i6) != null && this.f6896j.get(this.f6891c.get(i6)) != null) {
            Iterator it = ((ArrayList) this.f6896j.get(this.f6891c.get(i6))).iterator();
            while (it.hasNext()) {
                if (((Integer) it.next()).intValue() <= i10) {
                    i10++;
                }
            }
        }
        List list = (List) this.f6889a.get(this.f6891c.get(i6));
        String playbackUrl = ((EpgBeans.EpgBean) list.get(i10)).getPlaybackUrl();
        if (view == null) {
            view = (ga.d.f7122c == null || ga.d.f7122c.get(Integer.valueOf(this.f6893g)) == null || !((ChannelBean) ga.d.f7122c.get(Integer.valueOf(this.f6893g))).isHasPlayBack()) ? View.inflate(viewGroup.getContext(), R.layout.epg_item_1line, null) : View.inflate(viewGroup.getContext(), R.layout.epg_item, null);
        }
        view.setOnKeyListener(new i(this, i6, z7));
        view.setOnClickListener(new g(1));
        view.setOnTouchListener(new j(this, i6, i10));
        TextView textView = (TextView) view.findViewById(R.id.epg_item_name);
        TextView textView2 = (TextView) view.findViewById(R.id.epg_item_time);
        ImageView imageView = (ImageView) view.findViewById(R.id.epg_item_icon);
        if (list.size() > 0) {
            if (ga.d.f7122c == null || ga.d.f7122c.get(Integer.valueOf(this.f6893g)) == null || ((ChannelBean) ga.d.f7122c.get(Integer.valueOf(this.f6893g))).isHasPlayBack()) {
                textView.setText(((EpgBeans.EpgBean) list.get(i10)).getName());
                if (imageView == null || textView2 == null) {
                    view.setTag(R.id.chid, Integer.valueOf(this.f6893g));
                } else {
                    if (playbackUrl == null || playbackUrl.equals("")) {
                        imageView.setVisibility(8);
                        textView.setTextColor(SpkApplication.f8737c.getApplicationContext().getResources().getColor(R.color.channel_epg_no_addr_txt));
                        textView2.setTextColor(SpkApplication.f8737c.getApplicationContext().getResources().getColor(R.color.channel_epg_no_addr_txt));
                    } else {
                        imageView.setVisibility(0);
                        textView.setTextColor(SpkApplication.f8737c.getApplicationContext().getResources().getColor(R.color.white));
                        textView2.setTextColor(SpkApplication.f8737c.getApplicationContext().getResources().getColor(R.color.channel_epg_sub_txt));
                        ImageView imageView2 = (ImageView) view.findViewById(R.id.epg_item_icon);
                        if (((EpgBeans.EpgBean) list.get(i10)).getId().equals(f6888n)) {
                            imageView2.setImageResource(R.mipmap.live_play);
                        } else {
                            imageView2.setImageResource(R.mipmap.live);
                        }
                    }
                    String strH = org.bitspark.android.utils.m.h(((EpgBeans.EpgBean) list.get(i10)).getTime());
                    String strH2 = org.bitspark.android.utils.m.h(((EpgBeans.EpgBean) list.get(i10)).getEndTime());
                    StringBuilder sbM = ea.q.m(strH);
                    sbM.append(a2.a.s("XA==\n", "ca+BND/dMcY=\n"));
                    sbM.append(strH2);
                    textView2.setText(sbM.toString());
                    view.setTag(list.get(i10));
                }
            } else {
                textView.setTextColor(SpkApplication.f8737c.getApplicationContext().getResources().getColor(R.color.channel_epg_no_addr_txt));
                textView.setText(org.bitspark.android.utils.m.h(((EpgBeans.EpgBean) list.get(i10)).getTime()) + " " + ((EpgBeans.EpgBean) list.get(i10)).getName());
            }
            view.setTag(R.id.chid, Integer.valueOf(this.f6893g));
        }
        return view;
    }

    @Override // android.widget.ExpandableListAdapter
    public final int getChildrenCount(int i6) {
        ArrayList arrayList = this.f6891c;
        List list = (List) this.f6889a.get(arrayList.get(i6));
        if (list == null || list.size() <= 0) {
            return 0;
        }
        HashMap map = this.f6896j;
        return list.size() - (map.get(arrayList.get(i6)) != null ? ((ArrayList) map.get(arrayList.get(i6))).size() : 0);
    }

    @Override // android.widget.ExpandableListAdapter
    public final Object getGroup(int i6) {
        return this.f6891c.get(i6);
    }

    @Override // android.widget.ExpandableListAdapter
    public final int getGroupCount() {
        ArrayList arrayList = this.f6891c;
        if (arrayList.size() > 0) {
            return arrayList.size();
        }
        return 0;
    }

    @Override // android.widget.ExpandableListAdapter
    public final long getGroupId(int i6) {
        return i6;
    }

    @Override // android.widget.ExpandableListAdapter
    public final View getGroupView(int i6, boolean z7, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = View.inflate(viewGroup.getContext(), R.layout.epg_day_item, null);
        }
        view.setOnKeyListener(new f(i6, 0, this));
        view.setOnClickListener(new g(0));
        view.setOnTouchListener(new h(i6, 0, this));
        TextView textView = (TextView) view.findViewById(R.id.epg_day_text);
        ArrayList arrayList = this.f6891c;
        if (arrayList.get(i6) != null && arrayList.size() > 0) {
            textView.setText(this.d[i6]);
            ImageView imageView = (ImageView) view.findViewById(R.id.epg_group_arrow);
            if (this.f6895i == ((Long) arrayList.get(i6)).longValue()) {
                boolean z10 = this.f;
                ExpandableListView expandableListView = this.f6890b;
                if (z10) {
                    expandableListView.expandGroup(i6);
                } else {
                    expandableListView.collapseGroup(i6);
                }
                this.f6892e = i6;
            }
            HashMap map = this.f6898l;
            if (map.get(Integer.valueOf(i6)) != null) {
                if (((Boolean) map.get(Integer.valueOf(i6))).booleanValue()) {
                    imageView.setImageResource(R.mipmap.up);
                } else {
                    imageView.setImageResource(R.mipmap.down);
                }
            } else if (z7) {
                imageView.setImageResource(R.mipmap.down);
            } else {
                imageView.setImageResource(R.mipmap.up);
            }
        }
        return view;
    }

    @Override // android.widget.ExpandableListAdapter
    public final boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.ExpandableListAdapter
    public final boolean isChildSelectable(int i6, int i10) {
        return true;
    }
}
