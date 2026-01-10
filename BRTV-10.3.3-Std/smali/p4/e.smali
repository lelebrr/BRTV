.class public final Lp4/e;
.super Ly4/g;
.source "MyApplication"


# static fields
.field public static final j:Ll6/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/d1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/d1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ll6/h;

    .line 8
    .line 9
    sget-object v2, Lv4/h;->b:Ly4/d;

    .line 10
    .line 11
    const-string v3, "CastRemoteDisplay.API"

    .line 12
    .line 13
    invoke-direct {v1, v3, v0, v2}, Ll6/h;-><init>(Ljava/lang/String;Ll5/a;Ly4/d;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lp4/e;->j:Ll6/h;

    .line 17
    .line 18
    return-void
.end method
