package com.google.android.gms.internal.cast;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class r6 {
    protected int zza;

    public static void b(ArrayList arrayList, List list) {
        Charset charset = h7.f4214a;
        int size = arrayList.size();
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(list.size() + size);
        } else if (list instanceof t7) {
            t7 t7Var = (t7) list;
            int i6 = ((t7) list).f4423c + size;
            int length = t7Var.f4422b.length;
            if (i6 > length) {
                if (length != 0) {
                    while (length < i6) {
                        length = Math.max(((length * 3) / 2) + 1, 10);
                    }
                    t7Var.f4422b = Arrays.copyOf(t7Var.f4422b, length);
                } else {
                    t7Var.f4422b = new Object[Math.max(i6, 10)];
                }
            }
        }
        int size2 = list.size();
        int size3 = arrayList.size();
        for (int i10 = 0; i10 < size3; i10++) {
            Object obj = arrayList.get(i10);
            if (obj == null) {
                String strF = ea.q.f(list.size() - size2, "Element at index ", " is null.");
                int size4 = list.size();
                while (true) {
                    size4--;
                    if (size4 < size2) {
                        throw new NullPointerException(strF);
                    }
                    list.remove(size4);
                }
            } else {
                list.add(obj);
            }
        }
    }

    public abstract int a(v7 v7Var);
}
