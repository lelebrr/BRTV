.class public final Lq4/b0;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final synthetic a:Lq4/b;


# direct methods
.method public constructor <init>(Lq4/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq4/b0;->a:Lq4/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lq4/b0;->a:Lq4/b;

    .line 4
    .line 5
    iget-object v3, v2, Lq4/b;->e:Lq4/n;

    .line 6
    .line 7
    if-nez v3, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    :try_start_0
    iget-object v3, v2, Lq4/b;->j:Lr4/f;

    .line 11
    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    invoke-virtual {v3}, Lr4/f;->y()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v3

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    iget-object v3, v2, Lq4/b;->e:Lq4/n;

    .line 21
    .line 22
    check-cast v3, Lq4/l;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    sget v5, Lcom/google/android/gms/internal/cast/d0;->a:I

    .line 29
    .line 30
    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :goto_1
    sget-object v4, Lq4/b;->m:Lv4/b;

    .line 38
    .line 39
    const-class v5, Lq4/n;

    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const/4 v6, 0x2

    .line 46
    new-array v6, v6, [Ljava/lang/Object;

    .line 47
    .line 48
    const-string v7, "onConnected"

    .line 49
    .line 50
    aput-object v7, v6, v1

    .line 51
    .line 52
    aput-object v5, v6, v0

    .line 53
    .line 54
    const-string v0, "Unable to call %s on %s."

    .line 55
    .line 56
    invoke-virtual {v4, v3, v0, v6}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_2
    iget-object v0, v2, Lq4/b;->l:Lcom/google/android/gms/internal/cast/u4;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    new-instance v1, Lcom/google/android/gms/internal/cast/e0;

    .line 64
    .line 65
    const/4 v2, 0x3

    .line 66
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cast/e0;-><init>(I)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Lcom/google/android/gms/internal/cast/f0;

    .line 70
    .line 71
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/cast/f0;-><init>(Lcom/google/android/gms/internal/cast/e0;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/u4;->a:Lc2/b;

    .line 75
    .line 76
    invoke-static {v0, v2}, Lc2/b;->k(Lc2/b;Lcom/google/android/gms/internal/cast/f0;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_3
    return-void
.end method
