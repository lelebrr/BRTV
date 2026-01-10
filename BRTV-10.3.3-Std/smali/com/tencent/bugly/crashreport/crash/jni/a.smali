.class public final Lcom/tencent/bugly/crashreport/crash/jni/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    .line 1
    const/4 v0, 0x1

    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    iget-object v2, v1, Lcom/tencent/bugly/crashreport/crash/jni/a;->a:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    .line 5
    .line 6
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const-string v4, "native_record_lock"

    .line 11
    .line 12
    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/ap;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v5, 0x0

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    const-string v0, "[Native] Failed to lock file for handling native crash record."

    .line 20
    .line 21
    new-array v2, v5, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    const-string v3, "false"

    .line 34
    .line 35
    invoke-static {v2, v3}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->b()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->b(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-static {v3, v6, v7}, Lcom/tencent/bugly/proguard/be;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    const-string v6, "[Native] Get crash from native record."

    .line 57
    .line 58
    new-array v7, v5, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/proguard/as;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v6, v3, v0}, Lcom/tencent/bugly/proguard/as;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Z)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-nez v6, :cond_2

    .line 72
    .line 73
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/proguard/as;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v6, v3, v5}, Lcom/tencent/bugly/proguard/as;->b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Z)V

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->b()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v5, v3}, Lcom/tencent/bugly/proguard/be;->a(ZLjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-static {}, Lcom/tencent/bugly/proguard/ap;->b()J

    .line 88
    .line 89
    .line 90
    move-result-wide v6

    .line 91
    sget-wide v8, Lcom/tencent/bugly/proguard/at;->j:J

    .line 92
    .line 93
    sub-long/2addr v6, v8

    .line 94
    invoke-static {}, Lcom/tencent/bugly/proguard/ap;->b()J

    .line 95
    .line 96
    .line 97
    move-result-wide v8

    .line 98
    const-wide/32 v10, 0x5265c00

    .line 99
    .line 100
    .line 101
    add-long/2addr v8, v10

    .line 102
    new-instance v3, Ljava/io/File;

    .line 103
    .line 104
    sget-object v10, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a:Ljava/lang/String;

    .line 105
    .line 106
    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    if-eqz v10, :cond_8

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-eqz v10, :cond_8

    .line 120
    .line 121
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    if-eqz v3, :cond_8

    .line 126
    .line 127
    array-length v10, v3

    .line 128
    if-nez v10, :cond_4

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    new-instance v10, La0/e;

    .line 132
    .line 133
    const/4 v11, 0x3

    .line 134
    invoke-direct {v10, v11}, La0/e;-><init>(I)V

    .line 135
    .line 136
    .line 137
    invoke-static {v3, v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 138
    .line 139
    .line 140
    array-length v10, v3

    .line 141
    const-wide/16 v11, 0x0

    .line 142
    .line 143
    const/4 v13, 0x0

    .line 144
    const/4 v14, 0x0

    .line 145
    const/4 v15, 0x0

    .line 146
    :goto_0
    if-ge v13, v10, :cond_7

    .line 147
    .line 148
    aget-object v16, v3, v13

    .line 149
    .line 150
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    .line 151
    .line 152
    .line 153
    move-result-wide v17

    .line 154
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    .line 155
    .line 156
    .line 157
    move-result-wide v19

    .line 158
    add-long v11, v11, v19

    .line 159
    .line 160
    cmp-long v19, v17, v6

    .line 161
    .line 162
    if-ltz v19, :cond_5

    .line 163
    .line 164
    cmp-long v19, v17, v8

    .line 165
    .line 166
    if-gez v19, :cond_5

    .line 167
    .line 168
    sget-wide v17, Lcom/tencent/bugly/proguard/at;->i:J

    .line 169
    .line 170
    cmp-long v19, v11, v17

    .line 171
    .line 172
    if-ltz v19, :cond_6

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    goto :goto_2

    .line 177
    :cond_5
    :goto_1
    const-string v5, "[Native] Delete record file: %s"

    .line 178
    .line 179
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v18

    .line 183
    new-array v1, v0, [Ljava/lang/Object;

    .line 184
    .line 185
    const/16 v17, 0x0

    .line 186
    .line 187
    aput-object v18, v1, v17

    .line 188
    .line 189
    invoke-static {v5, v1}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    add-int/2addr v14, v0

    .line 193
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_6

    .line 198
    .line 199
    add-int/2addr v15, v0

    .line 200
    :cond_6
    add-int/2addr v13, v0

    .line 201
    move-object/from16 v1, p0

    .line 202
    .line 203
    const/4 v5, 0x0

    .line 204
    goto :goto_0

    .line 205
    :cond_7
    const-string v1, "[Native] Number of record files overdue: %d, has deleted: %d"

    .line 206
    .line 207
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    const/4 v6, 0x2

    .line 216
    new-array v6, v6, [Ljava/lang/Object;

    .line 217
    .line 218
    const/4 v7, 0x0

    .line 219
    aput-object v3, v6, v7

    .line 220
    .line 221
    aput-object v5, v6, v0

    .line 222
    .line 223
    invoke-static {v1, v6}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .line 225
    .line 226
    goto :goto_3

    .line 227
    :goto_2
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    .line 228
    .line 229
    .line 230
    :cond_8
    :goto_3
    invoke-static {v2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/ap;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    return-void
.end method
