.class public abstract Lt9/u;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Lu7/b;

.field public static final b:Lu7/b;

.field public static final c:Lu7/b;

.field public static final d:Lu7/b;

.field public static final e:Lu7/b;

.field public static final f:Lu7/b;

.field public static final g:Lu7/b;

.field public static final h:Lt9/d0;

.field public static final i:Lt9/d0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lu7/b;

    .line 2
    .line 3
    const-string v1, "RESUME_TOKEN"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v1, v2}, Lu7/b;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lt9/u;->a:Lu7/b;

    .line 10
    .line 11
    new-instance v0, Lu7/b;

    .line 12
    .line 13
    const-string v1, "CLOSED_EMPTY"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lu7/b;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lt9/u;->b:Lu7/b;

    .line 20
    .line 21
    new-instance v0, Lu7/b;

    .line 22
    .line 23
    const-string v1, "COMPLETING_ALREADY"

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-direct {v0, v1, v2}, Lu7/b;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lt9/u;->c:Lu7/b;

    .line 30
    .line 31
    new-instance v0, Lu7/b;

    .line 32
    .line 33
    const-string v1, "COMPLETING_WAITING_CHILDREN"

    .line 34
    .line 35
    invoke-direct {v0, v1, v2}, Lu7/b;-><init>(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lt9/u;->d:Lu7/b;

    .line 39
    .line 40
    new-instance v0, Lu7/b;

    .line 41
    .line 42
    const-string v1, "COMPLETING_RETRY"

    .line 43
    .line 44
    invoke-direct {v0, v1, v2}, Lu7/b;-><init>(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lt9/u;->e:Lu7/b;

    .line 48
    .line 49
    new-instance v0, Lu7/b;

    .line 50
    .line 51
    const-string v1, "TOO_LATE_TO_CANCEL"

    .line 52
    .line 53
    invoke-direct {v0, v1, v2}, Lu7/b;-><init>(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lt9/u;->f:Lu7/b;

    .line 57
    .line 58
    new-instance v0, Lu7/b;

    .line 59
    .line 60
    const-string v1, "SEALED"

    .line 61
    .line 62
    invoke-direct {v0, v1, v2}, Lu7/b;-><init>(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Lt9/u;->g:Lu7/b;

    .line 66
    .line 67
    new-instance v0, Lt9/d0;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-direct {v0, v1}, Lt9/d0;-><init>(Z)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Lt9/u;->h:Lt9/d0;

    .line 74
    .line 75
    new-instance v0, Lt9/d0;

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-direct {v0, v1}, Lt9/d0;-><init>(Z)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lt9/u;->i:Lt9/d0;

    .line 82
    .line 83
    return-void
.end method

.method public static final a(La9/i;Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    sget-object v0, Lt9/q;->b:Lt9/q;

    .line 2
    .line 3
    invoke-interface {p0, v0}, La9/i;->e(La9/h;)La9/g;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lt9/q0;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    check-cast p0, Lt9/y0;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Lt9/r0;

    .line 16
    .line 17
    invoke-virtual {p0}, Lt9/y0;->l()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {p1, v0, v1, p0}, Lt9/r0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lt9/y0;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0, p1}, Lt9/y0;->j(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public static synthetic b(La9/i;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lt9/u;->a(La9/i;Ljava/util/concurrent/CancellationException;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static c(Lt9/q0;)V
    .locals 3

    .line 1
    check-cast p0, Lt9/y0;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lt9/r0;

    .line 7
    .line 8
    invoke-virtual {p0}, Lt9/y0;->l()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v0, v1, v2, p0}, Lt9/r0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lt9/y0;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lt9/y0;->j(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static d(Lx9/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx9/d;->a:La9/i;

    .line 2
    .line 3
    sget-object v1, Lt9/q;->b:Lt9/q;

    .line 4
    .line 5
    invoke-interface {v0, v1}, La9/i;->e(La9/h;)La9/g;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lt9/q0;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast v0, Lt9/y0;

    .line 14
    .line 15
    new-instance p0, Lt9/r0;

    .line 16
    .line 17
    invoke-virtual {v0}, Lt9/y0;->l()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0, v1, v2, v0}, Lt9/r0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lt9/y0;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lt9/y0;->j(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "Scope cannot be cancelled because it does not have a job: "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public static final e(La9/i;La9/i;Z)La9/i;
    .locals 4

    .line 1
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    sget-object v0, Lt9/m;->c:Lt9/m;

    .line 4
    .line 5
    invoke-interface {p0, p2, v0}, La9/i;->a(Ljava/lang/Object;Li9/p;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-interface {p1, p2, v0}, La9/i;->a(Ljava/lang/Object;Li9/p;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    invoke-interface {p0, p1}, La9/i;->f(La9/i;)La9/i;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_0
    sget-object v0, La9/j;->a:La9/j;

    .line 35
    .line 36
    new-instance v1, Lt9/m;

    .line 37
    .line 38
    const/4 v2, 0x2

    .line 39
    const/4 v3, 0x2

    .line 40
    invoke-direct {v1, v2, v3}, Lt9/m;-><init>(II)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p0, v0, v1}, La9/i;->a(Ljava/lang/Object;Li9/p;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, La9/i;

    .line 48
    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    check-cast p1, La9/i;

    .line 52
    .line 53
    sget-object p2, Lt9/m;->b:Lt9/m;

    .line 54
    .line 55
    invoke-interface {p1, v0, p2}, La9/i;->a(Ljava/lang/Object;Li9/p;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :cond_1
    check-cast p1, La9/i;

    .line 60
    .line 61
    invoke-interface {p0, p1}, La9/i;->f(La9/i;)La9/i;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method public static final f(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final g(La9/i;)Lt9/q0;
    .locals 3

    .line 1
    sget-object v0, Lt9/q;->b:Lt9/q;

    .line 2
    .line 3
    invoke-interface {p0, v0}, La9/i;->e(La9/h;)La9/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lt9/q0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Current context doesn\'t contain Job in it: "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public static final h(La9/i;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lt9/q;->a:Lt9/q;

    .line 2
    .line 3
    invoke-interface {p0, v0}, La9/i;->e(La9/h;)La9/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lt9/r;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lt9/r;->b(La9/i;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p0, p1}, Lx9/a;->d(La9/i;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :goto_0
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 25
    .line 26
    const-string v2, "Exception while trying to handle coroutine exception"

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1, p1}, Ll5/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    move-object p1, v1

    .line 35
    :goto_1
    invoke-static {p0, p1}, Lx9/a;->d(La9/i;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static synthetic i(Lt9/q0;ZLt9/u0;I)Lt9/c0;
    .locals 2

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    :cond_1
    check-cast p0, Lt9/y0;

    .line 13
    .line 14
    invoke-virtual {p0, p1, v1, p2}, Lt9/y0;->y(ZZLi9/l;)Lt9/c0;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final j(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-ne p0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :cond_1
    :goto_0
    return v0
.end method

.method public static k(Lt9/s;Lt9/p;Li9/p;I)Lt9/x;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p3, v0

    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p1, La9/j;->a:La9/j;

    .line 6
    .line 7
    :cond_0
    invoke-interface {p0}, Lt9/s;->d()La9/i;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0, p1, v0}, Lt9/u;->e(La9/i;La9/i;Z)La9/i;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object p1, Lt9/b0;->a:Lz9/d;

    .line 16
    .line 17
    if-eq p0, p1, :cond_1

    .line 18
    .line 19
    sget-object p3, La9/e;->a:La9/e;

    .line 20
    .line 21
    invoke-interface {p0, p3}, La9/i;->e(La9/h;)La9/g;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    if-nez p3, :cond_1

    .line 26
    .line 27
    invoke-interface {p0, p1}, La9/i;->f(La9/i;)La9/i;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :cond_1
    new-instance p1, Lt9/x;

    .line 32
    .line 33
    const/4 p3, 0x1

    .line 34
    invoke-direct {p1, p0, v0, p3}, Lt9/x;-><init>(La9/i;ZI)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, p1, p2}, Lt9/a;->I(ILt9/a;Li9/p;)V

    .line 38
    .line 39
    .line 40
    return-object p1
.end method

.method public static final l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Lt9/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lt9/k;

    .line 6
    .line 7
    iget-object p0, p0, Lt9/k;->a:Ljava/lang/Throwable;

    .line 8
    .line 9
    invoke-static {p0}, Lo9/d;->f(Ljava/lang/Throwable;)Lw8/g;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_0
    return-object p0
.end method

.method public static final m(Lt9/e;La9/d;Z)V
    .locals 2

    .line 1
    sget-object v0, Lt9/e;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lt9/e;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {v1}, Lo9/d;->f(Ljava/lang/Throwable;)Lw8/g;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Lt9/e;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :goto_0
    if-eqz p2, :cond_5

    .line 23
    .line 24
    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>"

    .line 25
    .line 26
    invoke-static {p1, p2}, Lj9/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast p1, Lx9/g;

    .line 30
    .line 31
    iget-object p2, p1, Lx9/g;->e:Lc9/c;

    .line 32
    .line 33
    invoke-interface {p2}, La9/d;->getContext()La9/i;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object p1, p1, Lx9/g;->g:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {v0, p1}, Lx9/a;->j(La9/i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    sget-object v1, Lx9/a;->f:Lu7/b;

    .line 44
    .line 45
    if-eq p1, v1, :cond_1

    .line 46
    .line 47
    invoke-static {p2, v0, p1}, Lt9/u;->o(Lc9/c;La9/i;Ljava/lang/Object;)Lt9/i1;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v1, 0x0

    .line 53
    :goto_1
    :try_start_0
    invoke-interface {p2, p0}, La9/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {v1}, Lt9/i1;->J()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_6

    .line 63
    .line 64
    :cond_2
    invoke-static {v0, p1}, Lx9/a;->e(La9/i;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-virtual {v1}, Lt9/i1;->J()Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_4

    .line 76
    .line 77
    :cond_3
    invoke-static {v0, p1}, Lx9/a;->e(La9/i;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    throw p0

    .line 81
    :cond_5
    invoke-interface {p1, p0}, La9/d;->resumeWith(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_6
    :goto_2
    return-void
.end method

.method public static final n(La9/d;)Ljava/lang/String;
    .locals 3

    .line 1
    instance-of v0, p0, Lx9/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_2

    .line 10
    :cond_0
    const/16 v0, 0x40

    .line 11
    .line 12
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lt9/u;->f(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    invoke-static {v1}, Lo9/d;->f(Ljava/lang/Throwable;)Lw8/g;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    invoke-static {v1}, Lw8/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-static {p0}, Lt9/u;->f(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :goto_1
    move-object p0, v1

    .line 78
    check-cast p0, Ljava/lang/String;

    .line 79
    .line 80
    :goto_2
    return-object p0
.end method

.method public static final o(Lc9/c;La9/i;Ljava/lang/Object;)Lt9/i1;
    .locals 2

    .line 1
    instance-of v0, p0, Lc9/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    sget-object v0, Lt9/j1;->a:Lt9/j1;

    .line 8
    .line 9
    invoke-interface {p1, v0}, La9/i;->e(La9/h;)La9/g;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    :cond_1
    instance-of v0, p0, Lt9/z;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    invoke-interface {p0}, Lc9/d;->getCallerFrame()Lc9/d;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_3

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    instance-of v0, p0, Lt9/i1;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    move-object v1, p0

    .line 32
    check-cast v1, Lt9/i1;

    .line 33
    .line 34
    :goto_0
    if-eqz v1, :cond_4

    .line 35
    .line 36
    invoke-virtual {v1, p1, p2}, Lt9/i1;->K(La9/i;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_4
    return-object v1
.end method

.method public static final p(La9/i;Li9/p;Lc9/c;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-interface {p2}, La9/d;->getContext()La9/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    sget-object v2, Lt9/m;->c:Lt9/m;

    .line 8
    .line 9
    invoke-interface {p0, v1, v2}, La9/i;->a(Ljava/lang/Object;Li9/p;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0, p0}, La9/i;->f(La9/i;)La9/i;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v0, p0, v2}, Lt9/u;->e(La9/i;La9/i;Z)La9/i;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :goto_0
    sget-object v1, Lt9/q;->b:Lt9/q;

    .line 32
    .line 33
    invoke-interface {p0, v1}, La9/i;->e(La9/h;)La9/g;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lt9/q0;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-interface {v1}, Lt9/q0;->isActive()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    check-cast v1, Lt9/y0;

    .line 49
    .line 50
    invoke-virtual {v1}, Lt9/y0;->q()Ljava/util/concurrent/CancellationException;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    throw p0

    .line 55
    :cond_2
    :goto_1
    if-ne p0, v0, :cond_3

    .line 56
    .line 57
    new-instance v0, Lx9/r;

    .line 58
    .line 59
    invoke-direct {v0, p0, p2}, Lx9/r;-><init>(La9/i;Lc9/c;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v0, p1}, Lu7/d;->z(Lx9/r;Lx9/r;Li9/p;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_3
    sget-object v1, La9/e;->a:La9/e;

    .line 69
    .line 70
    invoke-interface {p0, v1}, La9/i;->e(La9/h;)La9/g;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-interface {v0, v1}, La9/i;->e(La9/h;)La9/g;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v3, v0}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const/4 v1, 0x0

    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    new-instance v0, Lt9/i1;

    .line 86
    .line 87
    invoke-direct {v0, p0, p2}, Lt9/i1;-><init>(La9/i;Lc9/c;)V

    .line 88
    .line 89
    .line 90
    iget-object p0, v0, Lt9/a;->c:La9/i;

    .line 91
    .line 92
    invoke-static {p0, v1}, Lx9/a;->j(La9/i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    :try_start_0
    invoke-static {v0, v0, p1}, Lu7/d;->z(Lx9/r;Lx9/r;Li9/p;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-static {p0, p2}, Lx9/a;->e(La9/i;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    move-object p0, p1

    .line 104
    goto :goto_3

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    invoke-static {p0, p2}, Lx9/a;->e(La9/i;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_4
    new-instance v0, Lt9/z;

    .line 111
    .line 112
    invoke-direct {v0, p0, p2}, Lx9/r;-><init>(La9/i;Lc9/c;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p1, v0, v0}, Lr4/b;->M(Li9/p;Lt9/a;Lt9/a;)V

    .line 116
    .line 117
    .line 118
    :cond_5
    sget-object p0, Lt9/z;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_b

    .line 125
    .line 126
    const/4 p0, 0x2

    .line 127
    if-ne p1, p0, :cond_a

    .line 128
    .line 129
    invoke-virtual {v0}, Lt9/y0;->u()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    instance-of p1, p0, Lt9/l0;

    .line 134
    .line 135
    if-eqz p1, :cond_6

    .line 136
    .line 137
    move-object v1, p0

    .line 138
    check-cast v1, Lt9/l0;

    .line 139
    .line 140
    :cond_6
    if-eqz v1, :cond_8

    .line 141
    .line 142
    iget-object p1, v1, Lt9/l0;->a:Lt9/k0;

    .line 143
    .line 144
    if-nez p1, :cond_7

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_7
    move-object p0, p1

    .line 148
    :cond_8
    :goto_2
    nop

    .line 149
    instance-of p1, p0, Lt9/k;

    .line 150
    .line 151
    if-nez p1, :cond_9

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_9
    check-cast p0, Lt9/k;

    .line 155
    .line 156
    iget-object p0, p0, Lt9/k;->a:Ljava/lang/Throwable;

    .line 157
    .line 158
    throw p0

    .line 159
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 160
    .line 161
    const-string p1, "Already suspended"

    .line 162
    .line 163
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p0

    .line 167
    :cond_b
    const/4 p1, 0x1

    .line 168
    invoke-virtual {p0, v0, v2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    if-eqz p0, :cond_5

    .line 173
    .line 174
    sget-object p0, Lb9/a;->a:Lb9/a;

    .line 175
    .line 176
    :goto_3
    return-object p0
.end method
