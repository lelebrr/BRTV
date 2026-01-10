package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.util.SparseArray;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final int f2543a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f2544b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaRouteButton f2545c;

    public a(MediaRouteButton mediaRouteButton, int i6, Context context) {
        this.f2545c = mediaRouteButton;
        this.f2543a = i6;
        this.f2544b = context;
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        SparseArray sparseArray = MediaRouteButton.f2519p;
        int i6 = this.f2543a;
        if (((Drawable.ConstantState) sparseArray.get(i6)) == null) {
            return com.bumptech.glide.c.h(this.f2544b, i6);
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public final void onCancelled(Object obj) {
        Drawable drawable = (Drawable) obj;
        if (drawable != null) {
            MediaRouteButton.f2519p.put(this.f2543a, drawable.getConstantState());
        }
        this.f2545c.f2526g = null;
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) {
        Drawable drawableNewDrawable = (Drawable) obj;
        int i6 = this.f2543a;
        MediaRouteButton mediaRouteButton = this.f2545c;
        if (drawableNewDrawable != null) {
            MediaRouteButton.f2519p.put(i6, drawableNewDrawable.getConstantState());
            mediaRouteButton.f2526g = null;
        } else {
            Drawable.ConstantState constantState = (Drawable.ConstantState) MediaRouteButton.f2519p.get(i6);
            if (constantState != null) {
                drawableNewDrawable = constantState.newDrawable();
            }
            mediaRouteButton.f2526g = null;
        }
        mediaRouteButton.setRemoteIndicatorDrawableInternal(drawableNewDrawable);
    }
}
