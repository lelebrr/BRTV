.class public final Lcom/google/android/gms/internal/cast/q7;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lcom/google/android/gms/internal/cast/v7;


# instance fields
.field public final a:Lcom/google/android/gms/internal/cast/r6;

.field public final b:Lcom/google/android/gms/internal/cast/k2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/k2;Lcom/google/android/gms/internal/cast/r6;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/z6;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/q7;->b:Lcom/google/android/gms/internal/cast/k2;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/q7;->a:Lcom/google/android/gms/internal/cast/r6;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/cast/l7;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/ClassCastException;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p1
.end method

.method public final b()Lcom/google/android/gms/internal/cast/c7;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/q7;->a:Lcom/google/android/gms/internal/cast/r6;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/cast/c7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/cast/c7;

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/c7;->h(ILcom/google/android/gms/internal/cast/c7;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/google/android/gms/internal/cast/c7;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/cast/c7;

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/c7;->h(ILcom/google/android/gms/internal/cast/c7;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/google/android/gms/internal/cast/b7;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/b7;->b()Lcom/google/android/gms/internal/cast/c7;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public final c(Lcom/google/android/gms/internal/cast/c7;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/c7;->zzc:Lcom/google/android/gms/internal/cast/y7;

    .line 2
    .line 3
    check-cast p2, Lcom/google/android/gms/internal/cast/c7;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/c7;->zzc:Lcom/google/android/gms/internal/cast/y7;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/y7;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x1

    .line 16
    return p1
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/q7;->b:Lcom/google/android/gms/internal/cast/k2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/k2;->d(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/google/android/gms/internal/cast/z6;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/lang/ClassCastException;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public final e(Lcom/google/android/gms/internal/cast/c7;)I
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/c7;->zzc:Lcom/google/android/gms/internal/cast/y7;

    .line 2
    .line 3
    iget v0, p1, Lcom/google/android/gms/internal/cast/y7;->c:I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p1, Lcom/google/android/gms/internal/cast/y7;->c:I

    .line 10
    .line 11
    :cond_0
    return v0
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/ClassCastException;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p1
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/w7;->q(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final h(Lcom/google/android/gms/internal/cast/c7;)I
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/c7;->zzc:Lcom/google/android/gms/internal/cast/y7;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const p1, 0x7bc6f

    .line 7
    .line 8
    .line 9
    return p1
.end method
