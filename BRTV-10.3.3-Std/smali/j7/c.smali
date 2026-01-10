.class public Lj7/c;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/appcompat/widget/d2;
.implements Lk2/f;
.implements Lfa/n0;
.implements Ln0/d;
.implements Ln0/f;
.implements Ln7/m;
.implements Lp3/d;
.implements Lz4/k;
.implements Lcom/google/android/material/internal/d0;
.implements Lq1/a0;
.implements Lv4/m;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lj7/c;->a:I

    packed-switch p1, :pswitch_data_0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iput-object p1, p0, Lj7/c;->b:Ljava/lang/Object;

    return-void

    .line 13
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 15
    new-instance p1, Lo0/j;

    .line 16
    invoke-direct {p1, p0}, Lo0/i;-><init>(Lj7/c;)V

    .line 17
    iput-object p1, p0, Lj7/c;->b:Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Lo0/i;

    invoke-direct {p1, p0}, Lo0/i;-><init>(Lj7/c;)V

    iput-object p1, p0, Lj7/c;->b:Ljava/lang/Object;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lj7/c;->a:I

    iput-object p2, p0, Lj7/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 2
    iput p1, p0, Lj7/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lj7/c;->a:I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/analytics/b0;->k(Landroid/content/ClipData;I)Landroid/view/ContentInfo$Builder;

    move-result-object p1

    iput-object p1, p0, Lj7/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .locals 2

    const/16 v0, 0x1d

    iput v0, p0, Lj7/c;->a:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 21
    new-instance v0, Ls0/f;

    invoke-direct {v0, p1, p2, p3}, Ls0/f;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    iput-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ls/g;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Ls/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/view/ContentInfo;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Lj7/c;->a:I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static {p1}, Landroidx/media3/exoplayer/analytics/b0;->m(Ljava/lang/Object;)Landroid/view/ContentInfo;

    move-result-object p1

    iput-object p1, p0, Lj7/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc2/l;La1/b;)V
    .locals 0

    const/4 p2, 0x4

    iput p2, p0, Lj7/c;->a:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lj7/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/MediaInfo;)V
    .locals 13

    const/16 v0, 0x16

    iput v0, p0, Lj7/c;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/cast/MediaQueueItem;

    const-wide/high16 v7, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/16 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    move-object v2, p1

    .line 4
    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lcom/google/android/gms/cast/MediaInfo;IZDDD[JLjava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5
    iput-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "media cannot be null."

    .line 7
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const/16 v0, 0x16

    iput v0, p0, Lj7/c;->a:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-direct {v0, p1}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public static y(Lh2/k;Lm2/i;Lcoil/memory/MemoryCache$Key;Lk2/a;)Lm2/q;
    .locals 9

    .line 1
    new-instance v8, Lm2/q;

    .line 2
    .line 3
    iget-object v0, p3, Lk2/a;->a:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    iget-object v1, p1, Lm2/i;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 12
    .line 13
    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    sget-object v3, Ld2/f;->a:Ld2/f;

    .line 17
    .line 18
    const-string v0, "coil#disk_cache_key"

    .line 19
    .line 20
    iget-object p3, p3, Lk2/a;->b:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    instance-of v1, v0, Ljava/lang/String;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    check-cast v0, Ljava/lang/String;

    .line 32
    .line 33
    move-object v5, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v5, v4

    .line 36
    :goto_0
    const-string v0, "coil#is_sampled"

    .line 37
    .line 38
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    instance-of v0, p3, Ljava/lang/Boolean;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    move-object v4, p3

    .line 47
    check-cast v4, Ljava/lang/Boolean;

    .line 48
    .line 49
    :cond_1
    const/4 p3, 0x0

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    move v6, v0

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/4 v6, 0x0

    .line 59
    :goto_1
    sget-object v0, Lr2/f;->a:[Landroid/graphics/Bitmap$Config;

    .line 60
    .line 61
    instance-of v0, p0, Lh2/k;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    iget-boolean p0, p0, Lh2/k;->g:Z

    .line 66
    .line 67
    if-eqz p0, :cond_3

    .line 68
    .line 69
    const/4 p0, 0x1

    .line 70
    const/4 v7, 0x1

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    const/4 v7, 0x0

    .line 73
    :goto_2
    move-object v0, v8

    .line 74
    move-object v1, v2

    .line 75
    move-object v2, p1

    .line 76
    move-object v4, p2

    .line 77
    invoke-direct/range {v0 .. v7}, Lm2/q;-><init>(Landroid/graphics/drawable/Drawable;Lm2/i;Ld2/f;Lcoil/memory/MemoryCache$Key;Ljava/lang/String;ZZ)V

    .line 78
    .line 79
    .line 80
    return-object v8
.end method

.method public static z(IIIZ)Lj7/c;
    .locals 1

    .line 1
    new-instance v0, Lj7/c;

    .line 2
    .line 3
    invoke-static {p0, p1, p3, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/16 p1, 0x13

    .line 8
    .line 9
    invoke-direct {v0, p1, p0}, Lj7/c;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lj7/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lla/b;

    .line 9
    .line 10
    iget-object v1, v0, Lla/b;->b:Lla/d;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lla/d;->T(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, v0, Lla/b;->b:Lla/d;

    .line 19
    .line 20
    iget-object p1, p1, Lla/d;->k0:Lsa/p;

    .line 21
    .line 22
    iget-object p1, p1, Lsa/p;->p0:Landroid/widget/Button;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lka/w;

    .line 32
    .line 33
    iget-object v1, v0, Lka/w;->b:Lka/y;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Lka/y;->Q(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, v0, Lka/w;->b:Lka/y;

    .line 42
    .line 43
    iget-object p1, p1, Lka/y;->r1:Lsa/p;

    .line 44
    .line 45
    iget-object p1, p1, Lsa/p;->p0:Landroid/widget/Button;

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public B(IILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-static {p2}, Ln5/d;->s(Landroid/graphics/Bitmap;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lc6/b;

    .line 8
    .line 9
    invoke-virtual {v1, p1, p2, p3, v0}, Lc6/b;->b(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;Ljava/util/Map;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public c(Lq1/b0;Lq1/w;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lq1/j0;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lq1/j0;->g(Lq1/b0;Lq1/w;Ljava/util/ArrayList;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d(Lk/l;Lk/n;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lk/f;

    .line 4
    .line 5
    iget-object v1, v0, Lk/f;->f:Landroid/os/Handler;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lk/f;->h:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    const/4 v5, -0x1

    .line 19
    if-ge v4, v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    check-cast v6, Lk/e;

    .line 26
    .line 27
    iget-object v6, v6, Lk/e;->b:Lk/l;

    .line 28
    .line 29
    if-ne p1, v6, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v4, -0x1

    .line 36
    :goto_1
    if-ne v4, v5, :cond_2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ge v4, v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    move-object v2, v1

    .line 52
    check-cast v2, Lk/e;

    .line 53
    .line 54
    :cond_3
    move-object v5, v2

    .line 55
    new-instance v1, Lk/d;

    .line 56
    .line 57
    const/4 v8, 0x0

    .line 58
    move-object v3, v1

    .line 59
    move-object v4, p0

    .line 60
    move-object v6, p2

    .line 61
    move-object v7, p1

    .line 62
    invoke-direct/range {v3 .. v8}, Lk/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    const-wide/16 v4, 0xc8

    .line 70
    .line 71
    add-long/2addr v2, v4

    .line 72
    iget-object p2, v0, Lk/f;->f:Landroid/os/Handler;

    .line 73
    .line 74
    invoke-virtual {p2, v1, p1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public e()Landroid/content/ClipData;
    .locals 1

    .line 1
    iget-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/b0;->e(Landroid/view/ContentInfo;)Landroid/content/ClipData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public f()Ln0/g;
    .locals 3

    .line 1
    new-instance v0, Ln0/g;

    .line 2
    .line 3
    new-instance v1, Lj7/c;

    .line 4
    .line 5
    iget-object v2, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Landroid/view/ContentInfo$Builder;

    .line 8
    .line 9
    invoke-static {v2}, Landroidx/media3/exoplayer/analytics/b0;->l(Landroid/view/ContentInfo$Builder;)Landroid/view/ContentInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, v2}, Lj7/c;-><init>(Landroid/view/ContentInfo;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ln0/g;-><init>(Ln0/f;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public g(I)Lp3/c;
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    sget-object p1, Lp3/b;->a:Lp3/b;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lp3/a;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    new-instance p1, Lp3/a;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 19
    .line 20
    :cond_1
    iget-object p1, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lp3/a;

    .line 23
    .line 24
    :goto_0
    return-object p1
.end method

.method public getFlags()I
    .locals 1

    .line 1
    iget-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/b0;->d(Landroid/view/ContentInfo;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public h(Lcoil/memory/MemoryCache$Key;)Lk2/a;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public i()Landroid/view/ContentInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 4
    .line 5
    return-object v0
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lka/a;

    .line 4
    .line 5
    iget-object v0, v0, Lka/a;->X:Lta/a;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v0, v0, Lta/a;->i:Landroidx/lifecycle/d0;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/lifecycle/d0;->h(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public k(Lk/l;Lk/n;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Lk/f;

    .line 4
    .line 5
    iget-object p2, p2, Lk/f;->f:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public l(Ljava/lang/String;JILv4/k;JJ)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    iget-object v0, v1, Lj7/c;->b:Ljava/lang/Object;

    .line 3
    .line 4
    move-object v2, v0

    .line 5
    check-cast v2, Lr4/m;

    .line 6
    .line 7
    move-object/from16 v0, p5

    .line 8
    .line 9
    instance-of v0, v0, Lv4/k;

    .line 10
    .line 11
    :try_start_0
    new-instance v0, Lr4/k;

    .line 12
    .line 13
    new-instance v3, Lcom/google/android/gms/common/api/Status;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    move/from16 v14, p4

    .line 17
    .line 18
    :try_start_1
    invoke-direct {v3, v14, v4, v4, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    invoke-direct {v0, v3, v4}, Lr4/k;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g0(Ly4/l;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    goto :goto_0

    .line 31
    :catch_1
    move-exception v0

    .line 32
    move/from16 v14, p4

    .line 33
    .line 34
    :goto_0
    sget-object v3, Lr4/f;->k:Lv4/b;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    new-array v4, v4, [Ljava/lang/Object;

    .line 38
    .line 39
    iget-object v5, v3, Lv4/b;->a:Ljava/lang/String;

    .line 40
    .line 41
    const-string v6, "Result already set when calling onRequestCompleted"

    .line 42
    .line 43
    invoke-virtual {v3, v6, v4}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    :goto_1
    iget-object v0, v2, Lr4/m;->t:Lr4/f;

    .line 51
    .line 52
    iget-object v0, v0, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    move-object v5, v2

    .line 69
    check-cast v5, Lq4/z;

    .line 70
    .line 71
    move-object/from16 v6, p1

    .line 72
    .line 73
    move-wide/from16 v7, p2

    .line 74
    .line 75
    move/from16 v9, p4

    .line 76
    .line 77
    move-wide/from16 v10, p6

    .line 78
    .line 79
    move-wide/from16 v12, p8

    .line 80
    .line 81
    invoke-virtual/range {v5 .. v13}, Lq4/z;->e(Ljava/lang/String;JIJJ)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_0
    return-void
.end method

.method public m(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo$Builder;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/analytics/b0;->u(Landroid/view/ContentInfo$Builder;Landroid/net/Uri;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public n()I
    .locals 1

    .line 1
    iget-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/b0;->z(Landroid/view/ContentInfo;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public o()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lj7/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/reflect/Type;

    .line 9
    .line 10
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    .line 11
    .line 12
    const-string v2, "Invalid EnumSet type: "

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v3, 0x0

    .line 24
    aget-object v1, v1, v3

    .line 25
    .line 26
    instance-of v3, v1, Ljava/lang/Class;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    check-cast v1, Ljava/lang/Class;

    .line 31
    .line 32
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :cond_0
    new-instance v1, Ll7/n;

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v1

    .line 59
    :cond_1
    new-instance v1, Ll7/n;

    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v1

    .line 81
    :pswitch_0
    const-string v0, " with no args"

    .line 82
    .line 83
    const-string v1, "Failed to invoke "

    .line 84
    .line 85
    iget-object v2, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 88
    .line 89
    const/4 v3, 0x0

    .line 90
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Ljava/lang/AssertionError;

    .line 97
    .line 98
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    throw v1

    .line 102
    :catch_1
    move-exception v3

    .line 103
    new-instance v4, Ljava/lang/RuntimeException;

    .line 104
    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-direct {v4, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    throw v4

    .line 128
    :catch_2
    move-exception v3

    .line 129
    new-instance v4, Ljava/lang/RuntimeException;

    .line 130
    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-direct {v4, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    throw v4

    .line 150
    nop

    .line 151
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public p(Landroid/view/View;Ln0/r1;Lcom/google/android/material/internal/e0;)Ln0/r1;
    .locals 5

    .line 1
    iget-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/material/navigationrail/NavigationRailView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/material/navigationrail/NavigationRailView;->h:Ljava/lang/Boolean;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :goto_0
    iget-object v2, p2, Ln0/r1;->a:Ln0/o1;

    .line 21
    .line 22
    const/4 v3, 0x7

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget v1, p3, Lcom/google/android/material/internal/e0;->b:I

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ln0/o1;->g(I)Lf0/c;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget v4, v4, Lf0/c;->b:I

    .line 32
    .line 33
    add-int/2addr v1, v4

    .line 34
    iput v1, p3, Lcom/google/android/material/internal/e0;->b:I

    .line 35
    .line 36
    :cond_1
    iget-object v1, v0, Lcom/google/android/material/navigationrail/NavigationRailView;->i:Ljava/lang/Boolean;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    :goto_1
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget v0, p3, Lcom/google/android/material/internal/e0;->d:I

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ln0/o1;->g(I)Lf0/c;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget v1, v1, Lf0/c;->d:I

    .line 60
    .line 61
    add-int/2addr v0, v1

    .line 62
    iput v0, p3, Lcom/google/android/material/internal/e0;->d:I

    .line 63
    .line 64
    :cond_3
    sget-object v0, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v1, 0x1

    .line 71
    if-ne v0, v1, :cond_4

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    const/4 v1, 0x0

    .line 75
    :goto_2
    invoke-virtual {p2}, Ln0/r1;->b()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {p2}, Ln0/r1;->c()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    iget v3, p3, Lcom/google/android/material/internal/e0;->a:I

    .line 84
    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    move v0, v2

    .line 88
    :cond_5
    add-int/2addr v3, v0

    .line 89
    iput v3, p3, Lcom/google/android/material/internal/e0;->a:I

    .line 90
    .line 91
    iget v0, p3, Lcom/google/android/material/internal/e0;->b:I

    .line 92
    .line 93
    iget v1, p3, Lcom/google/android/material/internal/e0;->c:I

    .line 94
    .line 95
    iget p3, p3, Lcom/google/android/material/internal/e0;->d:I

    .line 96
    .line 97
    invoke-virtual {p1, v3, v0, v1, p3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 98
    .line 99
    .line 100
    return-object p2
.end method

.method public q(Ljava/lang/String;JJJ)V
    .locals 12

    .line 1
    move-object v1, p0

    .line 2
    iget-object v0, v1, Lj7/c;->b:Ljava/lang/Object;

    .line 3
    .line 4
    move-object v2, v0

    .line 5
    check-cast v2, Lr4/m;

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/16 v4, 0x837

    .line 11
    .line 12
    invoke-direct {v0, v4, v3, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 13
    .line 14
    .line 15
    new-instance v3, Lr4/k;

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v3, v0, v4}, Lr4/k;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g0(Ly4/l;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    sget-object v3, Lr4/f;->k:Lv4/b;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    new-array v4, v4, [Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v5, v3, Lv4/b;->a:Ljava/lang/String;

    .line 32
    .line 33
    const-string v6, "Result already set when calling onRequestReplaced"

    .line 34
    .line 35
    invoke-virtual {v3, v6, v4}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object v0, v2, Lr4/m;->t:Lr4/f;

    .line 43
    .line 44
    iget-object v0, v0, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    move-object v3, v2

    .line 61
    check-cast v3, Lq4/z;

    .line 62
    .line 63
    const/16 v7, 0x837

    .line 64
    .line 65
    move-object v4, p1

    .line 66
    move-wide v5, p2

    .line 67
    move-wide/from16 v8, p4

    .line 68
    .line 69
    move-wide/from16 v10, p6

    .line 70
    .line 71
    invoke-virtual/range {v3 .. v11}, Lq4/z;->e(Ljava/lang/String;JIJJ)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_0
    return-void
.end method

.method public r(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lv4/w;

    .line 2
    .line 3
    check-cast p2, Lw5/d;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/google/android/gms/common/internal/a;->c:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/common/api/ComplianceOptions;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, -0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v0, v2, v2, v3, v1}, Lcom/google/android/gms/common/api/ComplianceOptions;-><init>(IIIZ)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->p()Landroid/os/IInterface;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lv4/d;

    .line 20
    .line 21
    new-instance v2, Lcom/google/android/gms/common/api/ApiMetadata;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Lcom/google/android/gms/common/api/ApiMetadata;-><init>(Lcom/google/android/gms/common/api/ComplianceOptions;)V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, Lp4/o;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iget-object v3, v3, Lp4/o;->j:Lp4/n;

    .line 35
    .line 36
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/cast/d0;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 40
    .line 41
    .line 42
    const/16 v2, 0x12

    .line 43
    .line 44
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/cast/a;->y(Landroid/os/Parcel;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->p()Landroid/os/IInterface;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lv4/d;

    .line 52
    .line 53
    new-instance v1, Lcom/google/android/gms/common/api/ApiMetadata;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Lcom/google/android/gms/common/api/ApiMetadata;-><init>(Lcom/google/android/gms/common/api/ComplianceOptions;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 63
    .line 64
    .line 65
    const/16 v1, 0x11

    .line 66
    .line 67
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/cast/a;->y(Landroid/os/Parcel;I)V

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    invoke-virtual {p2, p1}, Lw5/d;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public s()Landroidx/media/AudioAttributesImpl;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media/AudioAttributesImplApi21;

    .line 2
    .line 3
    iget-object v1, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/media/AudioAttributes$Builder;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroidx/media/AudioAttributesImplApi21;-><init>(Landroid/media/AudioAttributes;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo$Builder;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/analytics/b0;->v(Landroid/view/ContentInfo$Builder;Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setFlags(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo$Builder;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/analytics/b0;->t(Landroid/view/ContentInfo$Builder;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public t()Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 6

    .line 1
    iget-object v0, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/cast/MediaQueueItem;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 6
    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    iget-wide v1, v0, Lcom/google/android/gms/cast/MediaQueueItem;->d:D

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-wide v4, v0, Lcom/google/android/gms/cast/MediaQueueItem;->d:D

    .line 20
    .line 21
    cmpg-double v1, v4, v2

    .line 22
    .line 23
    if-ltz v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v1, "startTime cannot be negative or NaN."

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_1
    :goto_0
    iget-wide v4, v0, Lcom/google/android/gms/cast/MediaQueueItem;->e:D

    .line 35
    .line 36
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    iget-wide v4, v0, Lcom/google/android/gms/cast/MediaQueueItem;->f:D

    .line 43
    .line 44
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    iget-wide v4, v0, Lcom/google/android/gms/cast/MediaQueueItem;->f:D

    .line 51
    .line 52
    cmpg-double v1, v4, v2

    .line 53
    .line 54
    if-ltz v1, :cond_2

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string v1, "preloadTime cannot be negative or Nan."

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string v1, "playbackDuration cannot be NaN."

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const-string v1, "media cannot be null."

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lj7/c;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "ProviderMetadata{ componentName="

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Landroid/content/ComponentName;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " }"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "ContentInfoCompat{"

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Landroid/view/ContentInfo;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "}"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0

    .line 63
    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public u(I)Lo0/h;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public v(I)Lo0/h;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public w(Lm2/i;Lcoil/memory/MemoryCache$Key;Ln2/h;Ln2/g;)Lk2/a;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Lm2/i;->n:Lm2/b;

    .line 8
    .line 9
    iget-boolean v3, v3, Lm2/b;->a:Z

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    return-object v4

    .line 15
    :cond_0
    move-object/from16 v3, p0

    .line 16
    .line 17
    iget-object v5, v3, Lj7/c;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v5, Lc2/l;

    .line 20
    .line 21
    iget-object v5, v5, Lc2/l;->c:Lw8/i;

    .line 22
    .line 23
    invoke-virtual {v5}, Lw8/i;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Lk2/b;

    .line 28
    .line 29
    if-eqz v5, :cond_6

    .line 30
    .line 31
    iget-object v6, v5, Lk2/b;->a:Lk2/f;

    .line 32
    .line 33
    invoke-interface {v6, v1}, Lk2/f;->h(Lcoil/memory/MemoryCache$Key;)Lk2/a;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    if-nez v6, :cond_7

    .line 38
    .line 39
    iget-object v5, v5, Lk2/b;->b:Lc6/b;

    .line 40
    .line 41
    monitor-enter v5

    .line 42
    :try_start_0
    iget-object v6, v5, Lc6/b;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v6, Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    if-nez v6, :cond_1

    .line 54
    .line 55
    monitor-exit v5

    .line 56
    :goto_0
    move-object v6, v7

    .line 57
    goto :goto_5

    .line 58
    :cond_1
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const/4 v9, 0x0

    .line 63
    :goto_1
    if-ge v9, v8, :cond_4

    .line 64
    .line 65
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    check-cast v10, Lk2/e;

    .line 70
    .line 71
    iget-object v11, v10, Lk2/e;->b:Ljava/lang/ref/WeakReference;

    .line 72
    .line 73
    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    check-cast v11, Landroid/graphics/Bitmap;

    .line 78
    .line 79
    if-eqz v11, :cond_2

    .line 80
    .line 81
    new-instance v12, Lk2/a;

    .line 82
    .line 83
    iget-object v10, v10, Lk2/e;->c:Ljava/util/Map;

    .line 84
    .line 85
    invoke-direct {v12, v11, v10}, Lk2/a;-><init>(Landroid/graphics/Bitmap;Ljava/util/Map;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    goto :goto_4

    .line 91
    :cond_2
    move-object v12, v7

    .line 92
    :goto_2
    if-eqz v12, :cond_3

    .line 93
    .line 94
    move-object v7, v12

    .line 95
    goto :goto_3

    .line 96
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    :goto_3
    iget v6, v5, Lc6/b;->a:I

    .line 100
    .line 101
    add-int/lit8 v8, v6, 0x1

    .line 102
    .line 103
    iput v8, v5, Lc6/b;->a:I

    .line 104
    .line 105
    const/16 v8, 0xa

    .line 106
    .line 107
    if-lt v6, v8, :cond_5

    .line 108
    .line 109
    invoke-virtual {v5}, Lc6/b;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .line 111
    .line 112
    :cond_5
    monitor-exit v5

    .line 113
    goto :goto_0

    .line 114
    :goto_4
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    throw v0

    .line 116
    :cond_6
    move-object v6, v4

    .line 117
    :cond_7
    :goto_5
    if-eqz v6, :cond_19

    .line 118
    .line 119
    iget-object v5, v6, Lk2/a;->a:Landroid/graphics/Bitmap;

    .line 120
    .line 121
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    if-nez v7, :cond_8

    .line 126
    .line 127
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 128
    .line 129
    :cond_8
    invoke-static {v0, v7}, La1/b;->y(Lm2/i;Landroid/graphics/Bitmap$Config;)Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-nez v7, :cond_9

    .line 134
    .line 135
    :goto_6
    const/4 v8, 0x0

    .line 136
    goto/16 :goto_f

    .line 137
    .line 138
    :cond_9
    const-string v7, "coil#is_sampled"

    .line 139
    .line 140
    iget-object v9, v6, Lk2/a;->b:Ljava/util/Map;

    .line 141
    .line 142
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    instance-of v9, v7, Ljava/lang/Boolean;

    .line 147
    .line 148
    if-eqz v9, :cond_a

    .line 149
    .line 150
    check-cast v7, Ljava/lang/Boolean;

    .line 151
    .line 152
    goto :goto_7

    .line 153
    :cond_a
    move-object v7, v4

    .line 154
    :goto_7
    if-eqz v7, :cond_b

    .line 155
    .line 156
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    goto :goto_8

    .line 161
    :cond_b
    const/4 v7, 0x0

    .line 162
    :goto_8
    sget-object v9, Ln2/h;->c:Ln2/h;

    .line 163
    .line 164
    invoke-static {v2, v9}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    const/4 v10, 0x1

    .line 169
    if-eqz v9, :cond_d

    .line 170
    .line 171
    if-eqz v7, :cond_c

    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_c
    :goto_9
    const/4 v8, 0x1

    .line 175
    goto/16 :goto_f

    .line 176
    .line 177
    :cond_d
    const-string v9, "coil#transformation_size"

    .line 178
    .line 179
    iget-object v1, v1, Lcoil/memory/MemoryCache$Key;->b:Ljava/util/Map;

    .line 180
    .line 181
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Ljava/lang/String;

    .line 186
    .line 187
    if-eqz v1, :cond_e

    .line 188
    .line 189
    invoke-virtual/range {p3 .. p3}, Ln2/h;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    goto/16 :goto_f

    .line 198
    .line 199
    :cond_e
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    iget-object v9, v2, Ln2/h;->a:Lr4/b;

    .line 208
    .line 209
    instance-of v11, v9, Ln2/a;

    .line 210
    .line 211
    const v12, 0x7fffffff

    .line 212
    .line 213
    .line 214
    if-eqz v11, :cond_f

    .line 215
    .line 216
    check-cast v9, Ln2/a;

    .line 217
    .line 218
    iget v9, v9, Ln2/a;->c:I

    .line 219
    .line 220
    goto :goto_a

    .line 221
    :cond_f
    const v9, 0x7fffffff

    .line 222
    .line 223
    .line 224
    :goto_a
    iget-object v2, v2, Ln2/h;->b:Lr4/b;

    .line 225
    .line 226
    instance-of v11, v2, Ln2/a;

    .line 227
    .line 228
    if-eqz v11, :cond_10

    .line 229
    .line 230
    check-cast v2, Ln2/a;

    .line 231
    .line 232
    iget v2, v2, Ln2/a;->c:I

    .line 233
    .line 234
    move-object/from16 v11, p4

    .line 235
    .line 236
    goto :goto_b

    .line 237
    :cond_10
    move-object/from16 v11, p4

    .line 238
    .line 239
    const v2, 0x7fffffff

    .line 240
    .line 241
    .line 242
    :goto_b
    invoke-static {v1, v5, v9, v2, v11}, Ll5/a;->j(IIIILn2/g;)D

    .line 243
    .line 244
    .line 245
    move-result-wide v13

    .line 246
    invoke-static/range {p1 .. p1}, Lr2/d;->a(Lm2/i;)Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 251
    .line 252
    if-eqz v0, :cond_12

    .line 253
    .line 254
    cmpl-double v11, v13, v15

    .line 255
    .line 256
    if-lez v11, :cond_11

    .line 257
    .line 258
    move-wide v11, v15

    .line 259
    goto :goto_c

    .line 260
    :cond_11
    move-wide v11, v13

    .line 261
    :goto_c
    int-to-double v8, v9

    .line 262
    move/from16 p2, v5

    .line 263
    .line 264
    int-to-double v4, v1

    .line 265
    mul-double v4, v4, v11

    .line 266
    .line 267
    sub-double/2addr v8, v4

    .line 268
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    .line 269
    .line 270
    .line 271
    move-result-wide v4

    .line 272
    cmpg-double v1, v4, v15

    .line 273
    .line 274
    if-lez v1, :cond_c

    .line 275
    .line 276
    int-to-double v1, v2

    .line 277
    move/from16 v4, p2

    .line 278
    .line 279
    int-to-double v4, v4

    .line 280
    mul-double v11, v11, v4

    .line 281
    .line 282
    sub-double/2addr v1, v11

    .line 283
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 284
    .line 285
    .line 286
    move-result-wide v1

    .line 287
    cmpg-double v4, v1, v15

    .line 288
    .line 289
    if-gtz v4, :cond_16

    .line 290
    .line 291
    goto :goto_9

    .line 292
    :cond_12
    move v4, v5

    .line 293
    const/high16 v5, -0x80000000

    .line 294
    .line 295
    if-eq v9, v5, :cond_14

    .line 296
    .line 297
    if-ne v9, v12, :cond_13

    .line 298
    .line 299
    goto :goto_d

    .line 300
    :cond_13
    sub-int/2addr v9, v1

    .line 301
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-gt v1, v10, :cond_16

    .line 306
    .line 307
    :cond_14
    :goto_d
    if-eq v2, v5, :cond_c

    .line 308
    .line 309
    if-ne v2, v12, :cond_15

    .line 310
    .line 311
    goto/16 :goto_9

    .line 312
    .line 313
    :cond_15
    sub-int/2addr v2, v4

    .line 314
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-gt v1, v10, :cond_16

    .line 319
    .line 320
    goto/16 :goto_9

    .line 321
    .line 322
    :cond_16
    cmpg-double v1, v13, v15

    .line 323
    .line 324
    if-nez v1, :cond_17

    .line 325
    .line 326
    goto :goto_e

    .line 327
    :cond_17
    if-nez v0, :cond_18

    .line 328
    .line 329
    goto/16 :goto_6

    .line 330
    .line 331
    :cond_18
    :goto_e
    cmpl-double v0, v13, v15

    .line 332
    .line 333
    if-lez v0, :cond_c

    .line 334
    .line 335
    if-eqz v7, :cond_c

    .line 336
    .line 337
    goto/16 :goto_6

    .line 338
    .line 339
    :goto_f
    if-eqz v8, :cond_19

    .line 340
    .line 341
    move-object v4, v6

    .line 342
    goto :goto_10

    .line 343
    :cond_19
    const/4 v4, 0x0

    .line 344
    :goto_10
    return-object v4
.end method

.method public x(Lm2/i;Ljava/lang/Object;Lm2/m;Lc2/d;)Lcoil/memory/MemoryCache$Key;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p4, p0, Lj7/c;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p4, Lc2/l;

    .line 7
    .line 8
    iget-object p4, p4, Lc2/l;->g:Lc2/c;

    .line 9
    .line 10
    iget-object p4, p4, Lc2/c;->c:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    const/4 v3, 0x0

    .line 19
    if-ge v2, v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lw8/f;

    .line 26
    .line 27
    iget-object v5, v4, Lw8/f;->a:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v5, Li2/b;

    .line 30
    .line 31
    iget-object v4, v4, Lw8/f;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v4, Ljava/lang/Class;

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    const-string v4, "null cannot be cast to non-null type coil.key.Keyer<kotlin.Any>"

    .line 46
    .line 47
    invoke-static {v5, v4}, Lj9/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v5, p2, p3}, Li2/b;->a(Ljava/lang/Object;Lm2/m;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move-object v4, v3

    .line 61
    :goto_1
    if-nez v4, :cond_2

    .line 62
    .line 63
    return-object v3

    .line 64
    :cond_2
    iget-object p2, p1, Lm2/i;->x:Lm2/o;

    .line 65
    .line 66
    iget-object p2, p2, Lm2/o;->a:Ljava/util/Map;

    .line 67
    .line 68
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result p4

    .line 72
    sget-object v0, Lx8/s;->a:Lx8/s;

    .line 73
    .line 74
    if-eqz p4, :cond_3

    .line 75
    .line 76
    move-object p4, v0

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    new-instance p4, Ljava/util/LinkedHashMap;

    .line 79
    .line 80
    invoke-direct {p4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_7

    .line 96
    .line 97
    :goto_2
    iget-object p1, p1, Lm2/i;->f:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-eqz p2, :cond_4

    .line 104
    .line 105
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-eqz p2, :cond_4

    .line 110
    .line 111
    new-instance p1, Lcoil/memory/MemoryCache$Key;

    .line 112
    .line 113
    invoke-direct {p1, v4, v0}, Lcoil/memory/MemoryCache$Key;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 114
    .line 115
    .line 116
    return-object p1

    .line 117
    :cond_4
    invoke-static {p4}, Lx8/u;->s(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result p4

    .line 125
    if-nez p4, :cond_6

    .line 126
    .line 127
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result p4

    .line 131
    :goto_3
    if-ge v1, p4, :cond_5

    .line 132
    .line 133
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lp2/a;

    .line 138
    .line 139
    const-string v2, "coil#transformation_"

    .line 140
    .line 141
    invoke-static {v1, v2}, La/e;->n(ILjava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    iget-object v0, v0, Lp2/a;->e:Ljava/lang/String;

    .line 146
    .line 147
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    add-int/lit8 v1, v1, 0x1

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_5
    iget-object p1, p3, Lm2/m;->d:Ln2/h;

    .line 154
    .line 155
    invoke-virtual {p1}, Ln2/h;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    const-string p3, "coil#transformation_size"

    .line 160
    .line 161
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    :cond_6
    new-instance p1, Lcoil/memory/MemoryCache$Key;

    .line 165
    .line 166
    invoke-direct {p1, v4, p2}, Lcoil/memory/MemoryCache$Key;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 167
    .line 168
    .line 169
    return-object p1

    .line 170
    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Ljava/util/Map$Entry;

    .line 175
    .line 176
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    new-instance p1, Ljava/lang/ClassCastException;

    .line 184
    .line 185
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 186
    .line 187
    .line 188
    throw p1
.end method
