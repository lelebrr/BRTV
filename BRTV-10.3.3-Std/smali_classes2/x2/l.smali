.class public final Lx2/l;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final h:Z


# instance fields
.field public final a:Lb3/x;

.field public final b:Lq/b;

.field public final c:Lz2/e;

.field public final d:Landroidx/appcompat/widget/z3;

.field public final e:Landroidx/appcompat/app/r0;

.field public final f:Lcom/google/android/gms/internal/cast/e0;

.field public final g:La0/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "Engine"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lx2/l;->h:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lz2/e;Lz2/d;La3/f;La3/f;La3/f;La3/f;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx2/l;->c:Lz2/e;

    .line 5
    .line 6
    new-instance v0, Lb/a;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Lb/a;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, La0/f;

    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    invoke-direct {p2, v1}, La0/f;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lx2/l;->g:La0/f;

    .line 19
    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    iput-object p0, p2, La0/f;->e:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    new-instance p2, Lq/b;

    .line 27
    .line 28
    const/16 v1, 0x9

    .line 29
    .line 30
    invoke-direct {p2, v1}, Lq/b;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lx2/l;->b:Lq/b;

    .line 34
    .line 35
    new-instance p2, Lb3/x;

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    invoke-direct {p2, v1}, Lb3/x;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lx2/l;->a:Lb3/x;

    .line 42
    .line 43
    new-instance p2, Landroidx/appcompat/widget/z3;

    .line 44
    .line 45
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v1, Ls2/c;

    .line 49
    .line 50
    const/4 v2, 0x7

    .line 51
    invoke-direct {v1, v2, p2}, Ls2/c;-><init>(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const/16 v2, 0x96

    .line 55
    .line 56
    invoke-static {v2, v1}, Ls3/c;->a(ILs3/a;)Ls/g;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iput-object v1, p2, Landroidx/appcompat/widget/z3;->g:Ljava/lang/Object;

    .line 61
    .line 62
    iput-object p3, p2, Landroidx/appcompat/widget/z3;->a:Ljava/lang/Object;

    .line 63
    .line 64
    iput-object p4, p2, Landroidx/appcompat/widget/z3;->b:Ljava/lang/Object;

    .line 65
    .line 66
    iput-object p5, p2, Landroidx/appcompat/widget/z3;->c:Ljava/lang/Object;

    .line 67
    .line 68
    iput-object p6, p2, Landroidx/appcompat/widget/z3;->d:Ljava/lang/Object;

    .line 69
    .line 70
    iput-object p0, p2, Landroidx/appcompat/widget/z3;->e:Ljava/lang/Object;

    .line 71
    .line 72
    iput-object p0, p2, Landroidx/appcompat/widget/z3;->f:Ljava/lang/Object;

    .line 73
    .line 74
    iput-object p2, p0, Lx2/l;->d:Landroidx/appcompat/widget/z3;

    .line 75
    .line 76
    new-instance p2, Lcom/google/android/gms/internal/cast/e0;

    .line 77
    .line 78
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance p3, Ls2/c;

    .line 82
    .line 83
    const/4 p4, 0x6

    .line 84
    invoke-direct {p3, p4, p2}, Ls2/c;-><init>(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    const/16 p4, 0x96

    .line 88
    .line 89
    invoke-static {p4, p3}, Ls3/c;->a(ILs3/a;)Ls/g;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    iput-object p3, p2, Lcom/google/android/gms/internal/cast/e0;->c:Ljava/lang/Object;

    .line 94
    .line 95
    iput-object v0, p2, Lcom/google/android/gms/internal/cast/e0;->b:Ljava/lang/Object;

    .line 96
    .line 97
    iput-object p2, p0, Lx2/l;->f:Lcom/google/android/gms/internal/cast/e0;

    .line 98
    .line 99
    new-instance p2, Landroidx/appcompat/app/r0;

    .line 100
    .line 101
    invoke-direct {p2}, Landroidx/appcompat/app/r0;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object p2, p0, Lx2/l;->e:Landroidx/appcompat/app/r0;

    .line 105
    .line 106
    iput-object p0, p1, Lz2/e;->d:Lx2/l;

    .line 107
    .line 108
    return-void

    .line 109
    :catchall_0
    move-exception p1

    .line 110
    goto :goto_0

    .line 111
    :catchall_1
    move-exception p1

    .line 112
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    :try_start_4
    throw p1

    .line 114
    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    throw p1
.end method

.method public static d(Ljava/lang/String;JLx2/q;)V
    .locals 1

    .line 1
    const-string v0, " in "

    .line 2
    .line 3
    invoke-static {p0, v0}, La/e;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p1, p2}, Lr3/h;->a(J)D

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "ms, key: "

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "Engine"

    .line 27
    .line 28
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static g(Lx2/x;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lx2/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lx2/r;

    .line 6
    .line 7
    invoke-virtual {p0}, Lx2/r;->e()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v0, "Cannot release anything but an EngineResource"

    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/f;Ljava/lang/Object;Lv2/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;Lx2/k;Lr3/b;ZZLv2/h;ZZLn3/f;Lr3/e;)Ls/g;
    .locals 22

    move-object/from16 v15, p0

    .line 1
    sget-boolean v0, Lx2/l;->h:Z

    if-eqz v0, :cond_0

    sget v0, Lr3/h;->b:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    :goto_0
    move-wide v13, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 3
    :goto_1
    iget-object v0, v15, Lx2/l;->b:Lq/b;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v0, Lx2/q;

    move-object v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p10

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p13

    invoke-direct/range {v1 .. v9}, Lx2/q;-><init>(Ljava/lang/Object;Lv2/e;IILr3/b;Ljava/lang/Class;Ljava/lang/Class;Lv2/h;)V

    .line 6
    monitor-enter p0

    move/from16 v12, p14

    .line 7
    :try_start_0
    invoke-virtual {v15, v0, v12, v13, v14}, Lx2/l;->c(Lx2/q;ZJ)Lx2/r;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v20, v13

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, v0

    .line 8
    invoke-virtual/range {v1 .. v21}, Lx2/l;->h(Lcom/bumptech/glide/f;Ljava/lang/Object;Lv2/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;Lx2/k;Lr3/b;ZZLv2/h;ZZLn3/f;Lr3/e;Lx2/q;J)Ls/g;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 9
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x5

    const/4 v2, 0x0

    move-object/from16 v3, p16

    .line 10
    invoke-virtual {v3, v1, v0, v2}, Ln3/f;->k(Lx2/x;IZ)V

    const/4 v0, 0x0

    return-object v0

    .line 11
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Lx2/q;)Lx2/r;
    .locals 9

    .line 1
    iget-object v0, p0, Lx2/l;->c:Lz2/e;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lr3/j;->a:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lr3/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    move-object v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    :try_start_1
    iget-wide v3, v0, Lr3/j;->c:J

    .line 19
    .line 20
    iget v5, v1, Lr3/i;->b:I

    .line 21
    .line 22
    int-to-long v5, v5

    .line 23
    sub-long/2addr v3, v5

    .line 24
    iput-wide v3, v0, Lr3/j;->c:J

    .line 25
    .line 26
    iget-object v1, v1, Lr3/i;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    :goto_0
    move-object v4, v1

    .line 30
    check-cast v4, Lx2/x;

    .line 31
    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    instance-of v0, v4, Lx2/r;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    move-object v2, v4

    .line 40
    check-cast v2, Lx2/r;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    new-instance v2, Lx2/r;

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    const/4 v6, 0x1

    .line 47
    move-object v3, v2

    .line 48
    move-object v7, p1

    .line 49
    move-object v8, p0

    .line 50
    invoke-direct/range {v3 .. v8}, Lx2/r;-><init>(Lx2/x;ZZLx2/q;Lx2/l;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    if-eqz v2, :cond_3

    .line 54
    .line 55
    invoke-virtual {v2}, Lx2/r;->b()V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lx2/l;->g:La0/f;

    .line 59
    .line 60
    invoke-virtual {v0, p1, v2}, La0/f;->a(Lx2/q;Lx2/r;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-object v2

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    throw p1
.end method

.method public final c(Lx2/q;ZJ)Lx2/r;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object p2, p0, Lx2/l;->g:La0/f;

    .line 6
    .line 7
    monitor-enter p2

    .line 8
    :try_start_0
    iget-object v1, p2, La0/f;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lx2/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    monitor-exit p2

    .line 21
    move-object v2, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lx2/r;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p2, v1}, La0/f;->d(Lx2/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    :goto_0
    monitor-exit p2

    .line 38
    :goto_1
    if-eqz v2, :cond_3

    .line 39
    .line 40
    invoke-virtual {v2}, Lx2/r;->b()V

    .line 41
    .line 42
    .line 43
    :cond_3
    if-eqz v2, :cond_5

    .line 44
    .line 45
    sget-boolean p2, Lx2/l;->h:Z

    .line 46
    .line 47
    if-eqz p2, :cond_4

    .line 48
    .line 49
    const-string p2, "Loaded resource from active resources"

    .line 50
    .line 51
    invoke-static {p2, p3, p4, p1}, Lx2/l;->d(Ljava/lang/String;JLx2/q;)V

    .line 52
    .line 53
    .line 54
    :cond_4
    return-object v2

    .line 55
    :cond_5
    invoke-virtual {p0, p1}, Lx2/l;->b(Lx2/q;)Lx2/r;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    if-eqz p2, :cond_7

    .line 60
    .line 61
    sget-boolean v0, Lx2/l;->h:Z

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    const-string v0, "Loaded resource from cache"

    .line 66
    .line 67
    invoke-static {v0, p3, p4, p1}, Lx2/l;->d(Ljava/lang/String;JLx2/q;)V

    .line 68
    .line 69
    .line 70
    :cond_6
    return-object p2

    .line 71
    :cond_7
    return-object v0

    .line 72
    :goto_2
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    throw p1
.end method

.method public final declared-synchronized e(Lx2/p;Lx2/q;Lx2/r;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-boolean v0, p3, Lx2/r;->a:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lx2/l;->g:La0/f;

    .line 9
    .line 10
    invoke-virtual {v0, p2, p3}, La0/f;->a(Lx2/q;Lx2/r;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-object p3, p0, Lx2/l;->a:Lb3/x;

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p3, p3, Lb3/x;->a:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :cond_1
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p1
.end method

.method public final f(Lx2/q;Lx2/r;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx2/l;->g:La0/f;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, La0/f;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lx2/a;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-object v2, v1, Lx2/a;->c:Lx2/x;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :cond_0
    monitor-exit v0

    .line 23
    iget-boolean v0, p2, Lx2/r;->a:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lx2/l;->c:Lz2/e;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Lr3/j;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lx2/x;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Lx2/l;->e:Landroidx/appcompat/app/r0;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/r0;->e(Lx2/x;Z)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p1
.end method

.method public final h(Lcom/bumptech/glide/f;Ljava/lang/Object;Lv2/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;Lx2/k;Lr3/b;ZZLv2/h;ZZLn3/f;Lr3/e;Lx2/q;J)Ls/g;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-wide/from16 v12, p19

    .line 1
    iget-object v14, v1, Lx2/l;->a:Lb3/x;

    .line 2
    iget-object v14, v14, Lb3/x;->a:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lx2/p;

    if-eqz v14, :cond_1

    .line 4
    invoke-virtual {v14, v9, v10}, Lx2/p;->a(Ln3/f;Lr3/e;)V

    .line 5
    sget-boolean v0, Lx2/l;->h:Z

    if-eqz v0, :cond_0

    .line 6
    const-string v0, "Added to existing load"

    invoke-static {v0, v12, v13, v11}, Lx2/l;->d(Ljava/lang/String;JLx2/q;)V

    .line 7
    :cond_0
    new-instance v0, Ls/g;

    invoke-direct {v0, v1, v9, v14}, Ls/g;-><init>(Lx2/l;Ln3/f;Lx2/p;)V

    return-object v0

    .line 8
    :cond_1
    iget-object v14, v1, Lx2/l;->d:Landroidx/appcompat/widget/z3;

    .line 9
    iget-object v14, v14, Landroidx/appcompat/widget/z3;->g:Ljava/lang/Object;

    check-cast v14, Ls/g;

    .line 10
    invoke-virtual {v14}, Ls/g;->f()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lx2/p;

    .line 11
    monitor-enter v14

    .line 12
    :try_start_0
    iput-object v11, v14, Lx2/p;->k:Lx2/q;

    move/from16 v15, p14

    .line 13
    iput-boolean v15, v14, Lx2/p;->l:Z

    move/from16 v15, p15

    .line 14
    iput-boolean v15, v14, Lx2/p;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit v14

    .line 16
    iget-object v15, v1, Lx2/l;->f:Lcom/google/android/gms/internal/cast/e0;

    .line 17
    iget-object v12, v15, Lcom/google/android/gms/internal/cast/e0;->c:Ljava/lang/Object;

    check-cast v12, Ls/g;

    .line 18
    invoke-virtual {v12}, Ls/g;->f()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lx2/i;

    .line 19
    iget v13, v15, Lcom/google/android/gms/internal/cast/e0;->a:I

    add-int/lit8 v9, v13, 0x1

    iput v9, v15, Lcom/google/android/gms/internal/cast/e0;->a:I

    .line 20
    iget-object v9, v12, Lx2/i;->a:Lx2/g;

    iput-object v0, v9, Lx2/g;->c:Lcom/bumptech/glide/f;

    .line 21
    iput-object v2, v9, Lx2/g;->d:Ljava/lang/Object;

    .line 22
    iput-object v3, v9, Lx2/g;->n:Lv2/e;

    .line 23
    iput v4, v9, Lx2/g;->e:I

    .line 24
    iput v5, v9, Lx2/g;->f:I

    .line 25
    iput-object v7, v9, Lx2/g;->p:Lx2/k;

    move-object/from16 v15, p6

    .line 26
    iput-object v15, v9, Lx2/g;->g:Ljava/lang/Class;

    .line 27
    iget-object v15, v12, Lx2/i;->d:Lb/a;

    iput-object v15, v9, Lx2/g;->h:Lb/a;

    move-object/from16 v15, p7

    .line 28
    iput-object v15, v9, Lx2/g;->k:Ljava/lang/Class;

    .line 29
    iput-object v6, v9, Lx2/g;->o:Lcom/bumptech/glide/g;

    .line 30
    iput-object v8, v9, Lx2/g;->i:Lv2/h;

    move-object/from16 v15, p10

    .line 31
    iput-object v15, v9, Lx2/g;->j:Lr3/b;

    move/from16 v15, p11

    .line 32
    iput-boolean v15, v9, Lx2/g;->q:Z

    move/from16 v15, p12

    .line 33
    iput-boolean v15, v9, Lx2/g;->r:Z

    .line 34
    iput-object v0, v12, Lx2/i;->h:Lcom/bumptech/glide/f;

    .line 35
    iput-object v3, v12, Lx2/i;->i:Lv2/e;

    .line 36
    iput-object v6, v12, Lx2/i;->j:Lcom/bumptech/glide/g;

    .line 37
    iput-object v11, v12, Lx2/i;->k:Lx2/q;

    .line 38
    iput v4, v12, Lx2/i;->l:I

    .line 39
    iput v5, v12, Lx2/i;->m:I

    .line 40
    iput-object v7, v12, Lx2/i;->n:Lx2/k;

    .line 41
    iput-object v8, v12, Lx2/i;->o:Lv2/h;

    .line 42
    iput-object v14, v12, Lx2/i;->p:Lx2/p;

    .line 43
    iput v13, v12, Lx2/i;->q:I

    const/4 v0, 0x1

    .line 44
    iput v0, v12, Lx2/i;->D:I

    .line 45
    iput-object v2, v12, Lx2/i;->s:Ljava/lang/Object;

    .line 46
    iget-object v0, v1, Lx2/l;->a:Lb3/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    iget-object v0, v0, Lb3/x;->a:Ljava/util/HashMap;

    .line 48
    invoke-virtual {v0, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p16

    .line 49
    invoke-virtual {v14, v0, v10}, Lx2/p;->a(Ln3/f;Lr3/e;)V

    .line 50
    invoke-virtual {v14, v12}, Lx2/p;->k(Lx2/i;)V

    .line 51
    sget-boolean v2, Lx2/l;->h:Z

    if-eqz v2, :cond_2

    .line 52
    const-string v2, "Started new load"

    move-wide/from16 v3, p19

    invoke-static {v2, v3, v4, v11}, Lx2/l;->d(Ljava/lang/String;JLx2/q;)V

    .line 53
    :cond_2
    new-instance v2, Ls/g;

    invoke-direct {v2, v1, v0, v14}, Ls/g;-><init>(Lx2/l;Ln3/f;Lx2/p;)V

    return-object v2

    :catchall_0
    move-exception v0

    .line 54
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
