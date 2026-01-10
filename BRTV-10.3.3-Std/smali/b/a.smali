.class public final Lb/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lr3/g;


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lb/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lz2/a;
    .locals 5

    .line 1
    iget-object v0, p0, Lb/a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lz2/a;

    .line 4
    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lb/a;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lz2/a;

    .line 11
    .line 12
    if-nez v0, :cond_5

    .line 13
    .line 14
    iget-object v0, p0, Lb/a;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lz2/d;

    .line 17
    .line 18
    iget-object v1, v0, Lz2/d;->b:La4/k;

    .line 19
    .line 20
    iget v2, v1, La4/k;->a:I

    .line 21
    .line 22
    packed-switch v2, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    iget-object v1, v1, La4/k;->b:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    :goto_0
    const/4 v1, 0x0

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    new-instance v2, Ljava/io/File;

    .line 36
    .line 37
    const-string v3, "image_manager_disk_cache"

    .line 38
    .line 39
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_1
    move-object v1, v2

    .line 43
    goto :goto_2

    .line 44
    :pswitch_0
    iget-object v1, v1, La4/k;->b:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    new-instance v2, Ljava/io/File;

    .line 54
    .line 55
    const-string v3, "image_manager_disk_cache"

    .line 56
    .line 57
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :goto_2
    const/4 v2, 0x0

    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_3

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    :cond_3
    new-instance v2, Lz2/c;

    .line 78
    .line 79
    iget-wide v3, v0, Lz2/d;->a:J

    .line 80
    .line 81
    invoke-direct {v2, v1, v3, v4}, Lz2/c;-><init>(Ljava/io/File;J)V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_3
    iput-object v2, p0, Lb/a;->a:Ljava/lang/Object;

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    goto :goto_5

    .line 89
    :cond_5
    :goto_4
    iget-object v0, p0, Lb/a;->a:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Lz2/a;

    .line 92
    .line 93
    if-nez v0, :cond_6

    .line 94
    .line 95
    new-instance v0, Lq1/f0;

    .line 96
    .line 97
    const/16 v1, 0xb

    .line 98
    .line 99
    invoke-direct {v0, v1}, Lq1/f0;-><init>(I)V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lb/a;->a:Ljava/lang/Object;

    .line 103
    .line 104
    :cond_6
    monitor-exit p0

    .line 105
    goto :goto_6

    .line 106
    :goto_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw v0

    .line 108
    :cond_7
    :goto_6
    iget-object v0, p0, Lb/a;->a:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Lz2/a;

    .line 111
    .line 112
    return-object v0

    .line 113
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lb/a;->a:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lb/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lr3/g;

    .line 13
    .line 14
    invoke-interface {v0}, Lr3/g;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Argument must not be null"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lr3/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lb/a;->a:Ljava/lang/Object;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    monitor-exit p0

    .line 29
    goto :goto_2

    .line 30
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v0

    .line 32
    :cond_1
    :goto_2
    iget-object v0, p0, Lb/a;->a:Ljava/lang/Object;

    .line 33
    .line 34
    return-object v0
.end method
