package org.bitspark.android.utils;

import com.nmmedit.protect.NativeUtil;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

/* loaded from: classes.dex */
public class LimitQueue<E> implements Queue<E>, Serializable {
    private static final long serialVersionUID = -8734287124637627118L;
    private int limit;
    Queue<E> queue = new LinkedList();

    static {
        NativeUtil.classesInit0(56);
    }

    public LimitQueue(int i6) {
        this.limit = i6;
    }

    @Override // java.util.Queue, java.util.Collection
    public native boolean add(E e5);

    @Override // java.util.Collection
    public native boolean addAll(Collection<? extends E> collection);

    @Override // java.util.Collection
    public native void clear();

    @Override // java.util.Collection
    public native boolean contains(Object obj);

    @Override // java.util.Collection
    public native boolean containsAll(Collection<?> collection);

    @Override // java.util.Queue
    public native E element();

    public native int getLimit();

    public native Queue<E> getQueue();

    @Override // java.util.Collection
    public native boolean isEmpty();

    @Override // java.util.Collection, java.lang.Iterable
    public native Iterator<E> iterator();

    @Override // java.util.Queue
    public native boolean offer(E e5);

    @Override // java.util.Queue
    public native E peek();

    @Override // java.util.Queue
    public native E poll();

    @Override // java.util.Queue
    public native E remove();

    @Override // java.util.Collection
    public native boolean remove(Object obj);

    @Override // java.util.Collection
    public native boolean removeAll(Collection<?> collection);

    @Override // java.util.Collection
    public native boolean retainAll(Collection<?> collection);

    public native void set(int i6, E e5);

    @Override // java.util.Collection
    public native int size();

    @Override // java.util.Collection
    public native Object[] toArray();

    @Override // java.util.Collection
    public native <T> T[] toArray(T[] tArr);
}
