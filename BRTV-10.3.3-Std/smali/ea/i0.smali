.class public final Lea/i0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:Lorg/bitspark/android/Spark;


# direct methods
.method public constructor <init>(Lorg/bitspark/android/Spark;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lea/i0;->a:Lorg/bitspark/android/Spark;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lea/i0;->a:Lorg/bitspark/android/Spark;

    .line 2
    .line 3
    iget-object v0, p1, Lorg/bitspark/android/Spark;->L1:Lra/a;

    .line 4
    .line 5
    invoke-interface {v0}, Lra/a;->getCurrentPosition()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sget v2, Lorg/bitspark/android/Spark;->m2:I

    .line 10
    .line 11
    if-nez v2, :cond_4

    .line 12
    .line 13
    const-string v2, "iqHu21hv\n"

    .line 14
    .line 15
    const-string v3, "yPKjujEBlOM=\n"

    .line 16
    .line 17
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "l04/87tbI8SWBzT4l2In0Y1CL/+7Y2qPzwl1\n"

    .line 22
    .line 23
    const-string v4, "4SdbltQNSqE=\n"

    .line 24
    .line 25
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    sget-boolean v4, Lorg/bitspark/android/utils/m;->b:Z

    .line 30
    .line 31
    invoke-static {v2, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v2, "I/M4d7gG\n"

    .line 35
    .line 36
    const-string v3, "YaB1FtFoMZc=\n"

    .line 37
    .line 38
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v4, "F7xLU7KvdmkW9UBYnpZyfA2wW1+ylz98DqZGQrSWcePdWktDr5hrZQ67FRY=\n"

    .line 48
    .line 49
    const-string v5, "YdUvNt35Hww=\n"

    .line 50
    .line 51
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v4, "4YJb\n"

    .line 62
    .line 63
    const-string v5, "Dj7UPocwf8g=\n"

    .line 64
    .line 65
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v4, p1, Lorg/bitspark/android/Spark;->F1:I

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {v2, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    iput-wide v2, p1, Lorg/bitspark/android/Spark;->i1:J

    .line 89
    .line 90
    invoke-virtual {p1}, Lorg/bitspark/android/Spark;->V()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_0

    .line 95
    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    iput-wide v0, p1, Lorg/bitspark/android/Spark;->i1:J

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_0
    iget-object v2, p1, Lorg/bitspark/android/Spark;->E1:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 104
    .line 105
    sget-object v3, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSPALYBACK:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 106
    .line 107
    if-eq v2, v3, :cond_2

    .line 108
    .line 109
    sget-object v3, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSVOD:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 110
    .line 111
    if-eq v2, v3, :cond_2

    .line 112
    .line 113
    sget-object v3, Lorg/bitspark/android/Constants$VIDEO_TYPE;->STATIC:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 114
    .line 115
    if-ne v2, v3, :cond_1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    const-wide/16 v2, 0x0

    .line 119
    .line 120
    cmp-long v4, v0, v2

    .line 121
    .line 122
    if-eqz v4, :cond_4

    .line 123
    .line 124
    iget v2, p1, Lorg/bitspark/android/Spark;->F1:I

    .line 125
    .line 126
    int-to-long v2, v2

    .line 127
    cmp-long v4, v2, v0

    .line 128
    .line 129
    if-eqz v4, :cond_4

    .line 130
    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    .line 133
    .line 134
    move-result-wide v2

    .line 135
    iput-wide v2, p1, Lorg/bitspark/android/Spark;->i1:J

    .line 136
    .line 137
    iput-wide v0, p1, Lorg/bitspark/android/Spark;->G1:J

    .line 138
    .line 139
    sget-object p1, Lorg/bitspark/android/Spark;->k2:Landroid/widget/VideoView;

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_2
    :goto_0
    const-string v0, "HNp1JfFi\n"

    .line 146
    .line 147
    const-string v1, "Xok4RJgME4U=\n"

    .line 148
    .line 149
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v2, "2JLRnzS7D9nZ28aONJ020M+C15s4hkbq57/wtQS5P+zr2w==\n"

    .line 159
    .line 160
    const-string v3, "rvu1+lvtZrw=\n"

    .line 161
    .line 162
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget-object v2, p1, Lorg/bitspark/android/Spark;->E1:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Lorg/bitspark/android/Spark;->o0()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Lorg/bitspark/android/Spark;->j0()V

    .line 185
    .line 186
    .line 187
    iget-object v0, p1, Lorg/bitspark/android/Spark;->L1:Lra/a;

    .line 188
    .line 189
    invoke-interface {v0}, Lra/a;->c()V

    .line 190
    .line 191
    .line 192
    iget-object v0, p1, Lorg/bitspark/android/Spark;->Y:Landroid/os/Bundle;

    .line 193
    .line 194
    invoke-static {p1, v0}, Lorg/bitspark/android/Spark;->D(Lorg/bitspark/android/Spark;Landroid/os/Bundle;)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_3

    .line 199
    .line 200
    return-void

    .line 201
    :cond_3
    const/4 v0, 0x1

    .line 202
    invoke-virtual {p1, v0}, Lorg/bitspark/android/Spark;->F0(Z)V

    .line 203
    .line 204
    .line 205
    :cond_4
    :goto_1
    return-void
.end method
