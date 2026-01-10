.class public abstract Ly4/g;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ll6/h;

.field public final d:Ly4/b;

.field public final e:Lz4/b;

.field public final f:Landroid/os/Looper;

.field public final g:I

.field public final h:Lz4/a;

.field public final i:Lz4/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ll6/h;Ly4/b;Ly4/f;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Null context is not permitted."

    .line 5
    .line 6
    invoke-static {p1, v0}, Lb5/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "Api must not be null."

    .line 10
    .line 11
    invoke-static {p2, v0}, Lb5/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 15
    .line 16
    invoke-static {p4, v0}, Lb5/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "The provided context did not have an application context."

    .line 24
    .line 25
    invoke-static {v0, v1}, Lb5/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Ly4/g;->a:Landroid/content/Context;

    .line 29
    .line 30
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v2, 0x1e

    .line 33
    .line 34
    if-lt v1, v2, :cond_0

    .line 35
    .line 36
    invoke-static {p1}, Lq1/t0;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    :goto_0
    iput-object p1, p0, Ly4/g;->b:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p2, p0, Ly4/g;->c:Ll6/h;

    .line 45
    .line 46
    iput-object p3, p0, Ly4/g;->d:Ly4/b;

    .line 47
    .line 48
    iget-object v1, p4, Ly4/f;->b:Landroid/os/Looper;

    .line 49
    .line 50
    iput-object v1, p0, Ly4/g;->f:Landroid/os/Looper;

    .line 51
    .line 52
    new-instance v1, Lz4/b;

    .line 53
    .line 54
    invoke-direct {v1, p2, p3, p1}, Lz4/b;-><init>(Ll6/h;Ly4/b;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Ly4/g;->e:Lz4/b;

    .line 58
    .line 59
    new-instance p1, Lz4/p;

    .line 60
    .line 61
    invoke-static {v0}, Lz4/e;->f(Landroid/content/Context;)Lz4/e;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Ly4/g;->i:Lz4/e;

    .line 66
    .line 67
    iget-object p2, p1, Lz4/e;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    iput p2, p0, Ly4/g;->g:I

    .line 74
    .line 75
    iget-object p2, p4, Ly4/f;->a:Lz4/a;

    .line 76
    .line 77
    iput-object p2, p0, Ly4/g;->h:Lz4/a;

    .line 78
    .line 79
    iget-object p1, p1, Lz4/e;->m:Lcom/google/android/gms/internal/cast/x0;

    .line 80
    .line 81
    const/4 p2, 0x7

    .line 82
    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    .line 88
    .line 89
    return-void
.end method


# virtual methods
.method public final a()La1/b;
    .locals 4

    .line 1
    new-instance v0, La1/b;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, La1/b;-><init>(IZ)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, v0, La1/b;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Lp/f;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    new-instance v2, Lp/f;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v2, v3}, Lp/f;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v2, v0, La1/b;->b:Ljava/lang/Object;

    .line 26
    .line 27
    :cond_0
    iget-object v2, v0, La1/b;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Lp/f;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Lp/f;->addAll(Ljava/util/Collection;)Z

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Ly4/g;->a:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iput-object v2, v0, La1/b;->d:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput-object v1, v0, La1/b;->c:Ljava/lang/Object;

    .line 51
    .line 52
    return-object v0
.end method

.method public final b(Lv4/f;)Lz4/h;
    .locals 4

    .line 1
    iget-object v0, p0, Ly4/g;->f:Landroid/os/Looper;

    .line 2
    .line 3
    const-string v1, "Listener must not be null"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lb5/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "Looper must not be null"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lb5/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lz4/h;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcom/google/android/gms/internal/cast/x0;

    .line 19
    .line 20
    const/4 v3, 0x5

    .line 21
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/cast/x0;-><init>(Landroid/os/Looper;I)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lz4/g;

    .line 25
    .line 26
    const-string v2, "castDeviceControllerListenerKey"

    .line 27
    .line 28
    invoke-static {v2}, Lb5/l;->c(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p1}, Lz4/g;-><init>(Lv4/f;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, v1, Lz4/h;->a:Lz4/g;

    .line 35
    .line 36
    return-object v1
.end method

.method public final c(ILc6/c;)Lw5/g;
    .locals 4

    .line 1
    new-instance v0, Lw5/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lw5/d;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ly4/g;->i:Lz4/e;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget v2, p2, Lc6/c;->a:I

    .line 12
    .line 13
    invoke-virtual {v1, v0, v2, p0}, Lz4/e;->e(Lw5/d;ILy4/g;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lz4/y;

    .line 17
    .line 18
    iget-object v3, p0, Ly4/g;->h:Lz4/a;

    .line 19
    .line 20
    invoke-direct {v2, p1, p2, v0, v3}, Lz4/y;-><init>(ILc6/c;Lw5/d;Lz4/a;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, v1, Lz4/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    new-instance p2, Lz4/t;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-direct {p2, v2, p1, p0}, Lz4/t;-><init>(Lz4/q;ILy4/g;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, v1, Lz4/e;->m:Lcom/google/android/gms/internal/cast/x0;

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 42
    .line 43
    .line 44
    iget-object p1, v0, Lw5/d;->a:Lw5/g;

    .line 45
    .line 46
    return-object p1
.end method
