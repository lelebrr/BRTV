package androidx.core.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.support.v4.app.INotificationSideChannel;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y0 implements Handler.Callback, ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final Context f1239a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f1240b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f1241c = new HashMap();
    public HashSet d = new HashSet();

    public y0(Context context) {
        this.f1239a = context;
        HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
        handlerThread.start();
        this.f1240b = new Handler(handlerThread.getLooper(), this);
    }

    public final void a(x0 x0Var) {
        boolean z7;
        ArrayDeque arrayDeque;
        boolean zIsLoggable = Log.isLoggable("NotifManCompat", 3);
        ComponentName componentName = x0Var.f1235a;
        if (zIsLoggable) {
            Log.d("NotifManCompat", "Processing component " + componentName + ", " + x0Var.d.size() + " queued tasks");
        }
        if (x0Var.d.isEmpty()) {
            return;
        }
        if (x0Var.f1236b) {
            z7 = true;
        } else {
            Intent component = new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(componentName);
            Context context = this.f1239a;
            boolean zBindService = context.bindService(component, this, 33);
            x0Var.f1236b = zBindService;
            if (zBindService) {
                x0Var.f1238e = 0;
            } else {
                Log.w("NotifManCompat", "Unable to bind to listener " + componentName);
                context.unbindService(this);
            }
            z7 = x0Var.f1236b;
        }
        if (!z7 || x0Var.f1237c == null) {
            b(x0Var);
            return;
        }
        while (true) {
            arrayDeque = x0Var.d;
            v0 v0Var = (v0) arrayDeque.peek();
            if (v0Var == null) {
                break;
            }
            try {
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Sending task " + v0Var);
                }
                x0Var.f1237c.notify(v0Var.f1230a, v0Var.f1231b, null, v0Var.f1232c);
                arrayDeque.remove();
            } catch (DeadObjectException unused) {
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Remote service has died: " + componentName);
                }
            } catch (RemoteException e5) {
                Log.w("NotifManCompat", "RemoteException communicating with " + componentName, e5);
            }
        }
        if (arrayDeque.isEmpty()) {
            return;
        }
        b(x0Var);
    }

    public final void b(x0 x0Var) {
        Handler handler = this.f1240b;
        ComponentName componentName = x0Var.f1235a;
        if (handler.hasMessages(3, componentName)) {
            return;
        }
        int i6 = x0Var.f1238e;
        int i10 = i6 + 1;
        x0Var.f1238e = i10;
        if (i10 <= 6) {
            int i11 = (1 << i6) * 1000;
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Scheduling retry for " + i11 + " ms");
            }
            handler.sendMessageDelayed(handler.obtainMessage(3, componentName), i11);
            return;
        }
        StringBuilder sb = new StringBuilder("Giving up on delivering ");
        ArrayDeque arrayDeque = x0Var.d;
        sb.append(arrayDeque.size());
        sb.append(" tasks to ");
        sb.append(componentName);
        sb.append(" after ");
        sb.append(x0Var.f1238e);
        sb.append(" retries");
        Log.w("NotifManCompat", sb.toString());
        arrayDeque.clear();
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        HashSet hashSet;
        int i6 = message.what;
        if (i6 != 0) {
            if (i6 == 1) {
                w0 w0Var = (w0) message.obj;
                ComponentName componentName = w0Var.f1233a;
                IBinder iBinder = w0Var.f1234b;
                x0 x0Var = (x0) this.f1241c.get(componentName);
                if (x0Var != null) {
                    x0Var.f1237c = INotificationSideChannel.Stub.asInterface(iBinder);
                    x0Var.f1238e = 0;
                    a(x0Var);
                }
                return true;
            }
            if (i6 != 2) {
                if (i6 != 3) {
                    return false;
                }
                x0 x0Var2 = (x0) this.f1241c.get((ComponentName) message.obj);
                if (x0Var2 != null) {
                    a(x0Var2);
                }
                return true;
            }
            x0 x0Var3 = (x0) this.f1241c.get((ComponentName) message.obj);
            if (x0Var3 != null) {
                if (x0Var3.f1236b) {
                    this.f1239a.unbindService(this);
                    x0Var3.f1236b = false;
                }
                x0Var3.f1237c = null;
            }
            return true;
        }
        v0 v0Var = (v0) message.obj;
        String string = Settings.Secure.getString(this.f1239a.getContentResolver(), "enabled_notification_listeners");
        synchronized (z0.f1242c) {
            if (string != null) {
                try {
                    if (!string.equals(z0.d)) {
                        String[] strArrSplit = string.split(":", -1);
                        HashSet hashSet2 = new HashSet(strArrSplit.length);
                        for (String str : strArrSplit) {
                            ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                            if (componentNameUnflattenFromString != null) {
                                hashSet2.add(componentNameUnflattenFromString.getPackageName());
                            }
                        }
                        z0.f1243e = hashSet2;
                        z0.d = string;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            hashSet = z0.f1243e;
        }
        if (!hashSet.equals(this.d)) {
            this.d = hashSet;
            List<ResolveInfo> listQueryIntentServices = this.f1239a.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
            HashSet hashSet3 = new HashSet();
            for (ResolveInfo resolveInfo : listQueryIntentServices) {
                if (hashSet.contains(resolveInfo.serviceInfo.packageName)) {
                    ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                    ComponentName componentName2 = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                    if (resolveInfo.serviceInfo.permission != null) {
                        Log.w("NotifManCompat", "Permission present on component " + componentName2 + ", not adding listener record.");
                    } else {
                        hashSet3.add(componentName2);
                    }
                }
            }
            Iterator it = hashSet3.iterator();
            while (it.hasNext()) {
                ComponentName componentName3 = (ComponentName) it.next();
                if (!this.f1241c.containsKey(componentName3)) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Adding listener record for " + componentName3);
                    }
                    this.f1241c.put(componentName3, new x0(componentName3));
                }
            }
            Iterator it2 = this.f1241c.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                if (!hashSet3.contains(entry.getKey())) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Removing listener record for " + entry.getKey());
                    }
                    x0 x0Var4 = (x0) entry.getValue();
                    if (x0Var4.f1236b) {
                        this.f1239a.unbindService(this);
                        x0Var4.f1236b = false;
                    }
                    x0Var4.f1237c = null;
                    it2.remove();
                }
            }
        }
        for (x0 x0Var5 : this.f1241c.values()) {
            x0Var5.d.add(v0Var);
            a(x0Var5);
        }
        return true;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("NotifManCompat", 3)) {
            Log.d("NotifManCompat", "Connected to service " + componentName);
        }
        this.f1240b.obtainMessage(1, new w0(componentName, iBinder)).sendToTarget();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("NotifManCompat", 3)) {
            Log.d("NotifManCompat", "Disconnected from service " + componentName);
        }
        this.f1240b.obtainMessage(2, componentName).sendToTarget();
    }
}
