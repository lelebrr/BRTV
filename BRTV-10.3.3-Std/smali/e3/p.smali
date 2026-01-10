.class public final Le3/p;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final f:Lv2/g;

.field public static final g:Lv2/g;

.field public static final h:Lv2/g;

.field public static final i:Lv2/g;

.field public static final j:Ljava/util/Set;

.field public static final k:Lx4/e;

.field public static final l:Ljava/util/ArrayDeque;


# instance fields
.field public final a:Ly2/a;

.field public final b:Landroid/util/DisplayMetrics;

.field public final c:Ly2/f;

.field public final d:Ljava/util/ArrayList;

.field public final e:Le3/v;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lv2/a;->c:Lv2/a;

    .line 2
    .line 3
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lv2/g;->a(Ljava/lang/Object;Ljava/lang/String;)Lv2/g;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Le3/p;->f:Lv2/g;

    .line 10
    .line 11
    new-instance v0, Lv2/g;

    .line 12
    .line 13
    sget-object v1, Lv2/g;->e:Lq/b;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const-string v3, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    .line 17
    .line 18
    invoke-direct {v0, v3, v2, v1}, Lv2/g;-><init>(Ljava/lang/String;Ljava/lang/Object;Lv2/f;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Le3/p;->g:Lv2/g;

    .line 22
    .line 23
    sget-object v0, Le3/n;->b:Le3/n;

    .line 24
    .line 25
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lv2/g;->a(Ljava/lang/Object;Ljava/lang/String;)Lv2/g;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Le3/p;->h:Lv2/g;

    .line 34
    .line 35
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lv2/g;->a(Ljava/lang/Object;Ljava/lang/String;)Lv2/g;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Le3/p;->i:Lv2/g;

    .line 42
    .line 43
    new-instance v0, Ljava/util/HashSet;

    .line 44
    .line 45
    const-string v1, "image/vnd.wap.wbmp"

    .line 46
    .line 47
    const-string v2, "image/x-ico"

    .line 48
    .line 49
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Le3/p;->j:Ljava/util/Set;

    .line 65
    .line 66
    new-instance v0, Lx4/e;

    .line 67
    .line 68
    const/16 v1, 0x8

    .line 69
    .line 70
    invoke-direct {v0, v1}, Lx4/e;-><init>(I)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Le3/p;->k:Lx4/e;

    .line 74
    .line 75
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 76
    .line 77
    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 78
    .line 79
    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 80
    .line 81
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 86
    .line 87
    .line 88
    sget-object v0, Lr3/n;->a:[C

    .line 89
    .line 90
    new-instance v0, Ljava/util/ArrayDeque;

    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 94
    .line 95
    .line 96
    sput-object v0, Le3/p;->l:Ljava/util/ArrayDeque;

    .line 97
    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;Ly2/a;Ly2/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Le3/v;->a()Le3/v;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Le3/p;->e:Le3/v;

    .line 9
    .line 10
    iput-object p1, p0, Le3/p;->d:Ljava/util/ArrayList;

    .line 11
    .line 12
    const-string p1, "Argument must not be null"

    .line 13
    .line 14
    invoke-static {p2, p1}, Lr3/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Le3/p;->b:Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    invoke-static {p3, p1}, Lr3/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object p3, p0, Le3/p;->a:Ly2/a;

    .line 23
    .line 24
    invoke-static {p4, p1}, Lr3/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object p4, p0, Le3/p;->c:Ly2/f;

    .line 28
    .line 29
    return-void
.end method

.method public static c(La1/b;Landroid/graphics/BitmapFactory$Options;Le3/o;Ly2/a;)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    const-string v0, "Downsampler"

    .line 2
    .line 3
    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-interface {p2}, Le3/o;->k()V

    .line 8
    .line 9
    .line 10
    iget v1, p0, La1/b;->a:I

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_0
    iget-object v1, p0, La1/b;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lcom/bumptech/glide/load/data/i;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/bumptech/glide/load/data/i;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Le3/w;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v2, v1, Le3/w;->a:[B

    .line 26
    .line 27
    array-length v2, v2

    .line 28
    iput v2, v1, Le3/w;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    monitor-exit v1

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0

    .line 35
    :cond_0
    :goto_0
    :pswitch_1
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 36
    .line 37
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 38
    .line 39
    iget-object v3, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 40
    .line 41
    sget-object v4, Le3/z;->b:Ljava/util/concurrent/locks/Lock;

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 44
    .line 45
    .line 46
    :try_start_2
    invoke-virtual {p0, p1}, La1/b;->i(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 47
    .line 48
    .line 49
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception v4

    .line 57
    :try_start_3
    new-instance v5, Ljava/io/IOException;

    .line 58
    .line 59
    const-string v6, "Exception decoding bitmap, outWidth: "

    .line 60
    .line 61
    const-string v7, ", outHeight: "

    .line 62
    .line 63
    const-string v8, ", outMimeType: "

    .line 64
    .line 65
    invoke-static {v6, v1, v7, v2, v8}, La/e;->v(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v2, ", inBitmap: "

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 78
    .line 79
    invoke-static {v2}, Le3/p;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {v5, v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    const/4 v1, 0x3

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_1

    .line 99
    .line 100
    const-string v1, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    .line 101
    .line 102
    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    :cond_1
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    .line 107
    if-eqz v0, :cond_2

    .line 108
    .line 109
    :try_start_4
    invoke-interface {p3, v0}, Ly2/a;->e(Landroid/graphics/Bitmap;)V

    .line 110
    .line 111
    .line 112
    const/4 v0, 0x0

    .line 113
    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 114
    .line 115
    invoke-static {p0, p1, p2, p3}, Le3/p;->c(La1/b;Landroid/graphics/BitmapFactory$Options;Le3/o;Ly2/a;)Landroid/graphics/Bitmap;

    .line 116
    .line 117
    .line 118
    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    sget-object p1, Le3/z;->b:Ljava/util/concurrent/locks/Lock;

    .line 120
    .line 121
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 122
    .line 123
    .line 124
    return-object p0

    .line 125
    :catch_1
    :try_start_5
    throw v5

    .line 126
    :cond_2
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 127
    :goto_1
    sget-object p1, Le3/z;->b:Ljava/util/concurrent/locks/Lock;

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 130
    .line 131
    .line 132
    throw p0

    .line 133
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, " ("

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ")"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "["

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "x"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, "] "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method public static e(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    .line 1
    invoke-static {p0}, Le3/p;->f(Landroid/graphics/BitmapFactory$Options;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Le3/p;->l:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public static f(Landroid/graphics/BitmapFactory$Options;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 6
    .line 7
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 11
    .line 12
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 15
    .line 16
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 17
    .line 18
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 19
    .line 20
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v4, 0x1a

    .line 23
    .line 24
    if-lt v3, v4, :cond_0

    .line 25
    .line 26
    invoke-static {p0}, Lcom/alibaba/fastjson/parser/deserializer/c;->o(Landroid/graphics/BitmapFactory$Options;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Lcom/alibaba/fastjson/parser/deserializer/c;->B(Landroid/graphics/BitmapFactory$Options;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Lcom/alibaba/fastjson/parser/deserializer/c;->D(Landroid/graphics/BitmapFactory$Options;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 36
    .line 37
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 38
    .line 39
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a(La1/b;IILv2/h;Le3/o;)Le3/d;
    .locals 15

    .line 1
    move-object v12, p0

    .line 2
    move-object/from16 v0, p4

    .line 3
    .line 4
    iget-object v1, v12, Le3/p;->c:Ly2/f;

    .line 5
    .line 6
    const/high16 v2, 0x10000

    .line 7
    .line 8
    const-class v3, [B

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Ly2/f;->d(ILjava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    move-object v13, v1

    .line 15
    check-cast v13, [B

    .line 16
    .line 17
    const-class v1, Le3/p;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v2, Le3/p;->l:Ljava/util/ArrayDeque;

    .line 21
    .line 22
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/graphics/BitmapFactory$Options;

    .line 28
    .line 29
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    :try_start_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .line 33
    .line 34
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Le3/p;->f(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    .line 39
    .line 40
    :cond_0
    move-object v14, v3

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_2

    .line 44
    :goto_0
    monitor-exit v1

    .line 45
    iput-object v13, v14, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 46
    .line 47
    sget-object v1, Le3/p;->f:Lv2/g;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lv2/h;->c(Lv2/g;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v5, v1

    .line 54
    check-cast v5, Lv2/a;

    .line 55
    .line 56
    sget-object v1, Le3/p;->g:Lv2/g;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lv2/h;->c(Lv2/g;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    move-object v6, v1

    .line 63
    check-cast v6, Lv2/i;

    .line 64
    .line 65
    sget-object v1, Le3/n;->g:Lv2/g;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lv2/h;->c(Lv2/g;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    move-object v4, v1

    .line 72
    check-cast v4, Le3/n;

    .line 73
    .line 74
    sget-object v1, Le3/p;->h:Lv2/g;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lv2/h;->c(Lv2/g;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    sget-object v1, Le3/p;->i:Lv2/g;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lv2/h;->c(Lv2/g;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lv2/h;->c(Lv2/g;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_1

    .line 105
    .line 106
    const/4 v0, 0x1

    .line 107
    const/4 v7, 0x1

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    const/4 v0, 0x0

    .line 110
    const/4 v7, 0x0

    .line 111
    :goto_1
    move-object v1, p0

    .line 112
    move-object/from16 v2, p1

    .line 113
    .line 114
    move-object v3, v14

    .line 115
    move/from16 v8, p2

    .line 116
    .line 117
    move/from16 v9, p3

    .line 118
    .line 119
    move-object/from16 v11, p5

    .line 120
    .line 121
    :try_start_3
    invoke-virtual/range {v1 .. v11}, Le3/p;->b(La1/b;Landroid/graphics/BitmapFactory$Options;Le3/n;Lv2/a;Lv2/i;ZIIZLe3/o;)Landroid/graphics/Bitmap;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iget-object v1, v12, Le3/p;->a:Ly2/a;

    .line 126
    .line 127
    invoke-static {v0, v1}, Le3/d;->b(Landroid/graphics/Bitmap;Ly2/a;)Le3/d;

    .line 128
    .line 129
    .line 130
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    invoke-static {v14}, Le3/p;->e(Landroid/graphics/BitmapFactory$Options;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v12, Le3/p;->c:Ly2/f;

    .line 135
    .line 136
    invoke-virtual {v1, v13}, Ly2/f;->h(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    return-object v0

    .line 140
    :catchall_1
    move-exception v0

    .line 141
    invoke-static {v14}, Le3/p;->e(Landroid/graphics/BitmapFactory$Options;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v12, Le3/p;->c:Ly2/f;

    .line 145
    .line 146
    invoke-virtual {v1, v13}, Ly2/f;->h(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    :catchall_2
    move-exception v0

    .line 151
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 152
    :try_start_5
    throw v0

    .line 153
    :goto_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 154
    throw v0
.end method

.method public final b(La1/b;Landroid/graphics/BitmapFactory$Options;Le3/n;Lv2/a;Lv2/i;ZIIZLe3/o;)Landroid/graphics/Bitmap;
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p10

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 1
    sget v14, Lr3/h;->b:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v14

    .line 3
    iput-boolean v13, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    iget-object v10, v1, Le3/p;->a:Ly2/a;

    invoke-static {v2, v3, v8, v10}, Le3/p;->c(La1/b;Landroid/graphics/BitmapFactory$Options;Le3/o;Ly2/a;)Landroid/graphics/Bitmap;

    .line 5
    iput-boolean v12, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6
    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    filled-new-array {v9, v11}, [I

    move-result-object v9

    .line 7
    aget v11, v9, v12

    .line 8
    aget v9, v9, v13

    .line 9
    iget-object v12, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const/4 v13, -0x1

    if-eq v11, v13, :cond_1

    if-ne v9, v13, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v13, p6

    move-wide/from16 v19, v14

    goto :goto_1

    :cond_1
    :goto_0
    move-wide/from16 v19, v14

    const/4 v13, 0x0

    .line 10
    :goto_1
    iget v14, v2, La1/b;->a:I

    packed-switch v14, :pswitch_data_0

    .line 11
    iget-object v14, v2, La1/b;->d:Ljava/lang/Object;

    check-cast v14, Lcom/bumptech/glide/load/data/i;

    iget-object v15, v2, La1/b;->b:Ljava/lang/Object;

    check-cast v15, Ly2/f;

    move-object/from16 v21, v12

    iget-object v12, v2, La1/b;->c:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_4

    .line 13
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move/from16 p6, v5

    move-object/from16 v5, v22

    check-cast v5, Lv2/d;

    move-object/from16 v22, v12

    .line 14
    :try_start_0
    new-instance v12, Le3/w;

    move/from16 v23, v13

    new-instance v13, Ljava/io/FileInputStream;

    .line 15
    invoke-virtual {v14}, Lcom/bumptech/glide/load/data/i;->d()Landroid/os/ParcelFileDescriptor;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v12, v13, v15}, Le3/w;-><init>(Ljava/io/InputStream;Ly2/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    invoke-interface {v5, v12, v15}, Lv2/d;->b(Ljava/io/InputStream;Ly2/f;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-virtual {v12}, Le3/w;->b()V

    .line 18
    invoke-virtual {v14}, Lcom/bumptech/glide/load/data/i;->d()Landroid/os/ParcelFileDescriptor;

    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    goto/16 :goto_7

    :cond_2
    const/4 v1, 0x1

    add-int/2addr v4, v1

    move-object/from16 v1, p0

    move/from16 v5, p6

    move-object/from16 v12, v22

    move/from16 v13, v23

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v10, v12

    goto :goto_3

    :catchall_1
    move-exception v0

    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_3

    .line 19
    invoke-virtual {v10}, Le3/w;->b()V

    .line 20
    :cond_3
    invoke-virtual {v14}, Lcom/bumptech/glide/load/data/i;->d()Landroid/os/ParcelFileDescriptor;

    .line 21
    throw v0

    :cond_4
    move/from16 v23, v13

    const/4 v1, -0x1

    goto :goto_7

    :pswitch_0
    move-object/from16 v21, v12

    move/from16 v23, v13

    .line 22
    iget-object v1, v2, La1/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/bumptech/glide/load/data/i;

    iget-object v1, v1, Lcom/bumptech/glide/load/data/i;->b:Ljava/lang/Object;

    check-cast v1, Le3/w;

    .line 23
    invoke-virtual {v1}, Le3/w;->reset()V

    .line 24
    iget-object v4, v2, La1/b;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v5, v2, La1/b;->c:Ljava/lang/Object;

    check-cast v5, Ly2/f;

    invoke-static {v4, v1, v5}, Lu7/d;->n(Ljava/util/ArrayList;Ljava/io/InputStream;Ly2/f;)I

    move-result v1

    goto :goto_7

    :pswitch_1
    move-object/from16 v21, v12

    move/from16 v23, v13

    .line 25
    iget-object v1, v2, La1/b;->b:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 26
    invoke-static {v1}, Lr3/a;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v4, v2, La1/b;->d:Ljava/lang/Object;

    check-cast v4, Ly2/f;

    if-nez v1, :cond_5

    :goto_4
    const/4 v14, -0x1

    goto :goto_6

    .line 27
    :cond_5
    iget-object v5, v2, La1/b;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v12, :cond_7

    .line 28
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lv2/d;

    .line 29
    :try_start_2
    invoke-interface {v14, v1, v4}, Lv2/d;->c(Ljava/nio/ByteBuffer;Ly2/f;)I

    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v15, 0x0

    .line 30
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v18

    check-cast v18, Ljava/nio/ByteBuffer;

    const/4 v15, -0x1

    if-eq v14, v15, :cond_6

    goto :goto_6

    :cond_6
    const/4 v14, 0x1

    add-int/2addr v13, v14

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 31
    throw v2

    :cond_7
    const/4 v15, -0x1

    goto :goto_4

    :goto_6
    move v1, v14

    :goto_7
    const/16 v4, 0x5a

    const/16 v5, 0x10e

    packed-switch v1, :pswitch_data_1

    const/4 v15, 0x0

    goto :goto_8

    :pswitch_2
    const/16 v15, 0x10e

    goto :goto_8

    :pswitch_3
    const/16 v15, 0x5a

    goto :goto_8

    :pswitch_4
    const/16 v12, 0xb4

    const/16 v15, 0xb4

    :goto_8
    packed-switch v1, :pswitch_data_2

    const/4 v12, 0x0

    goto :goto_9

    :pswitch_5
    const/4 v12, 0x1

    :goto_9
    const/high16 v13, -0x80000000

    if-ne v6, v13, :cond_a

    if-eq v15, v4, :cond_9

    if-ne v15, v5, :cond_8

    goto :goto_a

    :cond_8
    move v14, v11

    goto :goto_b

    :cond_9
    :goto_a
    move v14, v9

    goto :goto_b

    :cond_a
    move v14, v6

    :goto_b
    if-ne v7, v13, :cond_d

    if-eq v15, v4, :cond_c

    if-ne v15, v5, :cond_b

    goto :goto_c

    :cond_b
    move v13, v9

    goto :goto_d

    :cond_c
    :goto_c
    move v13, v11

    goto :goto_d

    :cond_d
    move v13, v7

    .line 32
    :goto_d
    invoke-virtual/range {p1 .. p1}, La1/b;->x()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v5

    .line 33
    const-string v4, ", target density: "

    move/from16 v24, v1

    const-string v1, ", density: "

    const-string v7, "x"

    const-string v6, "Downsampler"

    move/from16 v26, v12

    const-string v12, "]"

    if-lez v11, :cond_23

    if-gtz v9, :cond_e

    move-object v15, v7

    move-object v0, v12

    move v7, v13

    const/4 v8, 0x3

    move-object/from16 v37, v4

    move-object v4, v1

    move-object/from16 v1, v37

    move/from16 v38, v14

    move v14, v9

    move v9, v11

    move/from16 v11, v38

    goto/16 :goto_1c

    :cond_e
    move-object/from16 v17, v12

    const/16 v12, 0x5a

    if-eq v15, v12, :cond_10

    const/16 v12, 0x10e

    if-ne v15, v12, :cond_f

    goto :goto_e

    :cond_f
    move-object/from16 p6, v1

    move-object/from16 v27, v4

    move v1, v9

    move v12, v11

    goto :goto_f

    :cond_10
    :goto_e
    move-object/from16 p6, v1

    move-object/from16 v27, v4

    move v12, v9

    move v1, v11

    .line 34
    :goto_f
    invoke-virtual {v0, v12, v1, v14, v13}, Le3/n;->b(IIII)F

    move-result v4

    const/16 v25, 0x0

    cmpg-float v28, v4, v25

    if-lez v28, :cond_22

    move/from16 v28, v15

    .line 35
    invoke-virtual {v0, v12, v1, v14, v13}, Le3/n;->a(IIII)I

    move-result v15

    if-eqz v15, :cond_21

    move-object/from16 v29, v7

    int-to-float v7, v12

    move/from16 v30, v9

    mul-float v9, v4, v7

    move/from16 v32, v13

    move/from16 v31, v14

    float-to-double v13, v9

    const-wide/high16 v33, 0x3fe0000000000000L    # 0.5

    add-double v13, v13, v33

    double-to-int v9, v13

    int-to-float v13, v1

    mul-float v14, v4, v13

    move-object/from16 v35, v10

    move/from16 v36, v11

    float-to-double v10, v14

    add-double v10, v10, v33

    double-to-int v10, v10

    .line 36
    div-int v9, v12, v9

    .line 37
    div-int v10, v1, v10

    const/4 v11, 0x1

    if-ne v15, v11, :cond_11

    .line 38
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_10

    .line 39
    :cond_11
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 40
    :goto_10
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-gt v10, v11, :cond_12

    sget-object v11, Le3/p;->j:Ljava/util/Set;

    iget-object v14, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 41
    invoke-interface {v11, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v9, 0x1

    goto :goto_11

    .line 42
    :cond_12
    invoke-static {v9}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v9

    const/4 v11, 0x1

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-ne v15, v11, :cond_13

    int-to-float v14, v9

    const/high16 v15, 0x3f800000    # 1.0f

    div-float v17, v15, v4

    cmpg-float v14, v14, v17

    if-gez v14, :cond_13

    shl-int/2addr v9, v11

    .line 43
    :cond_13
    :goto_11
    iput v9, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 44
    sget-object v11, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v5, v11, :cond_15

    const/16 v11, 0x8

    .line 45
    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v7, v1

    float-to-double v14, v7

    .line 46
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v5, v14

    div-float/2addr v13, v1

    float-to-double v12, v13

    .line 47
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v1, v12

    .line 48
    div-int/lit8 v7, v9, 0x8

    if-lez v7, :cond_14

    .line 49
    div-int/2addr v5, v7

    .line 50
    div-int/2addr v1, v7

    :cond_14
    :goto_12
    move/from16 v11, v31

    move/from16 v7, v32

    move-object/from16 v10, v35

    goto/16 :goto_16

    .line 51
    :cond_15
    sget-object v11, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v5, v11, :cond_16

    sget-object v11, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v5, v11, :cond_17

    :cond_16
    move-object/from16 v10, v35

    goto :goto_15

    .line 52
    :cond_17
    invoke-virtual {v5}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->isWebp()Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v1, 0x18

    if-lt v10, v1, :cond_18

    int-to-float v1, v9

    div-float/2addr v7, v1

    .line 53
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    div-float/2addr v13, v1

    .line 54
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_12

    :cond_18
    int-to-float v1, v9

    div-float/2addr v7, v1

    float-to-double v10, v7

    .line 55
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v5, v10

    div-float/2addr v13, v1

    float-to-double v10, v13

    .line 56
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v1, v10

    goto :goto_12

    .line 57
    :cond_19
    rem-int v5, v12, v9

    if-nez v5, :cond_1a

    rem-int v5, v1, v9

    if-eqz v5, :cond_1b

    :cond_1a
    const/4 v1, 0x1

    goto :goto_13

    .line 58
    :cond_1b
    div-int v5, v12, v9

    .line 59
    div-int/2addr v1, v9

    goto :goto_12

    .line 60
    :goto_13
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v10, v35

    .line 61
    invoke-static {v2, v3, v8, v10}, Le3/p;->c(La1/b;Landroid/graphics/BitmapFactory$Options;Le3/o;Ly2/a;)Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    .line 62
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 63
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    filled-new-array {v7, v11}, [I

    move-result-object v7

    .line 64
    aget v11, v7, v5

    .line 65
    aget v5, v7, v1

    move v1, v5

    move v5, v11

    :goto_14
    move/from16 v11, v31

    move/from16 v7, v32

    goto :goto_16

    :goto_15
    int-to-float v1, v9

    div-float/2addr v7, v1

    float-to-double v11, v7

    .line 66
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v5, v11

    div-float/2addr v13, v1

    float-to-double v11, v13

    .line 67
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v1, v11

    goto :goto_14

    .line 68
    :goto_16
    invoke-virtual {v0, v5, v1, v11, v7}, Le3/n;->b(IIII)F

    move-result v0

    float-to-double v12, v0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v12, v14

    if-gtz v0, :cond_1c

    move-wide/from16 v16, v12

    goto :goto_17

    :cond_1c
    div-double v16, v14, v12

    :goto_17
    const-wide v31, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double v16, v16, v31

    .line 69
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v15, v14

    move v14, v9

    int-to-double v8, v15

    mul-double v8, v8, v12

    add-double v8, v8, v33

    double-to-int v8, v8

    int-to-float v9, v8

    int-to-float v15, v15

    div-float/2addr v9, v15

    move/from16 p3, v14

    float-to-double v14, v9

    div-double v14, v12, v14

    int-to-double v8, v8

    mul-double v14, v14, v8

    add-double v14, v14, v33

    double-to-int v8, v14

    .line 70
    iput v8, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-gtz v0, :cond_1d

    move-wide v14, v12

    goto :goto_18

    :cond_1d
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v14, v8, v12

    :goto_18
    mul-double v14, v14, v31

    .line 71
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v0, v8

    .line 72
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 73
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v8, :cond_1e

    if-lez v0, :cond_1e

    if-eq v8, v0, :cond_1e

    const/4 v8, 0x1

    .line 74
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    :goto_19
    const/4 v8, 0x2

    goto :goto_1a

    :cond_1e
    const/4 v8, 0x0

    .line 75
    iput v8, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v8, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_19

    .line 76
    :goto_1a
    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 77
    const-string v0, "Calculate scaling, source: ["

    const-string v8, "], degreesToRotate: "

    move-object/from16 v15, v29

    move/from16 v14, v30

    move/from16 v9, v36

    .line 78
    invoke-static {v0, v9, v15, v14, v8}, La/e;->v(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v8, v28

    .line 79
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", target: ["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "], power of two scaled: ["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], exact scale factor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", power of 2 sample size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adjusted scale factor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, p6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_1f
    move-object/from16 v4, p6

    move-object/from16 v1, v27

    move-object/from16 v15, v29

    move/from16 v14, v30

    move/from16 v9, v36

    :cond_20
    :goto_1b
    move-object/from16 v5, p0

    goto/16 :goto_1d

    .line 80
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round with null rounding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    move-object v15, v7

    move v7, v13

    move/from16 v37, v14

    move v14, v9

    move v9, v11

    move/from16 v11, v37

    .line 81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot scale with factor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", source: ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], target: ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    move-object v15, v7

    move-object v0, v12

    move v7, v13

    move-object/from16 v37, v4

    move-object v4, v1

    move-object/from16 v1, v37

    move/from16 v38, v14

    move v14, v9

    move v9, v11

    move/from16 v11, v38

    const/4 v8, 0x3

    .line 82
    :goto_1c
    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 83
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "Unable to determine dimensions for: "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with target ["

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 84
    :goto_1d
    iget-object v0, v5, Le3/p;->e:Le3/v;

    move/from16 v8, v23

    move/from16 v12, v26

    invoke-virtual {v0, v11, v7, v8, v12}, Le3/v;->c(IIZZ)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 85
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/c;->y()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    iput-object v8, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x0

    .line 86
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    goto :goto_1e

    :cond_24
    const/4 v8, 0x0

    :goto_1e
    if-eqz v0, :cond_26

    :cond_25
    const/4 v8, 0x1

    goto :goto_21

    .line 87
    :cond_26
    sget-object v0, Lv2/a;->a:Lv2/a;

    move-object/from16 v12, p4

    if-eq v12, v0, :cond_29

    .line 88
    :try_start_3
    invoke-virtual/range {p1 .. p1}, La1/b;->x()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1f

    :catch_0
    move-exception v0

    const/4 v13, 0x3

    .line 89
    invoke-static {v6, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_27

    .line 90
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v8, "Cannot determine whether the image has alpha or not from header, format "

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_28

    .line 91
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_20

    :cond_28
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_20
    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 92
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v8, :cond_25

    const/4 v8, 0x1

    .line 93
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto :goto_21

    :cond_29
    const/4 v8, 0x1

    .line 94
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 95
    :goto_21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ltz v9, :cond_2a

    if-ltz v14, :cond_2a

    if-eqz p9, :cond_2a

    move v13, v7

    move v12, v9

    goto/16 :goto_25

    .line 96
    :cond_2a
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v7, :cond_2b

    iget v11, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v11, :cond_2b

    if-eq v7, v11, :cond_2b

    const/4 v11, 0x1

    goto :goto_22

    :cond_2b
    const/4 v11, 0x0

    :goto_22
    if-eqz v11, :cond_2c

    int-to-float v7, v7

    .line 97
    iget v11, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v11, v11

    div-float/2addr v7, v11

    goto :goto_23

    :cond_2c
    const/high16 v7, 0x3f800000    # 1.0f

    .line 98
    :goto_23
    iget v11, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v12, v9

    int-to-float v13, v11

    div-float/2addr v12, v13

    move/from16 v36, v9

    float-to-double v8, v12

    .line 99
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    int-to-float v9, v14

    div-float/2addr v9, v13

    float-to-double v12, v9

    .line 100
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v9, v12

    int-to-float v8, v8

    mul-float v8, v8, v7

    .line 101
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v9, v9

    mul-float v9, v9, v7

    .line 102
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v13

    const/4 v9, 0x2

    .line 103
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_2d

    .line 104
    const-string v9, "Calculated target ["

    const-string v12, "] for source ["

    .line 105
    invoke-static {v9, v8, v15, v13, v12}, La/e;->v(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v12, v36

    .line 106
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 p3, v8

    const-string v8, "], sampleSize: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", targetDensity: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", density multiplier: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :cond_2d
    move/from16 p3, v8

    move/from16 v12, v36

    :goto_24
    move/from16 v11, p3

    :goto_25
    const/16 v7, 0x1a

    if-lez v11, :cond_31

    if-lez v13, :cond_31

    if-lt v0, v7, :cond_2f

    .line 107
    iget-object v8, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/c;->y()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    if-ne v8, v9, :cond_2e

    goto :goto_27

    .line 108
    :cond_2e
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/c;->e(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$Config;

    move-result-object v8

    goto :goto_26

    :cond_2f
    const/4 v8, 0x0

    :goto_26
    if-nez v8, :cond_30

    .line 109
    iget-object v8, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 110
    :cond_30
    invoke-interface {v10, v11, v13, v8}, Ly2/a;->c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_31
    :goto_27
    move-object/from16 v8, p5

    if-eqz v8, :cond_34

    const/16 v9, 0x1c

    if-lt v0, v9, :cond_35

    .line 111
    sget-object v0, Lv2/i;->a:Lv2/i;

    if-ne v8, v0, :cond_32

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/c;->g(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/ColorSpace;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/c;->g(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/deserializer/c;->w(Landroid/graphics/ColorSpace;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/16 v18, 0x1

    goto :goto_28

    :cond_32
    const/16 v18, 0x0

    :goto_28
    if-eqz v18, :cond_33

    .line 113
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/c;->f()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    goto :goto_29

    :cond_33
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/c;->z()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    :goto_29
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/deserializer/c;->h(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/fastjson/parser/deserializer/c;->p(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    :cond_34
    :goto_2a
    move-object/from16 v7, p10

    goto :goto_2b

    :cond_35
    if-lt v0, v7, :cond_34

    .line 114
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/c;->z()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/deserializer/c;->h(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/fastjson/parser/deserializer/c;->p(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    goto :goto_2a

    .line 115
    :goto_2b
    invoke-static {v2, v3, v7, v10}, Le3/p;->c(La1/b;Landroid/graphics/BitmapFactory$Options;Le3/o;Ly2/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    invoke-interface {v7, v0, v10}, Le3/o;->d(Landroid/graphics/Bitmap;Ly2/a;)V

    const/4 v2, 0x2

    .line 117
    invoke-static {v6, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Decoded "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-static {v0}, Le3/p;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from ["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v21

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " with inBitmap "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v7}, Le3/p;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v7

    .line 121
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for ["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v6

    move/from16 v6, p7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], sample size: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thread: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-static/range {v19 .. v20}, Lr3/h;->a(J)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    if-eqz v0, :cond_39

    .line 125
    iget-object v1, v5, Le3/p;->b:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    packed-switch v24, :pswitch_data_3

    move-object v3, v0

    goto/16 :goto_2e

    .line 126
    :pswitch_6
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v6, -0x40800000    # -1.0f

    packed-switch v24, :pswitch_data_4

    goto :goto_2c

    .line 127
    :pswitch_7
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_2c

    .line 128
    :pswitch_8
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 129
    invoke-virtual {v1, v6, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2c

    .line 130
    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_2c

    :pswitch_a
    const/high16 v4, 0x3f800000    # 1.0f

    .line 131
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 132
    invoke-virtual {v1, v6, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2c

    :pswitch_b
    const/high16 v4, 0x3f800000    # 1.0f

    .line 133
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 134
    invoke-virtual {v1, v6, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2c

    .line 135
    :pswitch_c
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_2c

    :pswitch_d
    const/high16 v4, 0x3f800000    # 1.0f

    .line 136
    invoke-virtual {v1, v6, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 137
    :goto_2c
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v6, 0x0

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 138
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 139
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 140
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 141
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    if-eqz v6, :cond_37

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    goto :goto_2d

    :cond_37
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 142
    :goto_2d
    invoke-interface {v10, v3, v4, v6}, Ly2/a;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 143
    iget v4, v2, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 144
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 145
    invoke-static {v0, v3, v1}, Le3/z;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 146
    :goto_2e
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 147
    invoke-interface {v10, v0}, Ly2/a;->e(Landroid/graphics/Bitmap;)V

    :cond_38
    move-object v10, v3

    goto :goto_2f

    :cond_39
    const/4 v10, 0x0

    :goto_2f
    return-object v10

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
