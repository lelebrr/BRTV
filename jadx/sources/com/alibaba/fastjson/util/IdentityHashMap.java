package com.alibaba.fastjson.util;

import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class IdentityHashMap<K, V> {
    public static final int DEFAULT_SIZE = 8192;
    private final Entry<K, V>[] buckets;
    private final int indexMask;

    /* compiled from: MyApplication */
    public static final class Entry<K, V> {
        public final int hashCode;
        public final K key;
        public final Entry<K, V> next;
        public V value;

        public Entry(K k10, V v10, int i6, Entry<K, V> entry) {
            this.key = k10;
            this.value = v10;
            this.next = entry;
            this.hashCode = i6;
        }
    }

    public IdentityHashMap() {
        this(8192);
    }

    public void clear() {
        Arrays.fill(this.buckets, (Object) null);
    }

    public Class findClass(String str) {
        int i6 = 0;
        while (true) {
            Entry<K, V>[] entryArr = this.buckets;
            if (i6 >= entryArr.length) {
                return null;
            }
            Entry<K, V> entry = entryArr[i6];
            if (entry != null) {
                for (Entry<K, V> entry2 = entry; entry2 != null; entry2 = entry2.next) {
                    K k10 = entry.key;
                    if (k10 instanceof Class) {
                        Class cls = (Class) k10;
                        if (cls.getName().equals(str)) {
                            return cls;
                        }
                    }
                }
            }
            i6++;
        }
    }

    public final V get(K k10) {
        for (Entry<K, V> entry = this.buckets[System.identityHashCode(k10) & this.indexMask]; entry != null; entry = entry.next) {
            if (k10 == entry.key) {
                return entry.value;
            }
        }
        return null;
    }

    public boolean put(K k10, V v10) {
        int iIdentityHashCode = System.identityHashCode(k10);
        int i6 = this.indexMask & iIdentityHashCode;
        for (Entry<K, V> entry = this.buckets[i6]; entry != null; entry = entry.next) {
            if (k10 == entry.key) {
                entry.value = v10;
                return true;
            }
        }
        this.buckets[i6] = new Entry<>(k10, v10, iIdentityHashCode, this.buckets[i6]);
        return false;
    }

    public int size() {
        int i6 = 0;
        for (Entry<K, V> entry : this.buckets) {
            for (; entry != null; entry = entry.next) {
                i6++;
            }
        }
        return i6;
    }

    public IdentityHashMap(int i6) {
        this.indexMask = i6 - 1;
        this.buckets = new Entry[i6];
    }
}
