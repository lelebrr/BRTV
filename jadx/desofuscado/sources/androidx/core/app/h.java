package androidx.core.app;

import android.os.AsyncTask;
import com.alibaba.fastjson.JSONReader;
import com.tencent.mars.xlog.Log;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1166a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Object f1167b;

    public h(JobIntentService jobIntentService) {
        this.f1167b = jobIntentService;
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        k kVarA;
        switch (this.f1166a) {
            case 0:
                while (true) {
                    JobIntentService jobIntentService = (JobIntentService) this.f1167b;
                    m mVar = jobIntentService.f1137a;
                    if (mVar != null) {
                        kVarA = mVar.a();
                    } else {
                        synchronized (jobIntentService.f1140e) {
                            try {
                                kVarA = jobIntentService.f1140e.size() > 0 ? (k) jobIntentService.f1140e.remove(0) : null;
                            } finally {
                            }
                        }
                    }
                    if (kVarA == null) {
                        return null;
                    }
                    JobIntentService jobIntentService2 = (JobIntentService) this.f1167b;
                    kVarA.getIntent();
                    jobIntentService2.b();
                    kVarA.a();
                }
            default:
                String str = ((String[]) objArr)[0];
                try {
                    a2.a.s("Y2bLYPrCMYRQZe5H89Mrj0c=\n", "NQmvI5KjX+o=\n");
                    a2.a.s("QPj3J/yQfg5C9sAAtYdlF3jV0gj+hHgxY/nXQ6XK\n", "Fpeza5XjCl4=\n");
                    JSONReader jSONReader = new JSONReader(new StringReader(str));
                    jSONReader.startArray();
                    while (jSONReader.hasNext() && !isCancelled()) {
                        publishProgress((ChannelBean) jSONReader.readObject(ChannelBean.class));
                    }
                    a2.a.s("OZ3DeJPP3L0KnuZfmt7Gth0=\n", "b/KnO/uustM=\n");
                    a2.a.s("3PteDy/ZZY3e9WkoZs5+lOTWeyAtzWOy//p+a3eDMQ==\n", "ipQaQ0aqEd0=\n");
                } catch (Exception e5) {
                    String strS = a2.a.s("PYEVezZjHOkOgjBcP3IG4hk=\n", "a+5xOF4Ccoc=\n");
                    String string = e5.toString();
                    boolean z7 = org.bitspark.android.utils.m.f8784b;
                    Log.i(strS, string);
                }
                return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onCancelled(Object obj) {
        switch (this.f1166a) {
            case 0:
                ((JobIntentService) this.f1167b).c();
                break;
            default:
                super.onCancelled(obj);
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) {
        switch (this.f1166a) {
            case 0:
                ((JobIntentService) this.f1167b).c();
                break;
            default:
                super.onPostExecute((List) obj);
                a2.a.s("RvWs2OhK18B19on/4VvNy2I=\n", "EJrIm4Arua4=\n");
                a2.a.s("VipA1TQlpexUJHfyfTm/7G82cNwlM7LJdCAssHB7/JEtfw==\n", "AEUEmV1W0bw=\n");
                fa.x0 x0Var = (fa.x0) this.f1167b;
                int i6 = x0Var.f6974l;
                if (i6 == -10 || i6 >= 0) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(x0Var.f6972j);
                    c7.o oVar = ka.m0.H0;
                    oVar.f3443a.put(String.valueOf(x0Var.f6974l), arrayList);
                    break;
                }
        }
    }

    @Override // android.os.AsyncTask
    public void onProgressUpdate(Object[] objArr) {
        switch (this.f1166a) {
            case 1:
                ChannelBean[] channelBeanArr = (ChannelBean[]) objArr;
                super.onProgressUpdate(channelBeanArr);
                fa.x0 x0Var = (fa.x0) this.f1167b;
                x0Var.f6972j.add(channelBeanArr[0]);
                x0Var.f6928e.post(new a.f(16, this));
                break;
            default:
                super.onProgressUpdate(objArr);
                break;
        }
    }

    public h(fa.x0 x0Var) {
        this.f1167b = x0Var;
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        switch (this.f1166a) {
            case 1:
                super.onCancelled();
                a2.a.s("MYjTtsZwckACi/aRz2FoSxU=\n", "Z+e39a4RHC4=\n");
                a2.a.s("du0kHaviQLB04xM64vJVjkPnDHnr\n", "IIJgUcKRNOA=\n");
                break;
            default:
                super.onCancelled();
                break;
        }
    }
}
