.class public final Lc2/e;
.super Lj9/j;
.source "MyApplication"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc2/g;


# direct methods
.method public synthetic constructor <init>(Lc2/g;I)V
    .locals 0

    .line 1
    iput p2, p0, Lc2/e;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lc2/e;->b:Lc2/g;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lj9/j;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p0, Lc2/e;->a:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v2, Lr2/k;->a:Lr2/k;

    .line 9
    .line 10
    iget-object v0, p0, Lc2/e;->b:Lc2/g;

    .line 11
    .line 12
    iget-object v0, v0, Lc2/g;->a:Landroid/content/Context;

    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    sget-object v3, Lr2/k;->b:Le2/k;

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    new-instance v3, Le2/a;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v4, Lokio/FileSystem;->SYSTEM:Lokio/FileSystem;

    .line 25
    .line 26
    iput-object v4, v3, Le2/a;->b:Lokio/FileSystem;

    .line 27
    .line 28
    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    iput-wide v4, v3, Le2/a;->c:D

    .line 34
    .line 35
    const-wide/32 v4, 0xa00000

    .line 36
    .line 37
    .line 38
    iput-wide v4, v3, Le2/a;->d:J

    .line 39
    .line 40
    const-wide/32 v4, 0xfa00000

    .line 41
    .line 42
    .line 43
    iput-wide v4, v3, Le2/a;->e:J

    .line 44
    .line 45
    sget-object v4, Lt9/b0;->b:Lz9/c;

    .line 46
    .line 47
    iput-object v4, v3, Le2/a;->f:Lz9/c;

    .line 48
    .line 49
    sget-object v4, Lr2/f;->a:[Landroid/graphics/Bitmap$Config;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lg9/a;->p(Ljava/io/File;)Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v4, Lokio/Path;->Companion:Lokio/Path$Companion;

    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    const/4 v6, 0x1

    .line 68
    invoke-static {v4, v0, v1, v6, v5}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/io/File;ZILjava/lang/Object;)Lokio/Path;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, v3, Le2/a;->a:Lokio/Path;

    .line 73
    .line 74
    invoke-virtual {v3}, Le2/a;->a()Le2/k;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    sput-object v3, Lr2/k;->b:Le2/k;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    const-string v1, "cacheDir == null"

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_1
    :goto_0
    monitor-exit v2

    .line 92
    return-object v3

    .line 93
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    throw v0

    .line 95
    :pswitch_0
    const-class v2, Landroid/app/ActivityManager;

    .line 96
    .line 97
    iget-object v3, p0, Lc2/e;->b:Lc2/g;

    .line 98
    .line 99
    iget-object v3, v3, Lc2/g;->a:Landroid/content/Context;

    .line 100
    .line 101
    sget-object v4, Lr2/f;->a:[Landroid/graphics/Bitmap$Config;

    .line 102
    .line 103
    const-wide v4, 0x3fc999999999999aL    # 0.2

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    :try_start_2
    invoke-static {v3, v2}, Lu7/d;->o(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-static {v6}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    check-cast v6, Landroid/app/ActivityManager;

    .line 116
    .line 117
    invoke-virtual {v6}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 118
    .line 119
    .line 120
    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 121
    if-eqz v6, :cond_2

    .line 122
    .line 123
    const-wide v4, 0x3fc3333333333333L    # 0.15

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    :catch_0
    :cond_2
    new-instance v6, Lc6/b;

    .line 129
    .line 130
    invoke-direct {v6, v0}, Lc6/b;-><init>(I)V

    .line 131
    .line 132
    .line 133
    const-wide/16 v7, 0x0

    .line 134
    .line 135
    cmpl-double v9, v4, v7

    .line 136
    .line 137
    if-lez v9, :cond_4

    .line 138
    .line 139
    sget-object v1, Lr2/f;->a:[Landroid/graphics/Bitmap$Config;

    .line 140
    .line 141
    :try_start_3
    invoke-static {v3, v2}, Lu7/d;->o(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {v1}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    check-cast v1, Landroid/app/ActivityManager;

    .line 149
    .line 150
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 155
    .line 156
    const/high16 v3, 0x100000

    .line 157
    .line 158
    and-int/2addr v2, v3

    .line 159
    if-eqz v2, :cond_3

    .line 160
    .line 161
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    goto :goto_2

    .line 166
    :cond_3
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 167
    .line 168
    .line 169
    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 170
    goto :goto_2

    .line 171
    :catch_1
    const/16 v1, 0x100

    .line 172
    .line 173
    :goto_2
    int-to-double v1, v1

    .line 174
    mul-double v4, v4, v1

    .line 175
    .line 176
    const/16 v1, 0x400

    .line 177
    .line 178
    int-to-double v1, v1

    .line 179
    mul-double v4, v4, v1

    .line 180
    .line 181
    mul-double v4, v4, v1

    .line 182
    .line 183
    double-to-int v1, v4

    .line 184
    :cond_4
    if-lez v1, :cond_5

    .line 185
    .line 186
    new-instance v0, La7/f;

    .line 187
    .line 188
    invoke-direct {v0, v1, v6}, La7/f;-><init>(ILc6/b;)V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_5
    new-instance v1, Lj7/c;

    .line 193
    .line 194
    invoke-direct {v1, v0, v6}, Lj7/c;-><init>(ILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    move-object v0, v1

    .line 198
    :goto_3
    new-instance v1, Lk2/b;

    .line 199
    .line 200
    invoke-direct {v1, v0, v6}, Lk2/b;-><init>(Lk2/f;Lc6/b;)V

    .line 201
    .line 202
    .line 203
    return-object v1

    .line 204
    nop

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
