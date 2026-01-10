package com.youth.banner.adapter;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.k0;
import androidx.recyclerview.widget.p1;
import com.youth.banner.R;
import com.youth.banner.holder.IViewHolder;
import com.youth.banner.listener.OnBannerListener;
import com.youth.banner.util.BannerUtils;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class BannerAdapter<T, VH extends p1> extends k0 implements IViewHolder<T, VH> {
    protected List<T> mDatas = new ArrayList();
    private int mIncreaseCount = 2;
    private OnBannerListener<T> mOnBannerListener;
    private VH mViewHolder;

    public BannerAdapter(List<T> list) {
        setDatas(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$0(Object obj, int i6, View view) {
        this.mOnBannerListener.OnBannerClick(obj, i6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$onCreateViewHolder$1(p1 p1Var, View view) {
        if (this.mOnBannerListener != null) {
            this.mOnBannerListener.OnBannerClick(p1Var.itemView.getTag(R.id.banner_data_key), ((Integer) p1Var.itemView.getTag(R.id.banner_pos_key)).intValue());
        }
    }

    public T getData(int i6) {
        if (i6 > this.mDatas.size() - 1) {
            return null;
        }
        return this.mDatas.get(i6);
    }

    @Override // androidx.recyclerview.widget.k0
    public int getItemCount() {
        return getRealCount() > 1 ? getRealCount() + this.mIncreaseCount : getRealCount();
    }

    public int getRealCount() {
        List<T> list = this.mDatas;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public T getRealData(int i6) {
        int realPosition = getRealPosition(i6);
        if (realPosition > this.mDatas.size() - 1) {
            return null;
        }
        return this.mDatas.get(realPosition);
    }

    public int getRealPosition(int i6) {
        return BannerUtils.getRealPosition(this.mIncreaseCount == 2, i6, getRealCount());
    }

    public VH getViewHolder() {
        return this.mViewHolder;
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(VH vh, int i6) {
        this.mViewHolder = vh;
        final int realPosition = getRealPosition(i6);
        final T t5 = this.mDatas.get(realPosition);
        vh.itemView.setTag(R.id.banner_data_key, t5);
        vh.itemView.setTag(R.id.banner_pos_key, Integer.valueOf(realPosition));
        onBindView(vh, this.mDatas.get(realPosition), realPosition, getRealCount());
        if (this.mOnBannerListener != null) {
            vh.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.youth.banner.adapter.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f5989a.lambda$onBindViewHolder$0(t5, realPosition, view);
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.k0
    public VH onCreateViewHolder(ViewGroup viewGroup, int i6) {
        VH vhOnCreateHolder = onCreateHolder(viewGroup, i6);
        vhOnCreateHolder.itemView.setOnClickListener(new a(this, 0, vhOnCreateHolder));
        return vhOnCreateHolder;
    }

    public void setDatas(List<T> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.mDatas.clear();
        this.mDatas.addAll(list);
        notifyDataSetChanged();
    }

    public void setIncreaseCount(int i6) {
        this.mIncreaseCount = i6;
    }

    public void setOnBannerListener(OnBannerListener<T> onBannerListener) {
        this.mOnBannerListener = onBannerListener;
    }
}
