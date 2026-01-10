.class public final Landroidx/mediarouter/app/e0;
.super Landroid/os/AsyncTask;
.source "MyApplication"


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Landroid/net/Uri;

.field public c:I

.field public final synthetic d:Landroidx/mediarouter/app/q0;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/q0;)V
    .locals 3

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/e0;->d:Landroidx/mediarouter/app/q0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroidx/mediarouter/app/q0;->K:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    move-object v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const-string v0, "MediaRouteCtrlDialog"

    .line 26
    .line 27
    const-string v2, "Can\'t fetch the given art bitmap because it\'s already recycled."

    .line 28
    .line 29
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-object v0, v1

    .line 33
    :cond_1
    iput-object v0, p0, Landroidx/mediarouter/app/e0;->a:Landroid/graphics/Bitmap;

    .line 34
    .line 35
    iget-object p1, p1, Landroidx/mediarouter/app/q0;->K:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :goto_1
    iput-object v1, p0, Landroidx/mediarouter/app/e0;->b:Landroid/net/Uri;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Ljava/io/BufferedInputStream;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "android.resource"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const-string v1, "content"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    const-string v1, "file"

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/net/URL;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/16 v0, 0x7530

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/mediarouter/app/e0;->d:Landroidx/mediarouter/app/q0;

    .line 61
    .line 62
    iget-object v0, v0, Landroidx/mediarouter/app/q0;->m:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :goto_1
    if-nez p1, :cond_2

    .line 73
    .line 74
    const/4 p1, 0x0

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 77
    .line 78
    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 79
    .line 80
    .line 81
    move-object p1, v0

    .line 82
    :goto_2
    return-object p1
.end method

.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    const-string p1, "Unable to open: "

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    const-string v2, "MediaRouteCtrlDialog"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iget-object v4, p0, Landroidx/mediarouter/app/e0;->a:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    goto/16 :goto_5

    .line 15
    .line 16
    :cond_0
    iget-object v4, p0, Landroidx/mediarouter/app/e0;->b:Landroid/net/Uri;

    .line 17
    .line 18
    if-eqz v4, :cond_7

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {p0, v4}, Landroidx/mediarouter/app/e0;->a(Landroid/net/Uri;)Ljava/io/BufferedInputStream;

    .line 21
    .line 22
    .line 23
    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    if-nez v5, :cond_2

    .line 25
    .line 26
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    if-eqz v5, :cond_b

    .line 42
    .line 43
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 44
    .line 45
    .line 46
    goto/16 :goto_7

    .line 47
    .line 48
    :catchall_0
    move-exception p1

    .line 49
    move-object v3, v5

    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :catch_0
    move-exception v6

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    :try_start_3
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    .line 55
    .line 56
    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-boolean v1, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 60
    .line 61
    invoke-static {v5, v3, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 62
    .line 63
    .line 64
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 65
    .line 66
    if-eqz v7, :cond_1

    .line 67
    .line 68
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    .line 70
    if-nez v7, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_1
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v4}, Landroidx/mediarouter/app/e0;->a(Landroid/net/Uri;)Ljava/io/BufferedInputStream;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    if-nez v5, :cond_4

    .line 85
    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    if-eqz v5, :cond_b

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    :goto_1
    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 105
    .line 106
    iget-object v7, p0, Landroidx/mediarouter/app/e0;->d:Landroidx/mediarouter/app/q0;

    .line 107
    .line 108
    iget-object v7, v7, Landroidx/mediarouter/app/q0;->m:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    const v8, 0x7f0702ab

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    iget v8, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 122
    .line 123
    div-int/2addr v8, v7

    .line 124
    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-eqz v7, :cond_5

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_5
    invoke-static {v5, v3, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 142
    .line 143
    .line 144
    move-result-object v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 145
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :catch_2
    nop

    .line 150
    goto :goto_5

    .line 151
    :catchall_1
    move-exception p1

    .line 152
    goto :goto_3

    .line 153
    :catch_3
    move-exception v6

    .line 154
    move-object v5, v3

    .line 155
    :goto_2
    :try_start_7
    new-instance v7, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {v2, p1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 168
    .line 169
    .line 170
    if-eqz v5, :cond_7

    .line 171
    .line 172
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :catch_4
    nop

    .line 177
    goto :goto_4

    .line 178
    :goto_3
    if-eqz v3, :cond_6

    .line 179
    .line 180
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 181
    .line 182
    .line 183
    :catch_5
    :cond_6
    throw p1

    .line 184
    :cond_7
    :goto_4
    move-object v4, v3

    .line 185
    :goto_5
    if-eqz v4, :cond_8

    .line 186
    .line 187
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_8

    .line 192
    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v0, "Can\'t use recycled bitmap: "

    .line 196
    .line 197
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_8
    if-eqz v4, :cond_a

    .line 212
    .line 213
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-ge p1, v2, :cond_a

    .line 222
    .line 223
    new-instance p1, Lb1/n;

    .line 224
    .line 225
    invoke-direct {p1, v4}, Lb1/n;-><init>(Landroid/graphics/Bitmap;)V

    .line 226
    .line 227
    .line 228
    iput v1, p1, Lb1/n;->a:I

    .line 229
    .line 230
    invoke-virtual {p1}, Lb1/n;->b()Ls1/e;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    iget-object p1, p1, Ls1/e;->a:Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_9

    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_9
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    check-cast p1, Ls1/d;

    .line 256
    .line 257
    iget v0, p1, Ls1/d;->d:I

    .line 258
    .line 259
    :goto_6
    iput v0, p0, Landroidx/mediarouter/app/e0;->c:I

    .line 260
    .line 261
    :cond_a
    move-object v3, v4

    .line 262
    :catch_6
    :cond_b
    :goto_7
    return-object v3
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/mediarouter/app/e0;->d:Landroidx/mediarouter/app/q0;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Landroidx/mediarouter/app/q0;->L:Landroidx/mediarouter/app/e0;

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/mediarouter/app/q0;->M:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/mediarouter/app/e0;->a:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v3, p0, Landroidx/mediarouter/app/e0;->b:Landroid/net/Uri;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, v0, Landroidx/mediarouter/app/q0;->N:Landroid/net/Uri;

    .line 21
    .line 22
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    :cond_0
    iput-object v2, v0, Landroidx/mediarouter/app/q0;->M:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    iput-object p1, v0, Landroidx/mediarouter/app/q0;->P:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    iput-object v3, v0, Landroidx/mediarouter/app/q0;->N:Landroid/net/Uri;

    .line 33
    .line 34
    iget p1, p0, Landroidx/mediarouter/app/e0;->c:I

    .line 35
    .line 36
    iput p1, v0, Landroidx/mediarouter/app/q0;->Q:I

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    iput-boolean p1, v0, Landroidx/mediarouter/app/q0;->O:Z

    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/mediarouter/app/q0;->n()V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final onPreExecute()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/e0;->d:Landroidx/mediarouter/app/q0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Landroidx/mediarouter/app/q0;->O:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iput-object v2, v0, Landroidx/mediarouter/app/q0;->P:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    iput v1, v0, Landroidx/mediarouter/app/q0;->Q:I

    .line 10
    .line 11
    return-void
.end method
