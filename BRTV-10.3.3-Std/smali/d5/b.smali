.class public final Ld5/b;
.super Ly4/g;
.source "MyApplication"


# static fields
.field public static final j:Ll6/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ly4/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/cast/d1;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cast/d1;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ll6/h;

    .line 13
    .line 14
    const-string v3, "ClientTelemetry.API"

    .line 15
    .line 16
    invoke-direct {v2, v3, v1, v0}, Ll6/h;-><init>(Ljava/lang/String;Ll5/a;Ly4/d;)V

    .line 17
    .line 18
    .line 19
    sput-object v2, Ld5/b;->j:Ll6/h;

    .line 20
    .line 21
    return-void
.end method
