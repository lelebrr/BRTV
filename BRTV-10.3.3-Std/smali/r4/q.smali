.class public final Lr4/q;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lr4/s;

.field public final synthetic b:Lr4/s;

.field public final synthetic c:Lr4/g;


# direct methods
.method public constructor <init>(Lr4/g;Lr4/s;Lr4/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lr4/q;->a:Lr4/s;

    .line 5
    .line 6
    iput-object p3, p0, Lr4/q;->b:Lr4/s;

    .line 7
    .line 8
    iput-object p1, p0, Lr4/q;->c:Lr4/g;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 1
    iget-object p1, p0, Lr4/q;->c:Lr4/g;

    .line 2
    .line 3
    iget-boolean p2, p1, Lr4/g;->k0:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p1, Lr4/g;->o0:Landroid/app/AlertDialog;

    .line 9
    .line 10
    if-eqz p2, :cond_c

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/app/Dialog;->cancel()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p1, Lr4/g;->o0:Landroid/app/AlertDialog;

    .line 16
    .line 17
    goto/16 :goto_7

    .line 18
    .line 19
    :cond_0
    iget-object p2, p1, Lr4/g;->p0:Lr4/f;

    .line 20
    .line 21
    invoke-static {p2}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lr4/f;->i()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    iget-object p2, p1, Lr4/g;->o0:Landroid/app/AlertDialog;

    .line 31
    .line 32
    if-eqz p2, :cond_c

    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/app/Dialog;->cancel()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p1, Lr4/g;->o0:Landroid/app/AlertDialog;

    .line 38
    .line 39
    goto/16 :goto_7

    .line 40
    .line 41
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lr4/q;->a:Lr4/s;

    .line 47
    .line 48
    iget v3, v2, Lr4/s;->b:I

    .line 49
    .line 50
    if-ltz v3, :cond_2

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-ge v3, v4, :cond_2

    .line 57
    .line 58
    iget v3, v2, Lr4/s;->b:I

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lcom/google/android/gms/cast/MediaTrack;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move-object v2, v0

    .line 68
    :goto_0
    if-eqz v2, :cond_3

    .line 69
    .line 70
    const-wide/16 v3, -0x1

    .line 71
    .line 72
    iget-wide v5, v2, Lcom/google/android/gms/cast/MediaTrack;->a:J

    .line 73
    .line 74
    cmp-long v2, v5, v3

    .line 75
    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object v2, p0, Lr4/q;->b:Lr4/s;

    .line 86
    .line 87
    iget v3, v2, Lr4/s;->b:I

    .line 88
    .line 89
    if-ltz v3, :cond_4

    .line 90
    .line 91
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-ge v3, v4, :cond_4

    .line 96
    .line 97
    iget v3, v2, Lr4/s;->b:I

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Lcom/google/android/gms/cast/MediaTrack;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    move-object v2, v0

    .line 107
    :goto_1
    if-eqz v2, :cond_5

    .line 108
    .line 109
    iget-wide v2, v2, Lcom/google/android/gms/cast/MediaTrack;->a:J

    .line 110
    .line 111
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    :cond_5
    iget-object v2, p1, Lr4/g;->n0:[J

    .line 119
    .line 120
    const/4 v3, 0x0

    .line 121
    if-eqz v2, :cond_9

    .line 122
    .line 123
    array-length v4, v2

    .line 124
    if-lez v4, :cond_9

    .line 125
    .line 126
    new-instance v4, Ljava/util/HashSet;

    .line 127
    .line 128
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 129
    .line 130
    .line 131
    iget-object v5, p1, Lr4/g;->m0:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-eqz v6, :cond_6

    .line 142
    .line 143
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    check-cast v6, Lcom/google/android/gms/cast/MediaTrack;

    .line 148
    .line 149
    iget-wide v6, v6, Lcom/google/android/gms/cast/MediaTrack;->a:J

    .line 150
    .line 151
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_6
    iget-object v5, p1, Lr4/g;->l0:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    if-eqz v6, :cond_7

    .line 170
    .line 171
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    check-cast v6, Lcom/google/android/gms/cast/MediaTrack;

    .line 176
    .line 177
    iget-wide v6, v6, Lcom/google/android/gms/cast/MediaTrack;->a:J

    .line 178
    .line 179
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_7
    array-length v5, v2

    .line 188
    const/4 v6, 0x0

    .line 189
    :goto_4
    if-ge v6, v5, :cond_9

    .line 190
    .line 191
    aget-wide v7, v2, v6

    .line 192
    .line 193
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    if-nez v8, :cond_8

    .line 202
    .line 203
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    new-array v2, v2, [J

    .line 214
    .line 215
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-ge v3, v4, :cond_a

    .line 220
    .line 221
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    check-cast v4, Ljava/lang/Long;

    .line 226
    .line 227
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 228
    .line 229
    .line 230
    move-result-wide v4

    .line 231
    aput-wide v4, v2, v3

    .line 232
    .line 233
    add-int/lit8 v3, v3, 0x1

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_a
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    .line 237
    .line 238
    .line 239
    const-string v1, "Must be called from the main thread."

    .line 240
    .line 241
    invoke-static {v1}, Lb5/l;->b(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p2}, Lr4/f;->F()Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-nez v1, :cond_b

    .line 249
    .line 250
    invoke-static {}, Lr4/f;->x()Lr4/l;

    .line 251
    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_b
    new-instance v1, Lr4/i;

    .line 255
    .line 256
    const/4 v3, 0x2

    .line 257
    invoke-direct {v1, p2, v2, v3}, Lr4/i;-><init>(Lr4/f;Ljava/lang/Object;I)V

    .line 258
    .line 259
    .line 260
    invoke-static {v1}, Lr4/f;->G(Lr4/m;)V

    .line 261
    .line 262
    .line 263
    :goto_6
    iget-object p2, p1, Lr4/g;->o0:Landroid/app/AlertDialog;

    .line 264
    .line 265
    if-eqz p2, :cond_c

    .line 266
    .line 267
    invoke-virtual {p2}, Landroid/app/Dialog;->cancel()V

    .line 268
    .line 269
    .line 270
    iput-object v0, p1, Lr4/g;->o0:Landroid/app/AlertDialog;

    .line 271
    .line 272
    :cond_c
    :goto_7
    return-void
.end method
