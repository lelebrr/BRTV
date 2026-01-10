.class final Landroidx/media3/exoplayer/audio/AudioCapabilities$Api23;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api23"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static getAllBluetoothDeviceTypes()Ld7/k2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld7/k2;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    new-instance v3, Ld7/j2;

    .line 5
    .line 6
    const/4 v4, 0x4

    .line 7
    invoke-direct {v3, v4}, Ld7/p1;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/16 v4, 0x8

    .line 11
    .line 12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const/4 v5, 0x7

    .line 17
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    new-array v6, v1, [Ljava/lang/Integer;

    .line 22
    .line 23
    aput-object v4, v6, v0

    .line 24
    .line 25
    aput-object v5, v6, v2

    .line 26
    .line 27
    iget-object v4, v3, Ld7/j2;->d:[Ljava/lang/Object;

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    :goto_0
    if-ge v4, v1, :cond_1

    .line 33
    .line 34
    aget-object v5, v6, v4

    .line 35
    .line 36
    invoke-virtual {v3, v5}, Ld7/j2;->g(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    add-int/2addr v4, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {v6, v1}, Ld7/d0;->b([Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ld7/p1;->e(I)V

    .line 45
    .line 46
    .line 47
    iget-object v4, v3, Ld7/p1;->a:[Ljava/lang/Object;

    .line 48
    .line 49
    iget v5, v3, Ld7/p1;->b:I

    .line 50
    .line 51
    invoke-static {v6, v0, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    .line 53
    .line 54
    iget v4, v3, Ld7/p1;->b:I

    .line 55
    .line 56
    add-int/2addr v4, v1

    .line 57
    iput v4, v3, Ld7/p1;->b:I

    .line 58
    .line 59
    :cond_1
    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 60
    .line 61
    const/16 v5, 0x1f

    .line 62
    .line 63
    if-lt v4, v5, :cond_3

    .line 64
    .line 65
    const/16 v5, 0x1a

    .line 66
    .line 67
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    const/16 v6, 0x1b

    .line 72
    .line 73
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    new-array v7, v1, [Ljava/lang/Integer;

    .line 78
    .line 79
    aput-object v5, v7, v0

    .line 80
    .line 81
    aput-object v6, v7, v2

    .line 82
    .line 83
    iget-object v5, v3, Ld7/j2;->d:[Ljava/lang/Object;

    .line 84
    .line 85
    if-eqz v5, :cond_2

    .line 86
    .line 87
    :goto_1
    if-ge v0, v1, :cond_3

    .line 88
    .line 89
    aget-object v5, v7, v0

    .line 90
    .line 91
    invoke-virtual {v3, v5}, Ld7/j2;->g(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    add-int/2addr v0, v2

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-static {v7, v1}, Ld7/d0;->b([Ljava/lang/Object;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v1}, Ld7/p1;->e(I)V

    .line 100
    .line 101
    .line 102
    iget-object v2, v3, Ld7/p1;->a:[Ljava/lang/Object;

    .line 103
    .line 104
    iget v5, v3, Ld7/p1;->b:I

    .line 105
    .line 106
    invoke-static {v7, v0, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    .line 108
    .line 109
    iget v0, v3, Ld7/p1;->b:I

    .line 110
    .line 111
    add-int/2addr v0, v1

    .line 112
    iput v0, v3, Ld7/p1;->b:I

    .line 113
    .line 114
    :cond_3
    const/16 v0, 0x21

    .line 115
    .line 116
    if-lt v4, v0, :cond_4

    .line 117
    .line 118
    const/16 v0, 0x1e

    .line 119
    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v3, v0}, Ld7/j2;->g(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    invoke-virtual {v3}, Ld7/j2;->i()Ld7/k2;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    return-object v0
.end method

.method public static isBluetoothConnected(Landroid/media/AudioManager;Landroidx/media3/exoplayer/audio/AudioDeviceInfoApi23;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/media/AudioManager;

    .line 10
    .line 11
    invoke-static {p0}, Landroid/support/v4/media/a;->z(Landroid/media/AudioManager;)[Landroid/media/AudioDeviceInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-array p0, v1, [Landroid/media/AudioDeviceInfo;

    .line 17
    .line 18
    iget-object p1, p1, Landroidx/media3/exoplayer/audio/AudioDeviceInfoApi23;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    .line 19
    .line 20
    aput-object p1, p0, v0

    .line 21
    .line 22
    :goto_0
    invoke-static {}, Landroidx/media3/exoplayer/audio/AudioCapabilities$Api23;->getAllBluetoothDeviceTypes()Ld7/k2;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    array-length v2, p0

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_1
    if-ge v3, v2, :cond_2

    .line 29
    .line 30
    aget-object v4, p0, v3

    .line 31
    .line 32
    invoke-static {v4}, Landroid/support/v4/media/a;->c(Landroid/media/AudioDeviceInfo;)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {p1, v4}, Ld7/q1;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    return v1

    .line 47
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    return v0
.end method
