.class public final Lp4/h;
.super Lq1/m0;
.source "MyApplication"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp4/h;->a:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final k()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->d:Lv4/b;

    .line 2
    .line 3
    iget-object v0, p0, Lp4/h;->a:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    .line 4
    .line 5
    const-string v1, "onRouteUnselected"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "onRouteUnselected, no device was selected"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
