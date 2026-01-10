package retrofit2;

import a9.d;
import c9.c;
import c9.e;
import j9.i;
import java.lang.reflect.Method;
import w8.b;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class KotlinExtensions {

    /* compiled from: MyApplication */
    @e(c = "retrofit2.KotlinExtensions", f = "KotlinExtensions.kt", l = {113}, m = "suspendAndThrow")
    /* renamed from: retrofit2.KotlinExtensions$suspendAndThrow$1, reason: invalid class name */
    public static final class AnonymousClass1 extends c {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(d dVar) {
            super(dVar);
        }

        @Override // c9.a
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return KotlinExtensions.suspendAndThrow(null, this);
        }
    }

    public static final <T> Object await(Call<T> call, d<? super T> dVar) {
        final t9.e eVar = new t9.e(com.bumptech.glide.d.r(dVar), 1);
        eVar.p(new KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$1(call));
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$await$2$2
            @Override // retrofit2.Callback
            public void onFailure(Call<T> call2, Throwable th) {
                i.g(call2, "call");
                i.g(th, "t");
                ((t9.e) eVar).resumeWith(o9.d.f(th));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<T> call2, Response<T> response) {
                i.g(call2, "call");
                i.g(response, "response");
                if (!response.isSuccessful()) {
                    ((t9.e) eVar).resumeWith(o9.d.f(new HttpException(response)));
                    return;
                }
                T tBody = response.body();
                if (tBody != null) {
                    ((t9.e) eVar).resumeWith(tBody);
                    return;
                }
                Object objTag = call2.request().tag(Invocation.class);
                if (objTag == null) {
                    b bVar = new b();
                    i.j(bVar, i.class.getName());
                    throw bVar;
                }
                Method method = ((Invocation) objTag).method();
                StringBuilder sb = new StringBuilder("Response from ");
                i.b(method, "method");
                Class<?> declaringClass = method.getDeclaringClass();
                i.b(declaringClass, "method.declaringClass");
                sb.append(declaringClass.getName());
                sb.append('.');
                sb.append(method.getName());
                sb.append(" was null but response body type was declared as non-null");
                b bVar2 = new b(sb.toString());
                ((t9.e) eVar).resumeWith(o9.d.f(bVar2));
            }
        });
        return eVar.m();
    }

    public static final <T> Object awaitNullable(Call<T> call, d<? super T> dVar) {
        final t9.e eVar = new t9.e(com.bumptech.glide.d.r(dVar), 1);
        eVar.p(new KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$2(call));
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$await$4$2
            @Override // retrofit2.Callback
            public void onFailure(Call<T> call2, Throwable th) {
                i.g(call2, "call");
                i.g(th, "t");
                ((t9.e) eVar).resumeWith(o9.d.f(th));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<T> call2, Response<T> response) {
                i.g(call2, "call");
                i.g(response, "response");
                if (response.isSuccessful()) {
                    ((t9.e) eVar).resumeWith(response.body());
                } else {
                    ((t9.e) eVar).resumeWith(o9.d.f(new HttpException(response)));
                }
            }
        });
        return eVar.m();
    }

    public static final <T> Object awaitResponse(Call<T> call, d<? super Response<T>> dVar) {
        final t9.e eVar = new t9.e(com.bumptech.glide.d.r(dVar), 1);
        eVar.p(new KotlinExtensions$awaitResponse$$inlined$suspendCancellableCoroutine$lambda$1(call));
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$awaitResponse$2$2
            @Override // retrofit2.Callback
            public void onFailure(Call<T> call2, Throwable th) {
                i.g(call2, "call");
                i.g(th, "t");
                ((t9.e) eVar).resumeWith(o9.d.f(th));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<T> call2, Response<T> response) {
                i.g(call2, "call");
                i.g(response, "response");
                eVar.resumeWith(response);
            }
        });
        return eVar.m();
    }

    public static final <T> T create(Retrofit retrofit) {
        i.g(retrofit, "$this$create");
        throw new UnsupportedOperationException("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object suspendAndThrow(final java.lang.Exception r4, a9.d<?> r5) {
        /*
            boolean r0 = r5 instanceof retrofit2.KotlinExtensions.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r5
            retrofit2.KotlinExtensions$suspendAndThrow$1 r0 = (retrofit2.KotlinExtensions.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            retrofit2.KotlinExtensions$suspendAndThrow$1 r0 = new retrofit2.KotlinExtensions$suspendAndThrow$1
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            b9.a r1 = b9.a.f3322a
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.L$0
            java.lang.Exception r4 = (java.lang.Exception) r4
            o9.d.I(r5)
            w8.l r4 = w8.l.f10832a
            return r4
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            o9.d.I(r5)
            r0.L$0 = r4
            r0.label = r3
            z9.d r5 = t9.b0.f10180a
            a9.i r2 = r0.getContext()
            retrofit2.KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1 r3 = new retrofit2.KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1
            r3.<init>()
            r5.d(r2, r3)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: retrofit2.KotlinExtensions.suspendAndThrow(java.lang.Exception, a9.d):java.lang.Object");
    }
}
