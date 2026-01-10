.class public abstract Lcom/google/android/gms/internal/cast/b7;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:Lcom/google/android/gms/internal/cast/c7;

.field public b:Lcom/google/android/gms/internal/cast/c7;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/c7;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/b7;->a:Lcom/google/android/gms/internal/cast/c7;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/c7;->g()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/cast/c7;->h(ILcom/google/android/gms/internal/cast/c7;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/google/android/gms/internal/cast/c7;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v0, "Default instance must be immutable."

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/cast/c7;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/b7;->b()Lcom/google/android/gms/internal/cast/c7;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/c7;->h(ILcom/google/android/gms/internal/cast/c7;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Ljava/lang/Byte;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ne v3, v1, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    if-nez v3, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/cast/s7;->c:Lcom/google/android/gms/internal/cast/s7;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/cast/s7;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/v7;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/cast/v7;->f(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eq v1, v3, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move-object v2, v0

    .line 45
    :goto_0
    const/4 v1, 0x2

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/c7;->h(ILcom/google/android/gms/internal/cast/c7;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move v1, v3

    .line 50
    :goto_1
    if-eqz v1, :cond_3

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_3
    new-instance v0, Landroidx/fragment/app/q;

    .line 54
    .line 55
    const-string v1, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    .line 56
    .line 57
    const/4 v2, 0x3

    .line 58
    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/q;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    throw v0
.end method

.method public final b()Lcom/google/android/gms/internal/cast/c7;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/c7;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/google/android/gms/internal/cast/s7;->c:Lcom/google/android/gms/internal/cast/s7;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/cast/s7;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/v7;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/cast/v7;->d(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/c7;->d()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 34
    .line 35
    return-object v0
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/c7;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/b7;->a:Lcom/google/android/gms/internal/cast/c7;

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/cast/c7;->h(ILcom/google/android/gms/internal/cast/c7;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/android/gms/internal/cast/c7;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 20
    .line 21
    sget-object v2, Lcom/google/android/gms/internal/cast/s7;->c:Lcom/google/android/gms/internal/cast/s7;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/cast/s7;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/v7;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/cast/v7;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/b7;->a:Lcom/google/android/gms/internal/cast/c7;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/c7;->h(ILcom/google/android/gms/internal/cast/c7;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/cast/b7;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/b7;->b()Lcom/google/android/gms/internal/cast/c7;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 16
    .line 17
    return-object v0
.end method
