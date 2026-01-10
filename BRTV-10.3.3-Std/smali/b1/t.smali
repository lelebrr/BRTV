.class public final Lb1/t;
.super Landroid/text/style/ReplacementSpan;
.source "MyApplication"


# instance fields
.field public final a:Landroid/graphics/Paint$FontMetricsInt;

.field public final b:Lb1/m;

.field public c:F


# direct methods
.method public constructor <init>(Lb1/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lb1/t;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 10
    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    .line 13
    iput v0, p0, Lb1/t;->c:F

    .line 14
    .line 15
    const-string v0, "metadata cannot be null"

    .line 16
    .line 17
    invoke-static {p1, v0}, La2/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lb1/t;->b:Lb1/m;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 10

    .line 1
    move-object/from16 v7, p9

    .line 2
    .line 3
    invoke-static {}, Lb1/i;->a()Lb1/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move/from16 v0, p7

    .line 11
    .line 12
    int-to-float v5, v0

    .line 13
    move-object v8, p0

    .line 14
    iget-object v0, v8, Lb1/t;->b:Lb1/m;

    .line 15
    .line 16
    iget-object v1, v0, Lb1/m;->b:La0/f;

    .line 17
    .line 18
    iget-object v2, v1, La0/f;->e:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Landroid/graphics/Typeface;

    .line 21
    .line 22
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 27
    .line 28
    .line 29
    iget v0, v0, Lb1/m;->a:I

    .line 30
    .line 31
    mul-int/lit8 v2, v0, 0x2

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    iget-object v0, v1, La0/f;->c:Ljava/lang/Object;

    .line 35
    .line 36
    move-object v1, v0

    .line 37
    check-cast v1, [C

    .line 38
    .line 39
    move-object v0, p1

    .line 40
    move v4, p5

    .line 41
    move-object/from16 v6, p9

    .line 42
    .line 43
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4

    .line 1
    iget-object p2, p0, Lb1/t;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 4
    .line 5
    .line 6
    iget p1, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 7
    .line 8
    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 9
    .line 10
    sub-int/2addr p1, p3

    .line 11
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    int-to-float p1, p1

    .line 16
    const/high16 p3, 0x3f800000    # 1.0f

    .line 17
    .line 18
    mul-float p1, p1, p3

    .line 19
    .line 20
    iget-object p3, p0, Lb1/t;->b:Lb1/m;

    .line 21
    .line 22
    invoke-virtual {p3}, Lb1/m;->c()Lc1/a;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    const/16 v0, 0xe

    .line 27
    .line 28
    invoke-virtual {p4, v0}, Lc1/c;->a(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object v3, p4, Lc1/c;->d:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    iget p4, p4, Lc1/c;->a:I

    .line 40
    .line 41
    add-int/2addr v1, p4

    .line 42
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p4, 0x0

    .line 48
    :goto_0
    int-to-float p4, p4

    .line 49
    div-float/2addr p1, p4

    .line 50
    iput p1, p0, Lb1/t;->c:F

    .line 51
    .line 52
    invoke-virtual {p3}, Lb1/m;->c()Lc1/a;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, v0}, Lc1/c;->a(I)I

    .line 57
    .line 58
    .line 59
    move-result p4

    .line 60
    if-eqz p4, :cond_1

    .line 61
    .line 62
    iget-object v0, p1, Lc1/c;->d:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 65
    .line 66
    iget p1, p1, Lc1/c;->a:I

    .line 67
    .line 68
    add-int/2addr p4, p1

    .line 69
    invoke-virtual {v0, p4}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {p3}, Lb1/m;->c()Lc1/a;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/16 p3, 0xc

    .line 77
    .line 78
    invoke-virtual {p1, p3}, Lc1/c;->a(I)I

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    if-eqz p3, :cond_2

    .line 83
    .line 84
    iget-object p4, p1, Lc1/c;->d:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p4, Ljava/nio/ByteBuffer;

    .line 87
    .line 88
    iget p1, p1, Lc1/c;->a:I

    .line 89
    .line 90
    add-int/2addr p3, p1

    .line 91
    invoke-virtual {p4, p3}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    :cond_2
    int-to-float p1, v2

    .line 96
    iget p3, p0, Lb1/t;->c:F

    .line 97
    .line 98
    mul-float p1, p1, p3

    .line 99
    .line 100
    float-to-int p1, p1

    .line 101
    int-to-short p1, p1

    .line 102
    if-eqz p5, :cond_3

    .line 103
    .line 104
    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 105
    .line 106
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 107
    .line 108
    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 109
    .line 110
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 111
    .line 112
    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 113
    .line 114
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 115
    .line 116
    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 117
    .line 118
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 119
    .line 120
    :cond_3
    return p1
.end method
