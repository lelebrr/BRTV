package com.lzy.okgo.cookie.store;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.Cookie;
import okhttp3.HttpUrl;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MemoryCookieStore implements CookieStore {
    private final Map<String, List<Cookie>> memoryCookies = new HashMap();

    @Override // com.lzy.okgo.cookie.store.CookieStore
    public synchronized List<Cookie> getAllCookie() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<String> it = this.memoryCookies.keySet().iterator();
        while (it.hasNext()) {
            arrayList.addAll(this.memoryCookies.get(it.next()));
        }
        return arrayList;
    }

    @Override // com.lzy.okgo.cookie.store.CookieStore
    public List<Cookie> getCookie(HttpUrl httpUrl) {
        ArrayList arrayList = new ArrayList();
        List<Cookie> list = this.memoryCookies.get(httpUrl.host());
        if (list != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override // com.lzy.okgo.cookie.store.CookieStore
    public synchronized List<Cookie> loadCookie(HttpUrl httpUrl) {
        List<Cookie> arrayList;
        arrayList = this.memoryCookies.get(httpUrl.host());
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.memoryCookies.put(httpUrl.host(), arrayList);
        }
        return arrayList;
    }

    @Override // com.lzy.okgo.cookie.store.CookieStore
    public synchronized boolean removeAllCookie() {
        this.memoryCookies.clear();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0019  */
    @Override // com.lzy.okgo.cookie.store.CookieStore
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean removeCookie(okhttp3.HttpUrl r2, okhttp3.Cookie r3) {
        /*
            r1 = this;
            monitor-enter(r1)
            java.util.Map<java.lang.String, java.util.List<okhttp3.Cookie>> r0 = r1.memoryCookies     // Catch: java.lang.Throwable -> L17
            java.lang.String r2 = r2.host()     // Catch: java.lang.Throwable -> L17
            java.lang.Object r2 = r0.get(r2)     // Catch: java.lang.Throwable -> L17
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.Throwable -> L17
            if (r3 == 0) goto L19
            boolean r2 = r2.remove(r3)     // Catch: java.lang.Throwable -> L17
            if (r2 == 0) goto L19
            r2 = 1
            goto L1a
        L17:
            r2 = move-exception
            goto L1c
        L19:
            r2 = 0
        L1a:
            monitor-exit(r1)
            return r2
        L1c:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L17
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lzy.okgo.cookie.store.MemoryCookieStore.removeCookie(okhttp3.HttpUrl, okhttp3.Cookie):boolean");
    }

    @Override // com.lzy.okgo.cookie.store.CookieStore
    public synchronized void saveCookie(HttpUrl httpUrl, List<Cookie> list) {
        try {
            List<Cookie> list2 = this.memoryCookies.get(httpUrl.host());
            ArrayList arrayList = new ArrayList();
            for (Cookie cookie : list) {
                for (Cookie cookie2 : list2) {
                    if (cookie.name().equals(cookie2.name())) {
                        arrayList.add(cookie2);
                    }
                }
            }
            list2.removeAll(arrayList);
            list2.addAll(list);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.lzy.okgo.cookie.store.CookieStore
    public synchronized boolean removeCookie(HttpUrl httpUrl) {
        return this.memoryCookies.remove(httpUrl.host()) != null;
    }

    @Override // com.lzy.okgo.cookie.store.CookieStore
    public synchronized void saveCookie(HttpUrl httpUrl, Cookie cookie) {
        try {
            List<Cookie> list = this.memoryCookies.get(httpUrl.host());
            ArrayList arrayList = new ArrayList();
            for (Cookie cookie2 : list) {
                if (cookie.name().equals(cookie2.name())) {
                    arrayList.add(cookie2);
                }
            }
            list.removeAll(arrayList);
            list.add(cookie);
        } catch (Throwable th) {
            throw th;
        }
    }
}
