.class public final Lb5/q;
.super Lb5/i;
.source "MyApplication"


# instance fields
.field public final g:Landroid/os/IBinder;

.field public final synthetic h:Lcom/google/android/gms/common/internal/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/a;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb5/q;->h:Lcom/google/android/gms/common/internal/a;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p4}, Lb5/i;-><init>(Lcom/google/android/gms/common/internal/a;ILandroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lb5/q;->g:Landroid/os/IBinder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb5/q;->h:Lcom/google/android/gms/common/internal/a;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/common/internal/a;->p:Lb5/d;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, Lb5/d;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ly4/i;

    .line 10
    .line 11
    invoke-interface {v1, p1}, Ly4/i;->l(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/a;->t(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final b()Z
    .locals 6

    .line 1
    const-string v0, "GmsClient"

    .line 2
    .line 3
    iget-object v1, p0, Lb5/q;->g:Landroid/os/IBinder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-static {v1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    move-object v3, v1

    .line 10
    check-cast v3, Landroid/os/IBinder;

    .line 11
    .line 12
    invoke-interface {v3}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    iget-object v4, p0, Lb5/q;->h:Lcom/google/android/gms/common/internal/a;

    .line 17
    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/a;->q()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/a;->q()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v5, "service descriptor mismatch: "

    .line 35
    .line 36
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, " vs. "

    .line 43
    .line 44
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return v2

    .line 58
    :cond_0
    invoke-virtual {v4, v1}, Lcom/google/android/gms/common/internal/a;->l(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    const/4 v3, 0x4

    .line 66
    invoke-static {v4, v1, v3, v0}, Lcom/google/android/gms/common/internal/a;->x(Lcom/google/android/gms/common/internal/a;IILandroid/os/IInterface;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    const/4 v1, 0x3

    .line 73
    invoke-static {v4, v1, v3, v0}, Lcom/google/android/gms/common/internal/a;->x(Lcom/google/android/gms/common/internal/a;IILandroid/os/IInterface;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    :cond_1
    const/4 v0, 0x0

    .line 80
    iput-object v0, v4, Lcom/google/android/gms/common/internal/a;->t:Lcom/google/android/gms/common/ConnectionResult;

    .line 81
    .line 82
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/a;->n()Landroid/os/Bundle;

    .line 83
    .line 84
    .line 85
    iget-object v0, v4, Lcom/google/android/gms/common/internal/a;->o:Lb5/d;

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    iget-object v0, v0, Lb5/d;->a:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Ly4/h;

    .line 92
    .line 93
    invoke-interface {v0}, Ly4/h;->onConnected()V

    .line 94
    .line 95
    .line 96
    :cond_2
    const/4 v0, 0x1

    .line 97
    return v0

    .line 98
    :cond_3
    return v2

    .line 99
    :catch_0
    const-string v1, "service probably died"

    .line 100
    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    return v2
.end method
