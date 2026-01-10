.class public final Lg3/c;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lx2/x;
.implements Lx2/u;


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    iput p2, p0, Lg3/c;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p2, "Argument must not be null"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lr3/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lg3/c;->a:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    return-void
.end method

.method private final b()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    iget v0, p0, Lg3/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lg3/c;->a:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    check-cast v0, Li3/d;

    .line 9
    .line 10
    iget-object v0, v0, Li3/d;->a:Li3/c;

    .line 11
    .line 12
    iget-object v0, v0, Li3/c;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Li3/i;

    .line 15
    .line 16
    iget-object v1, v0, Li3/i;->a:Lt2/d;

    .line 17
    .line 18
    iget-object v2, v1, Lt2/d;->d:Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget-object v3, v1, Lt2/d;->i:[B

    .line 25
    .line 26
    array-length v3, v3

    .line 27
    add-int/2addr v2, v3

    .line 28
    iget-object v1, v1, Lt2/d;->j:[I

    .line 29
    .line 30
    array-length v1, v1

    .line 31
    mul-int/lit8 v1, v1, 0x4

    .line 32
    .line 33
    add-int/2addr v1, v2

    .line 34
    iget v0, v0, Li3/i;->n:I

    .line 35
    .line 36
    add-int/2addr v1, v0

    .line 37
    return v1

    .line 38
    :pswitch_0
    iget-object v0, p0, Lg3/c;->a:Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    mul-int v0, v0, v1

    .line 49
    .line 50
    mul-int/lit8 v0, v0, 0x4

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    return v0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/lang/Class;
    .locals 1

    .line 1
    iget v0, p0, Lg3/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-class v0, Li3/d;

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_0
    iget-object v0, p0, Lg3/c;->a:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 7

    .line 1
    iget v0, p0, Lg3/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lg3/c;->a:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    check-cast v0, Li3/d;

    .line 9
    .line 10
    invoke-virtual {v0}, Li3/d;->stop()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Li3/d;->d:Z

    .line 15
    .line 16
    iget-object v0, v0, Li3/d;->a:Li3/c;

    .line 17
    .line 18
    iget-object v0, v0, Li3/c;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Li3/i;

    .line 21
    .line 22
    iget-object v2, v0, Li3/i;->c:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 25
    .line 26
    .line 27
    iget-object v2, v0, Li3/i;->l:Landroid/graphics/Bitmap;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    iget-object v4, v0, Li3/i;->e:Ly2/a;

    .line 33
    .line 34
    invoke-interface {v4, v2}, Ly2/a;->e(Landroid/graphics/Bitmap;)V

    .line 35
    .line 36
    .line 37
    iput-object v3, v0, Li3/i;->l:Landroid/graphics/Bitmap;

    .line 38
    .line 39
    :cond_0
    const/4 v2, 0x0

    .line 40
    iput-boolean v2, v0, Li3/i;->f:Z

    .line 41
    .line 42
    iget-object v2, v0, Li3/i;->i:Li3/f;

    .line 43
    .line 44
    iget-object v4, v0, Li3/i;->d:Lcom/bumptech/glide/o;

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v4, v2}, Lcom/bumptech/glide/o;->l(Lo3/h;)V

    .line 49
    .line 50
    .line 51
    iput-object v3, v0, Li3/i;->i:Li3/f;

    .line 52
    .line 53
    :cond_1
    iget-object v2, v0, Li3/i;->k:Li3/f;

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    invoke-virtual {v4, v2}, Lcom/bumptech/glide/o;->l(Lo3/h;)V

    .line 58
    .line 59
    .line 60
    iput-object v3, v0, Li3/i;->k:Li3/f;

    .line 61
    .line 62
    :cond_2
    iget-object v2, v0, Li3/i;->m:Li3/f;

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-virtual {v4, v2}, Lcom/bumptech/glide/o;->l(Lo3/h;)V

    .line 67
    .line 68
    .line 69
    iput-object v3, v0, Li3/i;->m:Li3/f;

    .line 70
    .line 71
    :cond_3
    iget-object v2, v0, Li3/i;->a:Lt2/d;

    .line 72
    .line 73
    iput-object v3, v2, Lt2/d;->l:Lt2/b;

    .line 74
    .line 75
    iget-object v4, v2, Lt2/d;->i:[B

    .line 76
    .line 77
    iget-object v5, v2, Lt2/d;->c:La7/f;

    .line 78
    .line 79
    if-eqz v4, :cond_5

    .line 80
    .line 81
    iget-object v6, v5, La7/f;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v6, Ly2/f;

    .line 84
    .line 85
    if-nez v6, :cond_4

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    invoke-virtual {v6, v4}, Ly2/f;->h(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_5
    :goto_0
    iget-object v4, v2, Lt2/d;->j:[I

    .line 92
    .line 93
    if-eqz v4, :cond_7

    .line 94
    .line 95
    iget-object v6, v5, La7/f;->c:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v6, Ly2/f;

    .line 98
    .line 99
    if-nez v6, :cond_6

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_6
    invoke-virtual {v6, v4}, Ly2/f;->h(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_7
    :goto_1
    iget-object v4, v2, Lt2/d;->m:Landroid/graphics/Bitmap;

    .line 106
    .line 107
    if-eqz v4, :cond_8

    .line 108
    .line 109
    iget-object v6, v5, La7/f;->b:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v6, Ly2/a;

    .line 112
    .line 113
    invoke-interface {v6, v4}, Ly2/a;->e(Landroid/graphics/Bitmap;)V

    .line 114
    .line 115
    .line 116
    :cond_8
    iput-object v3, v2, Lt2/d;->m:Landroid/graphics/Bitmap;

    .line 117
    .line 118
    iput-object v3, v2, Lt2/d;->d:Ljava/nio/ByteBuffer;

    .line 119
    .line 120
    iput-object v3, v2, Lt2/d;->s:Ljava/lang/Boolean;

    .line 121
    .line 122
    iget-object v2, v2, Lt2/d;->e:[B

    .line 123
    .line 124
    if-eqz v2, :cond_a

    .line 125
    .line 126
    iget-object v3, v5, La7/f;->c:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v3, Ly2/f;

    .line 129
    .line 130
    if-nez v3, :cond_9

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_9
    invoke-virtual {v3, v2}, Ly2/f;->h(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    :cond_a
    :goto_2
    iput-boolean v1, v0, Li3/i;->j:Z

    .line 137
    .line 138
    :pswitch_0
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lg3/c;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    return-object v0
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget v0, p0, Lg3/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lg3/c;->a:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    instance-of v1, v0, Li3/d;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    check-cast v0, Li3/d;

    .line 27
    .line 28
    iget-object v0, v0, Li3/d;->a:Li3/c;

    .line 29
    .line 30
    iget-object v0, v0, Li3/c;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Li3/i;

    .line 33
    .line 34
    iget-object v0, v0, Li3/i;->l:Landroid/graphics/Bitmap;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p0, Lg3/c;->a:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    check-cast v0, Li3/d;

    .line 43
    .line 44
    iget-object v0, v0, Li3/d;->a:Li3/c;

    .line 45
    .line 46
    iget-object v0, v0, Li3/c;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Li3/i;

    .line 49
    .line 50
    iget-object v0, v0, Li3/i;->l:Landroid/graphics/Bitmap;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
