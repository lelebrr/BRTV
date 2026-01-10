.class public abstract Lp4/d;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lv4/h;->a:Ly4/d;

    .line 2
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/cast/t0;

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/cast/s0;

    .line 6
    .line 7
    const-string v1, "com.google.android.gms.cast.remote_display.ICastRemoteDisplaySessionCallbacks"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cast/s;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
