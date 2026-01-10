.class public final Le2/a;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public a:Lokio/Path;

.field public b:Lokio/FileSystem;

.field public c:D

.field public d:J

.field public e:J

.field public f:Lz9/c;


# virtual methods
.method public final a()Le2/k;
    .locals 9

    .line 1
    iget-wide v0, p0, Le2/a;->d:J

    .line 2
    .line 3
    iget-object v6, p0, Le2/a;->a:Lokio/Path;

    .line 4
    .line 5
    if-eqz v6, :cond_4

    .line 6
    .line 7
    iget-wide v2, p0, Le2/a;->c:D

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    cmpl-double v7, v2, v4

    .line 12
    .line 13
    if-lez v7, :cond_3

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v6}, Lokio/Path;->toFile()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    new-instance v5, Landroid/os/StatFs;

    .line 27
    .line 28
    invoke-direct {v5, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    long-to-double v7, v7

    .line 36
    mul-double v2, v2, v7

    .line 37
    .line 38
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    long-to-double v4, v4

    .line 43
    mul-double v2, v2, v4

    .line 44
    .line 45
    double-to-long v2, v2

    .line 46
    iget-wide v4, p0, Le2/a;->e:J

    .line 47
    .line 48
    cmp-long v7, v0, v4

    .line 49
    .line 50
    if-gtz v7, :cond_2

    .line 51
    .line 52
    cmp-long v7, v2, v0

    .line 53
    .line 54
    if-gez v7, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    cmp-long v0, v2, v4

    .line 58
    .line 59
    if-lez v0, :cond_1

    .line 60
    .line 61
    move-wide v0, v4

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move-wide v0, v2

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v7, "Cannot coerce value to an empty range: maximum "

    .line 70
    .line 71
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v4, " is less than minimum "

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const/16 v4, 0x2e

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :catch_0
    :goto_0
    move-wide v3, v0

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    const-wide/16 v0, 0x0

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :goto_1
    new-instance v0, Le2/k;

    .line 104
    .line 105
    iget-object v7, p0, Le2/a;->f:Lz9/c;

    .line 106
    .line 107
    iget-object v5, p0, Le2/a;->b:Lokio/FileSystem;

    .line 108
    .line 109
    move-object v2, v0

    .line 110
    invoke-direct/range {v2 .. v7}, Le2/k;-><init>(JLokio/FileSystem;Lokio/Path;Lz9/c;)V

    .line 111
    .line 112
    .line 113
    return-object v0

    .line 114
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 115
    .line 116
    const-string v1, "directory == null"

    .line 117
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v0
.end method
