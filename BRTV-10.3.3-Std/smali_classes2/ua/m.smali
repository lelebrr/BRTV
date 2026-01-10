.class public final Lua/m;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final b:[La/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lua/m;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    new-array v0, v0, [La/q;

    .line 10
    .line 11
    sput-object v0, Lua/m;->b:[La/q;

    .line 12
    .line 13
    return-void
.end method

.method public static a(La/q;)V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, La/q;->f:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v1, Ljava/lang/Class;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 7
    .line 8
    .line 9
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    iget-object v1, p0, La/q;->f:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Ljava/lang/Class;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-boolean v0, p0, La/q;->a:Z

    .line 20
    .line 21
    :goto_0
    array-length v2, v1

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_1
    if-ge v4, v2, :cond_4

    .line 25
    .line 26
    aget-object v6, v1, v4

    .line 27
    .line 28
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    and-int/lit8 v7, v5, 0x1

    .line 33
    .line 34
    if-eqz v7, :cond_3

    .line 35
    .line 36
    and-int/lit16 v5, v5, 0x1448

    .line 37
    .line 38
    if-nez v5, :cond_3

    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    array-length v7, v5

    .line 45
    if-ne v7, v0, :cond_3

    .line 46
    .line 47
    const-class v7, Lua/j;

    .line 48
    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Lua/j;

    .line 54
    .line 55
    if-eqz v7, :cond_3

    .line 56
    .line 57
    aget-object v8, v5, v3

    .line 58
    .line 59
    iget-object v5, p0, La/q;->c:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v5, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-virtual {v5, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    if-nez v9, :cond_0

    .line 68
    .line 69
    const/4 v5, 0x1

    .line 70
    goto :goto_3

    .line 71
    :cond_0
    instance-of v10, v9, Ljava/lang/reflect/Method;

    .line 72
    .line 73
    if-eqz v10, :cond_2

    .line 74
    .line 75
    check-cast v9, Ljava/lang/reflect/Method;

    .line 76
    .line 77
    invoke-virtual {p0, v9, v8}, La/q;->b(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-eqz v9, :cond_1

    .line 82
    .line 83
    invoke-virtual {v5, v8, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_2
    :goto_2
    invoke-virtual {p0, v6, v8}, La/q;->b(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    :goto_3
    if-eqz v5, :cond_3

    .line 98
    .line 99
    invoke-interface {v7}, Lua/j;->threadMode()Lorg/greenrobot/eventbus/ThreadMode;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    iget-object v5, p0, La/q;->b:Ljava/lang/Object;

    .line 104
    .line 105
    move-object v11, v5

    .line 106
    check-cast v11, Ljava/util/ArrayList;

    .line 107
    .line 108
    new-instance v12, Lua/l;

    .line 109
    .line 110
    invoke-interface {v7}, Lua/j;->priority()I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    invoke-interface {v7}, Lua/j;->sticky()Z

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    move-object v5, v12

    .line 119
    move-object v7, v8

    .line 120
    move-object v8, v9

    .line 121
    move v9, v10

    .line 122
    move v10, v13

    .line 123
    invoke-direct/range {v5 .. v10}, Lua/l;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    return-void
.end method

.method public static b(La/q;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, La/q;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, La/q;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, La/q;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, La/q;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, La/q;->e:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, La/q;->f:Ljava/lang/Object;

    .line 41
    .line 42
    iput-boolean v2, p0, La/q;->a:Z

    .line 43
    .line 44
    sget-object v1, Lua/m;->b:[La/q;

    .line 45
    .line 46
    monitor-enter v1

    .line 47
    :goto_0
    const/4 v3, 0x4

    .line 48
    if-ge v2, v3, :cond_1

    .line 49
    .line 50
    :try_start_0
    sget-object v3, Lua/m;->b:[La/q;

    .line 51
    .line 52
    aget-object v4, v3, v2

    .line 53
    .line 54
    if-nez v4, :cond_0

    .line 55
    .line 56
    aput-object p0, v3, v2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_2

    .line 61
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    :goto_1
    monitor-exit v1

    .line 65
    return-object v0

    .line 66
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method

.method public static c()La/q;
    .locals 5

    .line 1
    sget-object v0, Lua/m;->b:[La/q;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    const/4 v2, 0x4

    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    :try_start_0
    sget-object v2, Lua/m;->b:[La/q;

    .line 9
    .line 10
    aget-object v3, v2, v1

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v4, v2, v1

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v3

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    new-instance v0, La/q;

    .line 26
    .line 27
    invoke-direct {v0}, La/q;-><init>()V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v1
.end method
