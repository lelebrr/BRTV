package s4;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.media3.common.C;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.ReconnectionService;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.MediaIntentReceiver;
import com.google.android.gms.cast.framework.media.NotificationAction;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.internal.cast.u;
import com.google.android.gms.internal.cast.w0;
import com.google.android.gms.internal.cast.x0;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.Iterator;
import q4.z;
import r4.t;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k {

    /* renamed from: v, reason: collision with root package name */
    public static final v4.b f9798v = new v4.b("MediaSessionManager", null);

    /* renamed from: a, reason: collision with root package name */
    public final Context f9799a;

    /* renamed from: b, reason: collision with root package name */
    public final CastOptions f9800b;

    /* renamed from: c, reason: collision with root package name */
    public final u f9801c;
    public final q4.f d;

    /* renamed from: e, reason: collision with root package name */
    public final NotificationOptions f9802e;
    public final ComponentName f;

    /* renamed from: g, reason: collision with root package name */
    public final ComponentName f9803g;

    /* renamed from: h, reason: collision with root package name */
    public final c2.b f9804h;

    /* renamed from: i, reason: collision with root package name */
    public final c2.b f9805i;

    /* renamed from: j, reason: collision with root package name */
    public final g f9806j;

    /* renamed from: k, reason: collision with root package name */
    public final x0 f9807k;

    /* renamed from: l, reason: collision with root package name */
    public final h f9808l;

    /* renamed from: m, reason: collision with root package name */
    public final z f9809m;

    /* renamed from: n, reason: collision with root package name */
    public r4.f f9810n;

    /* renamed from: o, reason: collision with root package name */
    public CastDevice f9811o;

    /* renamed from: p, reason: collision with root package name */
    public MediaSessionCompat f9812p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f9813q;

    /* renamed from: r, reason: collision with root package name */
    public PlaybackStateCompat.CustomAction f9814r;

    /* renamed from: s, reason: collision with root package name */
    public PlaybackStateCompat.CustomAction f9815s;

    /* renamed from: t, reason: collision with root package name */
    public PlaybackStateCompat.CustomAction f9816t;

    /* renamed from: u, reason: collision with root package name */
    public PlaybackStateCompat.CustomAction f9817u;

    public k(Context context, CastOptions castOptions, u uVar) {
        NotificationOptions notificationOptions;
        this.f9799a = context;
        this.f9800b = castOptions;
        this.f9801c = uVar;
        v4.b bVar = q4.a.f9200j;
        b5.l.b("Must be called from the main thread.");
        q4.a aVar = q4.a.f9202l;
        g gVar = null;
        this.d = aVar != null ? aVar.a() : null;
        CastMediaOptions castMediaOptions = castOptions.f;
        this.f9802e = castMediaOptions == null ? null : castMediaOptions.d;
        this.f9809m = new z(2, this);
        String str = castMediaOptions == null ? null : castMediaOptions.f3816b;
        this.f = !TextUtils.isEmpty(str) ? new ComponentName(context, str) : null;
        String str2 = castMediaOptions == null ? null : castMediaOptions.f3815a;
        this.f9803g = !TextUtils.isEmpty(str2) ? new ComponentName(context, str2) : null;
        c2.b bVar2 = new c2.b(context);
        this.f9804h = bVar2;
        bVar2.f = new i(this, 0);
        c2.b bVar3 = new c2.b(context);
        this.f9805i = bVar3;
        bVar3.f = new i(this, 1);
        this.f9807k = new x0(Looper.getMainLooper(), 0);
        v4.b bVar4 = g.f9774u;
        CastMediaOptions castMediaOptions2 = castOptions.f;
        if (castMediaOptions2 != null && (notificationOptions = castMediaOptions2.d) != null) {
            t tVar = notificationOptions.F;
            if (tVar == null) {
                gVar = new g(context);
            } else {
                ArrayList arrayListA = l.a(tVar);
                int[] iArrB = l.b(tVar);
                int size = arrayListA == null ? 0 : arrayListA.size();
                v4.b bVar5 = g.f9774u;
                if (arrayListA == null || arrayListA.isEmpty()) {
                    Log.e(bVar5.f10671a, bVar5.d(r4.b.class.getSimpleName().concat(" doesn't provide any action."), new Object[0]));
                } else if (arrayListA.size() > 5) {
                    Log.e(bVar5.f10671a, bVar5.d(r4.b.class.getSimpleName().concat(" provides more than 5 actions."), new Object[0]));
                } else if (iArrB == null || (iArrB.length) == 0) {
                    Log.e(bVar5.f10671a, bVar5.d(r4.b.class.getSimpleName().concat(" doesn't provide any actions for compact view."), new Object[0]));
                } else {
                    for (int i6 : iArrB) {
                        if (i6 < 0 || i6 >= size) {
                            Log.e(bVar5.f10671a, bVar5.d(r4.b.class.getSimpleName().concat("provides a compact view action whose index is out of bounds."), new Object[0]));
                            break;
                        }
                    }
                    gVar = new g(context);
                }
            }
        }
        this.f9806j = gVar;
        this.f9808l = new h(0, this);
    }

    public final void a(r4.f fVar, CastDevice castDevice) {
        ComponentName componentName;
        CastOptions castOptions = this.f9800b;
        CastMediaOptions castMediaOptions = castOptions == null ? null : castOptions.f;
        if (this.f9813q || castOptions == null || castMediaOptions == null || this.f9802e == null || fVar == null || castDevice == null || (componentName = this.f9803g) == null) {
            f9798v.b("skip attaching media session", new Object[0]);
            return;
        }
        this.f9810n = fVar;
        b5.l.b("Must be called from the main thread.");
        z zVar = this.f9809m;
        if (zVar != null) {
            fVar.f9547h.add(zVar);
        }
        this.f9811o = castDevice;
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setComponent(componentName);
        int i6 = w0.f4448a;
        Context context = this.f9799a;
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, i6);
        if (castMediaOptions.f) {
            MediaSessionCompat mediaSessionCompat = new MediaSessionCompat(context, "CastMediaSession", componentName, broadcast);
            this.f9812p = mediaSessionCompat;
            j(0, null);
            CastDevice castDevice2 = this.f9811o;
            if (castDevice2 != null && !TextUtils.isEmpty(castDevice2.d)) {
                mediaSessionCompat.setMetadata(new MediaMetadataCompat.Builder().putString(MediaMetadataCompat.METADATA_KEY_ALBUM_ARTIST, context.getResources().getString(R.string.cast_casting_to_device, this.f9811o.d)).build());
            }
            mediaSessionCompat.setCallback(new j(this));
            mediaSessionCompat.setActive(true);
            this.f9801c.x(mediaSessionCompat);
        }
        this.f9813q = true;
        c();
    }

    public final void b(Bitmap bitmap, int i6) {
        MediaSessionCompat mediaSessionCompat = this.f9812p;
        if (mediaSessionCompat == null) {
            return;
        }
        if (bitmap == null || bitmap.getWidth() <= 1 || bitmap.getHeight() <= 1) {
            bitmap = Bitmap.createBitmap(2, 2, Bitmap.Config.ARGB_8888);
            bitmap.eraseColor(0);
        }
        MediaSessionCompat mediaSessionCompat2 = this.f9812p;
        MediaMetadataCompat metadata = mediaSessionCompat2 == null ? null : mediaSessionCompat2.getController().getMetadata();
        mediaSessionCompat.setMetadata((metadata == null ? new MediaMetadataCompat.Builder() : new MediaMetadataCompat.Builder(metadata)).putBitmap(i6 == 0 ? MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON : MediaMetadataCompat.METADATA_KEY_ALBUM_ART, bitmap).build());
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c() {
        /*
            Method dump skipped, instructions count: 300
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: s4.k.c():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long d(java.lang.String r5, int r6, android.os.Bundle r7) {
        /*
            r4 = this;
            int r0 = r5.hashCode()
            r1 = -945151566(0xffffffffc7aa21b2, float:-87107.39)
            r2 = 2
            r3 = 1
            if (r0 == r1) goto L2a
            r1 = -945080078(0xffffffffc7ab38f2, float:-87665.89)
            if (r0 == r1) goto L20
            r1 = 235550565(0xe0a3765, float:1.7036485E-30)
            if (r0 == r1) goto L16
            goto L34
        L16:
            java.lang.String r0 = "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L34
            r5 = 0
            goto L35
        L20:
            java.lang.String r0 = "com.google.android.gms.cast.framework.action.SKIP_PREV"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L34
            r5 = 1
            goto L35
        L2a:
            java.lang.String r0 = "com.google.android.gms.cast.framework.action.SKIP_NEXT"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L34
            r5 = 2
            goto L35
        L34:
            r5 = -1
        L35:
            if (r5 == 0) goto L64
            r0 = 0
            if (r5 == r3) goto L51
            if (r5 == r2) goto L3e
            goto L70
        L3e:
            r4.f r5 = r4.f9810n
            if (r5 == 0) goto L4b
            boolean r5 = r5.A()
            if (r5 == 0) goto L4b
            r0 = 32
            goto L70
        L4b:
            java.lang.String r5 = "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"
            r7.putBoolean(r5, r3)
            return r0
        L51:
            r4.f r5 = r4.f9810n
            if (r5 == 0) goto L5e
            boolean r5 = r5.B()
            if (r5 == 0) goto L5e
            r0 = 16
            goto L70
        L5e:
            java.lang.String r5 = "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"
            r7.putBoolean(r5, r3)
            return r0
        L64:
            r5 = 3
            if (r6 != r5) goto L6c
            r6 = 514(0x202, double:2.54E-321)
            r0 = r6
            r6 = 3
            goto L6e
        L6c:
            r0 = 512(0x200, double:2.53E-321)
        L6e:
            if (r6 == r2) goto L71
        L70:
            return r0
        L71:
            r5 = 516(0x204, double:2.55E-321)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: s4.k.d(java.lang.String, int, android.os.Bundle):long");
    }

    public final Uri e(MediaMetadata mediaMetadata) {
        CastMediaOptions castMediaOptions = this.f9800b.f;
        if (castMediaOptions != null) {
            castMediaOptions.j();
        }
        ArrayList arrayList = mediaMetadata.f3716a;
        WebImage webImage = arrayList != null && !arrayList.isEmpty() ? (WebImage) mediaMetadata.f3716a.get(0) : null;
        if (webImage == null) {
            return null;
        }
        return webImage.f3951b;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void f(android.support.v4.media.session.PlaybackStateCompat.Builder r16, java.lang.String r17, com.google.android.gms.cast.framework.media.NotificationAction r18) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: s4.k.f(android.support.v4.media.session.PlaybackStateCompat$Builder, java.lang.String, com.google.android.gms.cast.framework.media.NotificationAction):void");
    }

    public final void g(boolean z7) {
        if (this.f9800b.f3794g) {
            h hVar = this.f9808l;
            x0 x0Var = this.f9807k;
            if (hVar != null) {
                x0Var.removeCallbacks(hVar);
            }
            Context context = this.f9799a;
            Intent intent = new Intent(context, (Class<?>) ReconnectionService.class);
            intent.setPackage(context.getPackageName());
            try {
                context.startService(intent);
            } catch (IllegalStateException unused) {
                if (z7) {
                    x0Var.postDelayed(hVar, 1000L);
                }
            }
        }
    }

    public final void h() {
        g gVar = this.f9806j;
        if (gVar != null) {
            f9798v.b("Stopping media notification.", new Object[0]);
            c2.b bVar = gVar.f9781i;
            bVar.j();
            bVar.f = null;
            NotificationManager notificationManager = gVar.f9776b;
            if (notificationManager != null) {
                notificationManager.cancel("castMediaNotification", 1);
            }
        }
    }

    public final void i() {
        if (this.f9800b.f3794g) {
            this.f9807k.removeCallbacks(this.f9808l);
            Context context = this.f9799a;
            Intent intent = new Intent(context, (Class<?>) ReconnectionService.class);
            intent.setPackage(context.getPackageName());
            context.stopService(intent);
        }
    }

    public final void j(int i6, MediaInfo mediaInfo) {
        PlaybackStateCompat playbackStateCompatBuild;
        MediaSessionCompat mediaSessionCompat;
        MediaMetadata mediaMetadata;
        PendingIntent activity;
        MediaSessionCompat mediaSessionCompat2 = this.f9812p;
        if (mediaSessionCompat2 == null) {
            return;
        }
        Bundle bundle = new Bundle();
        PlaybackStateCompat.Builder builder = new PlaybackStateCompat.Builder();
        r4.f fVar = this.f9810n;
        NotificationOptions notificationOptions = this.f9802e;
        if (fVar == null || this.f9806j == null) {
            playbackStateCompatBuild = builder.build();
        } else {
            builder.setState(i6, (fVar.w() == 0 || fVar.k()) ? 0L : fVar.c(), 1.0f);
            if (i6 == 0) {
                playbackStateCompatBuild = builder.build();
            } else {
                t tVar = notificationOptions != null ? notificationOptions.F : null;
                r4.f fVar2 = this.f9810n;
                long jD = (fVar2 == null || fVar2.k() || this.f9810n.o()) ? 0L : 256L;
                if (tVar != null) {
                    ArrayList<NotificationAction> arrayListA = l.a(tVar);
                    if (arrayListA != null) {
                        for (NotificationAction notificationAction : arrayListA) {
                            String str = notificationAction.f3822a;
                            if (TextUtils.equals(str, MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK) || TextUtils.equals(str, MediaIntentReceiver.ACTION_SKIP_PREV) || TextUtils.equals(str, MediaIntentReceiver.ACTION_SKIP_NEXT)) {
                                jD = d(str, i6, bundle) | jD;
                            } else {
                                f(builder, str, notificationAction);
                            }
                        }
                    }
                } else if (notificationOptions != null) {
                    Iterator it = notificationOptions.f3825a.iterator();
                    while (it.hasNext()) {
                        String str2 = (String) it.next();
                        if (TextUtils.equals(str2, MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK) || TextUtils.equals(str2, MediaIntentReceiver.ACTION_SKIP_PREV) || TextUtils.equals(str2, MediaIntentReceiver.ACTION_SKIP_NEXT)) {
                            jD = d(str2, i6, bundle) | jD;
                        } else {
                            f(builder, str2, null);
                        }
                    }
                }
                playbackStateCompatBuild = builder.setActions(jD).build();
            }
        }
        mediaSessionCompat2.setPlaybackState(playbackStateCompatBuild);
        if (notificationOptions != null && notificationOptions.G) {
            bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS", true);
        }
        if (notificationOptions != null && notificationOptions.H) {
            bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT", true);
        }
        if (bundle.containsKey("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS") || bundle.containsKey("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT")) {
            mediaSessionCompat2.setExtras(bundle);
        }
        if (i6 == 0) {
            mediaSessionCompat2.setMetadata(new MediaMetadataCompat.Builder().build());
            return;
        }
        if (this.f9810n != null) {
            ComponentName componentName = this.f;
            if (componentName == null) {
                activity = null;
            } else {
                Intent intent = new Intent();
                intent.setComponent(componentName);
                activity = PendingIntent.getActivity(this.f9799a, 0, intent, w0.f4448a | C.BUFFER_FLAG_FIRST_SAMPLE);
            }
            if (activity != null) {
                mediaSessionCompat2.setSessionActivity(activity);
            }
        }
        r4.f fVar3 = this.f9810n;
        if (fVar3 == null || (mediaSessionCompat = this.f9812p) == null || mediaInfo == null || (mediaMetadata = mediaInfo.d) == null) {
            return;
        }
        long j10 = fVar3.k() ? 0L : mediaInfo.f3687e;
        MediaMetadata.j(1, "com.google.android.gms.cast.metadata.TITLE");
        Bundle bundle2 = mediaMetadata.f3717b;
        String string = bundle2.getString("com.google.android.gms.cast.metadata.TITLE");
        MediaMetadata.j(1, "com.google.android.gms.cast.metadata.SUBTITLE");
        String string2 = bundle2.getString("com.google.android.gms.cast.metadata.SUBTITLE");
        MediaSessionCompat mediaSessionCompat3 = this.f9812p;
        MediaMetadataCompat metadata = mediaSessionCompat3 == null ? null : mediaSessionCompat3.getController().getMetadata();
        MediaMetadataCompat.Builder builderPutLong = (metadata == null ? new MediaMetadataCompat.Builder() : new MediaMetadataCompat.Builder(metadata)).putLong(MediaMetadataCompat.METADATA_KEY_DURATION, j10);
        if (string != null) {
            builderPutLong.putString(MediaMetadataCompat.METADATA_KEY_TITLE, string);
            builderPutLong.putString(MediaMetadataCompat.METADATA_KEY_DISPLAY_TITLE, string);
        }
        if (string2 != null) {
            builderPutLong.putString(MediaMetadataCompat.METADATA_KEY_DISPLAY_SUBTITLE, string2);
        }
        mediaSessionCompat.setMetadata(builderPutLong.build());
        Uri uriE = e(mediaMetadata);
        if (uriE != null) {
            this.f9804h.i(uriE);
        } else {
            b(null, 0);
        }
        Uri uriE2 = e(mediaMetadata);
        if (uriE2 != null) {
            this.f9805i.i(uriE2);
        } else {
            b(null, 3);
        }
    }
}
