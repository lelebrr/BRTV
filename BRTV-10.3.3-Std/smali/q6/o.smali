.class public final Lq6/o;
.super Lq6/l;
.source "MyApplication"


# instance fields
.field public final l:Lq6/m;

.field public m:Lq6/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lq6/e;Lq6/m;Lq6/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lq6/l;-><init>(Landroid/content/Context;Lq6/e;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lq6/o;->l:Lq6/m;

    .line 5
    .line 6
    iput-object p0, p3, Lq6/m;->b:Lq6/l;

    .line 7
    .line 8
    iput-object p4, p0, Lq6/o;->m:Lq6/n;

    .line 9
    .line 10
    iput-object p0, p4, Lq6/n;->a:Lq6/o;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lq6/o;->l:Lq6/m;

    .line 33
    .line 34
    invoke-virtual {p0}, Lq6/l;->b()F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget-object v2, v0, Lq6/m;->a:Lq6/e;

    .line 39
    .line 40
    invoke-virtual {v2}, Lq6/e;->a()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1, v1}, Lq6/m;->a(Landroid/graphics/Canvas;F)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lq6/o;->l:Lq6/m;

    .line 47
    .line 48
    iget-object v7, p0, Lq6/l;->i:Landroid/graphics/Paint;

    .line 49
    .line 50
    invoke-virtual {v0, p1, v7}, Lq6/m;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    :goto_0
    iget-object v1, p0, Lq6/o;->m:Lq6/n;

    .line 55
    .line 56
    iget-object v2, v1, Lq6/n;->c:[I

    .line 57
    .line 58
    array-length v3, v2

    .line 59
    if-ge v0, v3, :cond_1

    .line 60
    .line 61
    iget-object v3, p0, Lq6/o;->l:Lq6/m;

    .line 62
    .line 63
    iget-object v1, v1, Lq6/n;->b:[F

    .line 64
    .line 65
    mul-int/lit8 v4, v0, 0x2

    .line 66
    .line 67
    aget v5, v1, v4

    .line 68
    .line 69
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    aget v6, v1, v4

    .line 72
    .line 73
    aget v8, v2, v0

    .line 74
    .line 75
    move-object v1, v3

    .line 76
    move-object v2, p1

    .line 77
    move-object v3, v7

    .line 78
    move v4, v5

    .line 79
    move v5, v6

    .line 80
    move v6, v8

    .line 81
    invoke-virtual/range {v1 .. v6}, Lq6/m;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_1
    return-void
.end method

.method public final f(ZZZ)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lq6/l;->f(ZZZ)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0}, Lq6/l;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lq6/o;->m:Lq6/n;

    .line 12
    .line 13
    invoke-virtual {v0}, Lq6/n;->a()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lq6/l;->c:Lq6/a;

    .line 17
    .line 18
    iget-object v1, p0, Lq6/l;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const-string v0, "animator_duration_scale"

    .line 28
    .line 29
    const/high16 v2, 0x3f800000    # 1.0f

    .line 30
    .line 31
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    if-nez p3, :cond_1

    .line 38
    .line 39
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 p3, 0x15

    .line 42
    .line 43
    if-gt p1, p3, :cond_2

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    cmpl-float p1, v0, p1

    .line 47
    .line 48
    if-lez p1, :cond_2

    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lq6/o;->m:Lq6/n;

    .line 51
    .line 52
    invoke-virtual {p1}, Lq6/n;->e()V

    .line 53
    .line 54
    .line 55
    :cond_2
    return p2
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lq6/o;->l:Lq6/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq6/m;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lq6/o;->l:Lq6/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq6/m;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
