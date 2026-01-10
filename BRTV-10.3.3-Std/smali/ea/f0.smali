.class public final Lea/f0;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:J

.field public final e:Lea/u;

.field public final f:Lra/d;

.field public g:J

.field public h:I

.field public final i:I

.field public j:I

.field public final k:Lra/d;

.field public final synthetic l:Lorg/bitspark/android/Spark;


# direct methods
.method public constructor <init>(Lorg/bitspark/android/Spark;Lea/u;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lea/f0;->l:Lorg/bitspark/android/Spark;

    .line 5
    .line 6
    const-string p1, "J9qLu6mu8KkO+4usrbvevg==\n"

    .line 7
    .line 8
    const-string v0, "d7bqwszcu8w=\n"

    .line 9
    .line 10
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lea/f0;->a:Ljava/lang/String;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lea/f0;->b:Z

    .line 18
    .line 19
    iput-boolean p1, p0, Lea/f0;->c:Z

    .line 20
    .line 21
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    iput-wide v0, p0, Lea/f0;->d:J

    .line 24
    .line 25
    new-instance v2, Lra/d;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v2, p0, v3}, Lra/d;-><init>(Lea/f0;I)V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lea/f0;->f:Lra/d;

    .line 32
    .line 33
    iput-wide v0, p0, Lea/f0;->g:J

    .line 34
    .line 35
    const/4 v0, 0x5

    .line 36
    iput v0, p0, Lea/f0;->h:I

    .line 37
    .line 38
    const/4 v0, 0x4

    .line 39
    iput v0, p0, Lea/f0;->i:I

    .line 40
    .line 41
    iput p1, p0, Lea/f0;->j:I

    .line 42
    .line 43
    new-instance p1, Lra/d;

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    invoke-direct {p1, p0, v0}, Lra/d;-><init>(Lea/f0;I)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lea/f0;->k:Lra/d;

    .line 50
    .line 51
    iput-object p2, p0, Lea/f0;->e:Lea/u;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lea/f0;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lea/f0;->c:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public final b(J)V
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, p0, Lea/f0;->l:Lorg/bitspark/android/Spark;

    .line 9
    .line 10
    iget-object v3, v2, Lorg/bitspark/android/Spark;->L1:Lra/a;

    .line 11
    .line 12
    invoke-interface {v3}, Lra/a;->getDuration()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    cmp-long v5, v3, v0

    .line 17
    .line 18
    if-gtz v5, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const-wide/16 v0, 0x64

    .line 22
    .line 23
    mul-long v0, v0, p1

    .line 24
    .line 25
    div-long/2addr v0, v3

    .line 26
    long-to-int v1, v0

    .line 27
    iget-object v0, v2, Lorg/bitspark/android/Spark;->z1:Landroid/widget/SeekBar;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v2, Lorg/bitspark/android/Spark;->B1:Landroid/widget/TextView;

    .line 33
    .line 34
    const-wide/16 v3, 0x3e8

    .line 35
    .line 36
    div-long/2addr p1, v3

    .line 37
    long-to-int p2, p1

    .line 38
    int-to-long p1, p2

    .line 39
    invoke-static {p1, p2}, Lorg/bitspark/android/utils/m;->q(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, v2, Lorg/bitspark/android/Spark;->z1:Landroid/widget/SeekBar;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iget-object p2, v2, Lorg/bitspark/android/Spark;->z1:Landroid/widget/SeekBar;

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    int-to-float p2, p2

    .line 67
    add-float/2addr p1, p2

    .line 68
    iget-object p2, v2, Lorg/bitspark/android/Spark;->B1:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    int-to-float p2, p2

    .line 75
    const/high16 v0, 0x40000000    # 2.0f

    .line 76
    .line 77
    div-float/2addr p2, v0

    .line 78
    sub-float/2addr p1, p2

    .line 79
    const/high16 p2, 0x42c80000    # 100.0f

    .line 80
    .line 81
    add-float/2addr p1, p2

    .line 82
    iget-object p2, v2, Lorg/bitspark/android/Spark;->B1:Landroid/widget/TextView;

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Landroid/view/View;->setX(F)V

    .line 85
    .line 86
    .line 87
    iget-object p1, v2, Lorg/bitspark/android/Spark;->B1:Landroid/widget/TextView;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    const/16 p2, 0x54

    .line 94
    .line 95
    if-ge p1, p2, :cond_2

    .line 96
    .line 97
    iget-object p1, v2, Lorg/bitspark/android/Spark;->B1:Landroid/widget/TextView;

    .line 98
    .line 99
    const/4 p2, 0x4

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    iget-object p1, v2, Lorg/bitspark/android/Spark;->B1:Landroid/widget/TextView;

    .line 105
    .line 106
    const/4 p2, 0x0

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    :goto_0
    return-void
.end method
