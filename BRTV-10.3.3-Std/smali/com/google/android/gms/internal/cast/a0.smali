.class public final Lcom/google/android/gms/internal/cast/a0;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final d:Lv4/b;


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/gms/internal/cast/x0;

.field public final c:Lcom/google/android/gms/internal/cast/b1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lv4/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "AnalyticsConsent"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, Lv4/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/cast/a0;->d:Lv4/b;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/cast/b1;

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/cast/e1;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v2, Lcom/google/android/gms/internal/cast/z0;->c:Ll6/h;

    .line 12
    .line 13
    sget-object v3, Ly4/f;->c:Ly4/f;

    .line 14
    .line 15
    invoke-direct {v0, p1, v2, v1, v3}, Ly4/g;-><init>(Landroid/content/Context;Ll6/h;Ly4/b;Ly4/f;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/a0;->c:Lcom/google/android/gms/internal/cast/b1;

    .line 19
    .line 20
    iput-wide p2, p0, Lcom/google/android/gms/internal/cast/a0;->a:J

    .line 21
    .line 22
    new-instance p1, Lcom/google/android/gms/internal/cast/x0;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const/4 p3, 0x0

    .line 29
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/cast/x0;-><init>(Landroid/os/Looper;I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/a0;->b:Lcom/google/android/gms/internal/cast/x0;

    .line 33
    .line 34
    return-void
.end method
