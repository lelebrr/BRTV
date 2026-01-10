package t3;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.recyclerview.widget.k0;
import androidx.recyclerview.widget.p1;
import androidx.recyclerview.widget.x0;
import com.p2elite.brtv2.R;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;
import q1.f0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class c extends k0 {

    /* renamed from: a, reason: collision with root package name */
    public f0 f10131a;

    /* renamed from: b, reason: collision with root package name */
    public LayoutInflater f10132b;

    /* renamed from: c, reason: collision with root package name */
    public List f10133c;

    public abstract void a(d dVar, Object obj);

    public final d b(View view) throws NoSuchMethodException, SecurityException {
        d dVar;
        d dVar2;
        Class cls;
        d dVar3 = null;
        Class cls2 = null;
        for (Class<?> superclass = getClass(); cls2 == null && superclass != null; superclass = superclass.getSuperclass()) {
            Type genericSuperclass = superclass.getGenericSuperclass();
            if (genericSuperclass instanceof ParameterizedType) {
                for (Type type : ((ParameterizedType) genericSuperclass).getActualTypeArguments()) {
                    if (type instanceof Class) {
                        cls = (Class) type;
                        if (d.class.isAssignableFrom(cls)) {
                            cls2 = cls;
                            break;
                        }
                    } else {
                        if (type instanceof ParameterizedType) {
                            Type rawType = ((ParameterizedType) type).getRawType();
                            if (rawType instanceof Class) {
                                cls = (Class) rawType;
                                if (d.class.isAssignableFrom(cls)) {
                                    cls2 = cls;
                                    break;
                                    break;
                                }
                            } else {
                                continue;
                            }
                        } else {
                            continue;
                        }
                    }
                }
                cls2 = null;
            } else {
                cls2 = null;
            }
        }
        if (cls2 == null) {
            dVar = new d(view);
        } else {
            try {
                if (!cls2.isMemberClass() || Modifier.isStatic(cls2.getModifiers())) {
                    Constructor declaredConstructor = cls2.getDeclaredConstructor(View.class);
                    declaredConstructor.setAccessible(true);
                    dVar2 = (d) declaredConstructor.newInstance(view);
                } else {
                    Constructor declaredConstructor2 = cls2.getDeclaredConstructor(getClass(), View.class);
                    declaredConstructor2.setAccessible(true);
                    dVar2 = (d) declaredConstructor2.newInstance(this, view);
                }
                dVar3 = dVar2;
            } catch (IllegalAccessException e5) {
                e5.printStackTrace();
            } catch (InstantiationException e10) {
                e10.printStackTrace();
            } catch (NoSuchMethodException e11) {
                e11.printStackTrace();
            } catch (InvocationTargetException e12) {
                e12.printStackTrace();
            }
            dVar = dVar3;
        }
        return dVar != null ? dVar : new d(view);
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemCount() {
        return this.f10133c.size();
    }

    @Override // androidx.recyclerview.widget.k0
    public final long getItemId(int i6) {
        return i6;
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemViewType(int i6) {
        if (i6 < 0) {
            return 273;
        }
        int size = this.f10133c.size();
        if (i6 >= size) {
            return i6 - size < 0 ? 819 : 546;
        }
        Object obj = ((a) this).f10133c.get(i6);
        if (obj instanceof oa.a) {
            return ((oa.a) obj).f8658b;
        }
        return -255;
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        x0 layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            gridLayoutManager.f2748g = new b(this, gridLayoutManager);
        }
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(p1 p1Var, int i6) {
        d dVar = (d) p1Var;
        int itemViewType = dVar.getItemViewType();
        if (itemViewType == 0) {
            List list = this.f10133c;
            a(dVar, i6 < list.size() ? list.get(i6) : null);
            return;
        }
        if (itemViewType != 273) {
            if (itemViewType == 546) {
                this.f10131a.getClass();
                dVar.c(R.id.load_more_loading_view, false);
                dVar.c(R.id.load_more_load_fail_view, false);
                dVar.c(R.id.load_more_load_end_view, false);
                return;
            }
            if (itemViewType == 819 || itemViewType == 1365) {
                return;
            }
            List list2 = this.f10133c;
            a(dVar, i6 < list2.size() ? list2.get(i6) : null);
        }
    }

    @Override // androidx.recyclerview.widget.k0
    public final p1 onCreateViewHolder(ViewGroup viewGroup, int i6) throws NoSuchMethodException, SecurityException {
        this.f10132b = LayoutInflater.from(viewGroup.getContext());
        if (i6 == 273) {
            return b(null);
        }
        if (i6 == 546) {
            this.f10131a.getClass();
            d dVarB = b(this.f10132b.inflate(R.layout.quick_view_load_more, viewGroup, false));
            dVarB.itemView.setOnClickListener(new androidx.appcompat.app.a(20, this));
            return dVarB;
        }
        if (i6 == 819) {
            return b(null);
        }
        if (i6 == 1365) {
            return b(null);
        }
        a aVar = (a) this;
        return aVar.b(aVar.f10132b.inflate(aVar.d.get(i6, -404), viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onViewAttachedToWindow(p1 p1Var) {
        d dVar = (d) p1Var;
        super.onViewAttachedToWindow(dVar);
        int itemViewType = dVar.getItemViewType();
        if ((itemViewType == 1365 || itemViewType == 273 || itemViewType == 819 || itemViewType == 546) && (dVar.itemView.getLayoutParams() instanceof StaggeredGridLayoutManager.LayoutParams)) {
            ((StaggeredGridLayoutManager.LayoutParams) dVar.itemView.getLayoutParams()).f = true;
        }
    }
}
