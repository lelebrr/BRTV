.class public final Lcom/tencent/bugly/proguard/k0;
.super Landroid/os/FileObserver;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/tencent/bugly/proguard/ay;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/ay;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/k0;->a:I

    .line 1
    iput-object p1, p0, Lcom/tencent/bugly/proguard/k0;->b:Lcom/tencent/bugly/proguard/ay;

    const/16 p1, 0x8

    const-string v0, "/data/anr/"

    invoke-direct {p0, v0, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/bugly/proguard/ay;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/k0;->a:I

    .line 2
    iput-object p1, p0, Lcom/tencent/bugly/proguard/k0;->b:Lcom/tencent/bugly/proguard/ay;

    const/16 p1, 0x8

    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/tencent/bugly/proguard/k0;->b:Lcom/tencent/bugly/proguard/ay;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    iget v2, p0, Lcom/tencent/bugly/proguard/k0;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v2, p1, Lcom/tencent/bugly/proguard/ay;->e:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    new-array v3, v3, [Ljava/lang/Object;

    .line 18
    .line 19
    aput-object v2, v3, v1

    .line 20
    .line 21
    aput-object p2, v3, v0

    .line 22
    .line 23
    const-string v0, "observe file, dir:%s fileName:%s"

    .line 24
    .line 25
    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    const-string v0, "manual_bugly_trace_"

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    const-string v2, ".txt"

    .line 37
    .line 38
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    iget-object v3, p1, Lcom/tencent/bugly/proguard/ay;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    const-string p1, "proc is not in anr, just ignore"

    .line 53
    .line 54
    new-array p2, v1, [Ljava/lang/Object;

    .line 55
    .line 56
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v3, p1, Lcom/tencent/bugly/proguard/ay;->c:Lcom/tencent/bugly/proguard/aa;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/aa;->a()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    const-string v4, "/"

    .line 67
    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    const-string v3, "Found foreground anr, resend sigquit immediately."

    .line 71
    .line 72
    new-array v5, v1, [Ljava/lang/Object;

    .line 73
    .line 74
    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->resendSigquit()V

    .line 82
    .line 83
    .line 84
    invoke-static {p2, v0, v2}, Lcom/tencent/bugly/proguard/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v5, p1, Lcom/tencent/bugly/proguard/ay;->e:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-static {p1, v2, v3, p2}, Lcom/tencent/bugly/proguard/ay;->a(Lcom/tencent/bugly/proguard/ay;JLjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string p1, "Finish handling one anr."

    .line 112
    .line 113
    new-array p2, v1, [Ljava/lang/Object;

    .line 114
    .line 115
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    const-string v3, "Found background anr, resend sigquit later."

    .line 120
    .line 121
    new-array v5, v1, [Ljava/lang/Object;

    .line 122
    .line 123
    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    invoke-static {p2, v0, v2}, Lcom/tencent/bugly/proguard/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    iget-object v5, p1, Lcom/tencent/bugly/proguard/ay;->e:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-static {p1, v2, v3, p2}, Lcom/tencent/bugly/proguard/ay;->a(Lcom/tencent/bugly/proguard/ay;JLjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const-string p1, "Finish handling one anr, now resend sigquit."

    .line 154
    .line 155
    new-array p2, v1, [Ljava/lang/Object;

    .line 156
    .line 157
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->resendSigquit()V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_3
    const-string p1, "not manual trace file, ignore."

    .line 169
    .line 170
    new-array p2, v1, [Ljava/lang/Object;

    .line 171
    .line 172
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    :goto_0
    return-void

    .line 176
    :pswitch_0
    if-nez p2, :cond_4

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_4
    const-string v2, "/data/anr/"

    .line 180
    .line 181
    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    const-string v2, "watching file %s"

    .line 186
    .line 187
    new-array v3, v0, [Ljava/lang/Object;

    .line 188
    .line 189
    aput-object p2, v3, v1

    .line 190
    .line 191
    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    const-string v2, "trace"

    .line 195
    .line 196
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-nez v2, :cond_5

    .line 201
    .line 202
    const-string p1, "not anr file %s"

    .line 203
    .line 204
    new-array v0, v0, [Ljava/lang/Object;

    .line 205
    .line 206
    aput-object p2, v0, v1

    .line 207
    .line 208
    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/al;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_5
    iget-object p1, p1, Lcom/tencent/bugly/proguard/ay;->d:Lcom/tencent/bugly/proguard/ak;

    .line 213
    .line 214
    new-instance v0, La3/c;

    .line 215
    .line 216
    const/16 v1, 0xb

    .line 217
    .line 218
    invoke-direct {v0, p0, v1, p2}, La3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/ak;->a(Ljava/lang/Runnable;)Z

    .line 222
    .line 223
    .line 224
    :goto_1
    return-void

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
