package o3;

import android.util.Log;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8555a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f8556b;

    public c(d dVar) {
        this.f8556b = new WeakReference(dVar);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        switch (this.f8555a) {
            case 0:
                if (Log.isLoggable("CustomViewTarget", 2)) {
                    Log.v("CustomViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                d dVar = (d) this.f8556b.get();
                if (dVar != null) {
                    ArrayList arrayList = dVar.f8558b;
                    if (!arrayList.isEmpty()) {
                        ImageView imageView = dVar.f8557a;
                        int paddingRight = imageView.getPaddingRight() + imageView.getPaddingLeft();
                        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
                        int iA = dVar.a(imageView.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
                        int paddingBottom = imageView.getPaddingBottom() + imageView.getPaddingTop();
                        ViewGroup.LayoutParams layoutParams2 = imageView.getLayoutParams();
                        int iA2 = dVar.a(imageView.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
                        if (iA > 0 || iA == Integer.MIN_VALUE) {
                            if (iA2 > 0 || iA2 == Integer.MIN_VALUE) {
                                Iterator it = new ArrayList(arrayList).iterator();
                                while (it.hasNext()) {
                                    ((n3.f) ((g) it.next())).m(iA, iA2);
                                }
                                ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
                                if (viewTreeObserver.isAlive()) {
                                    viewTreeObserver.removeOnPreDrawListener(dVar.f8559c);
                                }
                                dVar.f8559c = null;
                                arrayList.clear();
                                break;
                            }
                        }
                    }
                }
                break;
            default:
                if (Log.isLoggable("ViewTarget", 2)) {
                    Log.v("ViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                i iVar = (i) this.f8556b.get();
                if (iVar != null) {
                    ArrayList arrayList2 = iVar.f8563b;
                    if (!arrayList2.isEmpty()) {
                        ImageView imageView2 = iVar.f8562a;
                        int paddingRight2 = imageView2.getPaddingRight() + imageView2.getPaddingLeft();
                        ViewGroup.LayoutParams layoutParams3 = imageView2.getLayoutParams();
                        int iA3 = iVar.a(imageView2.getWidth(), layoutParams3 != null ? layoutParams3.width : 0, paddingRight2);
                        int paddingBottom2 = imageView2.getPaddingBottom() + imageView2.getPaddingTop();
                        ViewGroup.LayoutParams layoutParams4 = imageView2.getLayoutParams();
                        int iA4 = iVar.a(imageView2.getHeight(), layoutParams4 != null ? layoutParams4.height : 0, paddingBottom2);
                        if (iA3 > 0 || iA3 == Integer.MIN_VALUE) {
                            if (iA4 > 0 || iA4 == Integer.MIN_VALUE) {
                                Iterator it2 = new ArrayList(arrayList2).iterator();
                                while (it2.hasNext()) {
                                    ((n3.f) ((g) it2.next())).m(iA3, iA4);
                                }
                                ViewTreeObserver viewTreeObserver2 = imageView2.getViewTreeObserver();
                                if (viewTreeObserver2.isAlive()) {
                                    viewTreeObserver2.removeOnPreDrawListener(iVar.f8564c);
                                }
                                iVar.f8564c = null;
                                arrayList2.clear();
                                break;
                            }
                        }
                    }
                }
                break;
        }
        return true;
    }

    public c(i iVar) {
        this.f8556b = new WeakReference(iVar);
    }
}
