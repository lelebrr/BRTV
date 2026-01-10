.class public final Lz4/y;
.super Lz4/q;
.source "MyApplication"


# instance fields
.field public final b:Lc6/c;

.field public final c:Lw5/d;

.field public final d:Lz4/a;


# direct methods
.method public constructor <init>(ILc6/c;Lw5/d;Lz4/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lz4/q;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lz4/y;->c:Lw5/d;

    .line 5
    .line 6
    iput-object p2, p0, Lz4/y;->b:Lc6/c;

    .line 7
    .line 8
    iput-object p4, p0, Lz4/y;->d:Lz4/a;

    .line 9
    .line 10
    const/4 p3, 0x2

    .line 11
    if-ne p1, p3, :cond_1

    .line 12
    .line 13
    iget-boolean p1, p2, Lc6/c;->b:Z

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string p2, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lz4/n;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lz4/y;->b:Lc6/c;

    .line 2
    .line 3
    iget-boolean p1, p1, Lc6/c;->b:Z

    .line 4
    .line 5
    return p1
.end method

.method public final b(Lz4/n;)[Lcom/google/android/gms/common/Feature;
    .locals 0

    .line 1
    iget-object p1, p0, Lz4/y;->b:Lc6/c;

    .line 2
    .line 3
    iget-object p1, p1, Lc6/c;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, [Lcom/google/android/gms/common/Feature;

    .line 6
    .line 7
    return-object p1
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz4/y;->d:Lz4/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lcom/google/android/gms/common/api/Status;->c:Landroid/app/PendingIntent;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ly4/k;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ly4/e;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ly4/e;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Ly4/e;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object p1, p0, Lz4/y;->c:Lw5/d;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lw5/d;->c(Ljava/lang/Exception;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final d(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz4/y;->c:Lw5/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lw5/d;->c(Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(Lz4/n;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz4/y;->c:Lw5/d;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lz4/y;->b:Lc6/c;

    .line 4
    .line 5
    iget-object p1, p1, Lz4/n;->d:Ly4/c;

    .line 6
    .line 7
    iget-object v1, v1, Lc6/c;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lc6/c;

    .line 10
    .line 11
    iget-object v1, v1, Lc6/c;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lz4/k;

    .line 14
    .line 15
    invoke-interface {v1, p1, v0}, Lz4/k;->r(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {v0, p1}, Lw5/d;->c(Ljava/lang/Exception;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_1
    move-exception p1

    .line 25
    invoke-static {p1}, Lz4/q;->g(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lz4/y;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_2
    move-exception p1

    .line 34
    throw p1
.end method

.method public final f(Ll6/h;Z)V
    .locals 2

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p1, Ll6/h;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/util/Map;

    .line 8
    .line 9
    iget-object v1, p0, Lz4/y;->c:Lw5/d;

    .line 10
    .line 11
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    new-instance p2, Ll6/h;

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    invoke-direct {p2, p1, v0, v1}, Ll6/h;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, v1, Lw5/d;->a:Lw5/g;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lw5/g;->a(Lw5/a;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
