.class final Landroidx/media3/ui/SubtitlePainter;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field private static final INNER_PADDING_RATIO:F = 0.125f

.field private static final TAG:Ljava/lang/String; = "SubtitlePainter"


# instance fields
.field private backgroundColor:I

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private bitmapRect:Landroid/graphics/Rect;

.field private bottomPaddingFraction:F

.field private cueBitmap:Landroid/graphics/Bitmap;

.field private cueBitmapHeight:F

.field private cueLine:F

.field private cueLineAnchor:I

.field private cueLineType:I

.field private cuePosition:F

.field private cuePositionAnchor:I

.field private cueSize:F

.field private cueText:Ljava/lang/CharSequence;

.field private cueTextAlignment:Landroid/text/Layout$Alignment;

.field private cueTextSizePx:F

.field private defaultTextSizePx:F

.field private edgeColor:I

.field private edgeLayout:Landroid/text/StaticLayout;

.field private edgeType:I

.field private foregroundColor:I

.field private final outlineWidth:F

.field private parentBottom:I

.field private parentLeft:I

.field private parentRight:I

.field private parentTop:I

.field private final shadowOffset:F

.field private final shadowRadius:F

.field private final spacingAdd:F

.field private final spacingMult:F

.field private textLayout:Landroid/text/StaticLayout;

.field private textLeft:I

.field private textPaddingX:I

.field private final textPaint:Landroid/text/TextPaint;

.field private textTop:I

.field private windowColor:I

.field private final windowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x1010217

    .line 5
    .line 6
    .line 7
    const v1, 0x1010218

    .line 8
    .line 9
    .line 10
    filled-new-array {v0, v1}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    int-to-float v1, v1

    .line 25
    iput v1, p0, Landroidx/media3/ui/SubtitlePainter;->spacingAdd:F

    .line 26
    .line 27
    const/high16 v1, 0x3f800000    # 1.0f

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, p0, Landroidx/media3/ui/SubtitlePainter;->spacingMult:F

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 48
    .line 49
    int-to-float p1, p1

    .line 50
    const/high16 v0, 0x40000000    # 2.0f

    .line 51
    .line 52
    mul-float p1, p1, v0

    .line 53
    .line 54
    const/high16 v0, 0x43200000    # 160.0f

    .line 55
    .line 56
    div-float/2addr p1, v0

    .line 57
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    int-to-float p1, p1

    .line 62
    iput p1, p0, Landroidx/media3/ui/SubtitlePainter;->outlineWidth:F

    .line 63
    .line 64
    iput p1, p0, Landroidx/media3/ui/SubtitlePainter;->shadowRadius:F

    .line 65
    .line 66
    iput p1, p0, Landroidx/media3/ui/SubtitlePainter;->shadowOffset:F

    .line 67
    .line 68
    new-instance p1, Landroid/text/TextPaint;

    .line 69
    .line 70
    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 74
    .line 75
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 79
    .line 80
    .line 81
    new-instance p1, Landroid/graphics/Paint;

    .line 82
    .line 83
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Landroidx/media3/ui/SubtitlePainter;->windowPaint:Landroid/graphics/Paint;

    .line 87
    .line 88
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    .line 90
    .line 91
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    .line 95
    .line 96
    new-instance p1, Landroid/graphics/Paint;

    .line 97
    .line 98
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Landroidx/media3/ui/SubtitlePainter;->bitmapPaint:Landroid/graphics/Paint;

    .line 102
    .line 103
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method private static areCharSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 1
    if-eq p0, p1, :cond_1

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method private drawBitmapLayout(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/ui/SubtitlePainter;->bitmapPaint:Landroid/graphics/Paint;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private drawLayout(Landroid/graphics/Canvas;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/ui/SubtitlePainter;->drawTextLayout(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Landroidx/media3/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Landroidx/media3/ui/SubtitlePainter;->drawBitmapLayout(Landroid/graphics/Canvas;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method private drawTextLayout(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/SubtitlePainter;->edgeLayout:Landroid/text/StaticLayout;

    .line 4
    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget v3, p0, Landroidx/media3/ui/SubtitlePainter;->textLeft:I

    .line 16
    .line 17
    int-to-float v3, v3

    .line 18
    iget v4, p0, Landroidx/media3/ui/SubtitlePainter;->textTop:I

    .line 19
    .line 20
    int-to-float v4, v4

    .line 21
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 22
    .line 23
    .line 24
    iget v3, p0, Landroidx/media3/ui/SubtitlePainter;->windowColor:I

    .line 25
    .line 26
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-lez v3, :cond_1

    .line 31
    .line 32
    iget-object v3, p0, Landroidx/media3/ui/SubtitlePainter;->windowPaint:Landroid/graphics/Paint;

    .line 33
    .line 34
    iget v4, p0, Landroidx/media3/ui/SubtitlePainter;->windowColor:I

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    .line 38
    .line 39
    iget v3, p0, Landroidx/media3/ui/SubtitlePainter;->textPaddingX:I

    .line 40
    .line 41
    neg-int v3, v3

    .line 42
    int-to-float v5, v3

    .line 43
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iget v4, p0, Landroidx/media3/ui/SubtitlePainter;->textPaddingX:I

    .line 48
    .line 49
    add-int/2addr v3, v4

    .line 50
    int-to-float v7, v3

    .line 51
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    int-to-float v8, v3

    .line 56
    iget-object v9, p0, Landroidx/media3/ui/SubtitlePainter;->windowPaint:Landroid/graphics/Paint;

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    move-object v4, p1

    .line 60
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget v3, p0, Landroidx/media3/ui/SubtitlePainter;->edgeType:I

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    const/4 v5, 0x1

    .line 67
    if-ne v3, v5, :cond_2

    .line 68
    .line 69
    iget-object v3, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 70
    .line 71
    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 72
    .line 73
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 77
    .line 78
    iget v5, p0, Landroidx/media3/ui/SubtitlePainter;->outlineWidth:F

    .line 79
    .line 80
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 84
    .line 85
    iget v5, p0, Landroidx/media3/ui/SubtitlePainter;->edgeColor:I

    .line 86
    .line 87
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    .line 89
    .line 90
    iget-object v3, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 91
    .line 92
    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 93
    .line 94
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    const/4 v6, 0x2

    .line 102
    if-ne v3, v6, :cond_3

    .line 103
    .line 104
    iget-object v1, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 105
    .line 106
    iget v3, p0, Landroidx/media3/ui/SubtitlePainter;->shadowRadius:F

    .line 107
    .line 108
    iget v5, p0, Landroidx/media3/ui/SubtitlePainter;->shadowOffset:F

    .line 109
    .line 110
    iget v6, p0, Landroidx/media3/ui/SubtitlePainter;->edgeColor:I

    .line 111
    .line 112
    invoke-virtual {v1, v3, v5, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    const/4 v6, 0x3

    .line 117
    if-eq v3, v6, :cond_4

    .line 118
    .line 119
    const/4 v7, 0x4

    .line 120
    if-ne v3, v7, :cond_8

    .line 121
    .line 122
    :cond_4
    if-ne v3, v6, :cond_5

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_5
    const/4 v5, 0x0

    .line 126
    :goto_0
    const/4 v3, -0x1

    .line 127
    if-eqz v5, :cond_6

    .line 128
    .line 129
    const/4 v6, -0x1

    .line 130
    goto :goto_1

    .line 131
    :cond_6
    iget v6, p0, Landroidx/media3/ui/SubtitlePainter;->edgeColor:I

    .line 132
    .line 133
    :goto_1
    if-eqz v5, :cond_7

    .line 134
    .line 135
    iget v3, p0, Landroidx/media3/ui/SubtitlePainter;->edgeColor:I

    .line 136
    .line 137
    :cond_7
    iget v5, p0, Landroidx/media3/ui/SubtitlePainter;->shadowRadius:F

    .line 138
    .line 139
    const/high16 v7, 0x40000000    # 2.0f

    .line 140
    .line 141
    div-float/2addr v5, v7

    .line 142
    iget-object v7, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 143
    .line 144
    iget v8, p0, Landroidx/media3/ui/SubtitlePainter;->foregroundColor:I

    .line 145
    .line 146
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    .line 148
    .line 149
    iget-object v7, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 150
    .line 151
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 152
    .line 153
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    .line 155
    .line 156
    iget-object v7, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 157
    .line 158
    iget v8, p0, Landroidx/media3/ui/SubtitlePainter;->shadowRadius:F

    .line 159
    .line 160
    neg-float v9, v5

    .line 161
    invoke-virtual {v7, v8, v9, v9, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 165
    .line 166
    .line 167
    iget-object v1, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 168
    .line 169
    iget v6, p0, Landroidx/media3/ui/SubtitlePainter;->shadowRadius:F

    .line 170
    .line 171
    invoke-virtual {v1, v6, v5, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 172
    .line 173
    .line 174
    :cond_8
    :goto_2
    iget-object v1, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 175
    .line 176
    iget v3, p0, Landroidx/media3/ui/SubtitlePainter;->foregroundColor:I

    .line 177
    .line 178
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    .line 180
    .line 181
    iget-object v1, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 182
    .line 183
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 184
    .line 185
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 192
    .line 193
    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1, v1, v1, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 198
    .line 199
    .line 200
    :cond_9
    :goto_3
    return-void
.end method

.method private setupBitmapLayout()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/ui/SubtitlePainter;->parentRight:I

    .line 4
    .line 5
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->parentLeft:I

    .line 6
    .line 7
    sub-int/2addr v1, v2

    .line 8
    iget v3, p0, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    .line 9
    .line 10
    iget v4, p0, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    .line 11
    .line 12
    sub-int/2addr v3, v4

    .line 13
    int-to-float v2, v2

    .line 14
    int-to-float v1, v1

    .line 15
    iget v5, p0, Landroidx/media3/ui/SubtitlePainter;->cuePosition:F

    .line 16
    .line 17
    mul-float v5, v5, v1

    .line 18
    .line 19
    add-float/2addr v5, v2

    .line 20
    int-to-float v2, v4

    .line 21
    int-to-float v3, v3

    .line 22
    iget v4, p0, Landroidx/media3/ui/SubtitlePainter;->cueLine:F

    .line 23
    .line 24
    mul-float v4, v4, v3

    .line 25
    .line 26
    add-float/2addr v4, v2

    .line 27
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueSize:F

    .line 28
    .line 29
    mul-float v1, v1, v2

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmapHeight:F

    .line 36
    .line 37
    const v6, -0x800001

    .line 38
    .line 39
    .line 40
    cmpl-float v6, v2, v6

    .line 41
    .line 42
    if-eqz v6, :cond_0

    .line 43
    .line 44
    mul-float v3, v3, v2

    .line 45
    .line 46
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    int-to-float v2, v1

    .line 52
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    int-to-float v3, v3

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    int-to-float v0, v0

    .line 62
    div-float/2addr v3, v0

    .line 63
    mul-float v3, v3, v2

    .line 64
    .line 65
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    :goto_0
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->cuePositionAnchor:I

    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    const/4 v6, 0x2

    .line 73
    if-ne v2, v6, :cond_1

    .line 74
    .line 75
    int-to-float v2, v1

    .line 76
    :goto_1
    sub-float/2addr v5, v2

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    if-ne v2, v3, :cond_2

    .line 79
    .line 80
    div-int/lit8 v2, v1, 0x2

    .line 81
    .line 82
    int-to-float v2, v2

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    :goto_2
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iget v5, p0, Landroidx/media3/ui/SubtitlePainter;->cueLineAnchor:I

    .line 89
    .line 90
    if-ne v5, v6, :cond_3

    .line 91
    .line 92
    int-to-float v3, v0

    .line 93
    :goto_3
    sub-float/2addr v4, v3

    .line 94
    goto :goto_4

    .line 95
    :cond_3
    if-ne v5, v3, :cond_4

    .line 96
    .line 97
    div-int/lit8 v3, v0, 0x2

    .line 98
    .line 99
    int-to-float v3, v3

    .line 100
    goto :goto_3

    .line 101
    :cond_4
    :goto_4
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    new-instance v4, Landroid/graphics/Rect;

    .line 106
    .line 107
    add-int/2addr v1, v2

    .line 108
    add-int/2addr v0, v3

    .line 109
    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 110
    .line 111
    .line 112
    iput-object v4, p0, Landroidx/media3/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    .line 113
    .line 114
    return-void
.end method

.method private setupTextLayout()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    .line 4
    .line 5
    instance-of v2, v1, Landroid/text/SpannableStringBuilder;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    check-cast v1, Landroid/text/SpannableStringBuilder;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 13
    .line 14
    iget-object v2, v0, Landroidx/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    .line 15
    .line 16
    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget v2, v0, Landroidx/media3/ui/SubtitlePainter;->parentRight:I

    .line 20
    .line 21
    iget v3, v0, Landroidx/media3/ui/SubtitlePainter;->parentLeft:I

    .line 22
    .line 23
    sub-int/2addr v2, v3

    .line 24
    iget v3, v0, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    .line 25
    .line 26
    iget v4, v0, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    .line 27
    .line 28
    sub-int v11, v3, v4

    .line 29
    .line 30
    iget-object v3, v0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 31
    .line 32
    iget v4, v0, Landroidx/media3/ui/SubtitlePainter;->defaultTextSizePx:F

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 35
    .line 36
    .line 37
    iget v3, v0, Landroidx/media3/ui/SubtitlePainter;->defaultTextSizePx:F

    .line 38
    .line 39
    const/high16 v4, 0x3e000000    # 0.125f

    .line 40
    .line 41
    mul-float v3, v3, v4

    .line 42
    .line 43
    const/high16 v4, 0x3f000000    # 0.5f

    .line 44
    .line 45
    add-float/2addr v3, v4

    .line 46
    float-to-int v12, v3

    .line 47
    mul-int/lit8 v13, v12, 0x2

    .line 48
    .line 49
    sub-int v3, v2, v13

    .line 50
    .line 51
    iget v4, v0, Landroidx/media3/ui/SubtitlePainter;->cueSize:F

    .line 52
    .line 53
    const v14, -0x800001

    .line 54
    .line 55
    .line 56
    cmpl-float v5, v4, v14

    .line 57
    .line 58
    if-eqz v5, :cond_1

    .line 59
    .line 60
    int-to-float v3, v3

    .line 61
    mul-float v3, v3, v4

    .line 62
    .line 63
    float-to-int v3, v3

    .line 64
    :cond_1
    move v15, v3

    .line 65
    const-string v10, "SubtitlePainter"

    .line 66
    .line 67
    if-gtz v15, :cond_2

    .line 68
    .line 69
    const-string v1, "Skipped drawing subtitle cue (insufficient space)"

    .line 70
    .line 71
    invoke-static {v10, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    iget v3, v0, Landroidx/media3/ui/SubtitlePainter;->cueTextSizePx:F

    .line 76
    .line 77
    const/16 v16, 0x0

    .line 78
    .line 79
    const/high16 v4, 0xff0000

    .line 80
    .line 81
    const/4 v9, 0x0

    .line 82
    cmpl-float v3, v3, v16

    .line 83
    .line 84
    if-lez v3, :cond_3

    .line 85
    .line 86
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    .line 87
    .line 88
    iget v5, v0, Landroidx/media3/ui/SubtitlePainter;->cueTextSizePx:F

    .line 89
    .line 90
    float-to-int v5, v5

    .line 91
    invoke-direct {v3, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    invoke-virtual {v1, v3, v9, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 99
    .line 100
    .line 101
    :cond_3
    new-instance v8, Landroid/text/SpannableStringBuilder;

    .line 102
    .line 103
    invoke-direct {v8, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    iget v3, v0, Landroidx/media3/ui/SubtitlePainter;->edgeType:I

    .line 107
    .line 108
    const/4 v7, 0x1

    .line 109
    if-ne v3, v7, :cond_4

    .line 110
    .line 111
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    const-class v5, Landroid/text/style/ForegroundColorSpan;

    .line 116
    .line 117
    invoke-virtual {v8, v9, v3, v5}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, [Landroid/text/style/ForegroundColorSpan;

    .line 122
    .line 123
    array-length v5, v3

    .line 124
    const/4 v6, 0x0

    .line 125
    :goto_1
    if-ge v6, v5, :cond_4

    .line 126
    .line 127
    aget-object v7, v3, v6

    .line 128
    .line 129
    invoke-virtual {v8, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    add-int/lit8 v6, v6, 0x1

    .line 133
    .line 134
    const/4 v7, 0x1

    .line 135
    goto :goto_1

    .line 136
    :cond_4
    iget v3, v0, Landroidx/media3/ui/SubtitlePainter;->backgroundColor:I

    .line 137
    .line 138
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    const/4 v7, 0x2

    .line 143
    if-lez v3, :cond_7

    .line 144
    .line 145
    iget v3, v0, Landroidx/media3/ui/SubtitlePainter;->edgeType:I

    .line 146
    .line 147
    if-eqz v3, :cond_6

    .line 148
    .line 149
    if-ne v3, v7, :cond_5

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    .line 153
    .line 154
    iget v5, v0, Landroidx/media3/ui/SubtitlePainter;->backgroundColor:I

    .line 155
    .line 156
    invoke-direct {v3, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    invoke-virtual {v8, v3, v9, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_6
    :goto_2
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    .line 168
    .line 169
    iget v5, v0, Landroidx/media3/ui/SubtitlePainter;->backgroundColor:I

    .line 170
    .line 171
    invoke-direct {v3, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    invoke-virtual {v1, v3, v9, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 179
    .line 180
    .line 181
    :cond_7
    :goto_3
    iget-object v3, v0, Landroidx/media3/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    .line 182
    .line 183
    if-nez v3, :cond_8

    .line 184
    .line 185
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 186
    .line 187
    :cond_8
    move-object/from16 v21, v3

    .line 188
    .line 189
    new-instance v6, Landroid/text/StaticLayout;

    .line 190
    .line 191
    iget-object v5, v0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 192
    .line 193
    iget v4, v0, Landroidx/media3/ui/SubtitlePainter;->spacingMult:F

    .line 194
    .line 195
    iget v3, v0, Landroidx/media3/ui/SubtitlePainter;->spacingAdd:F

    .line 196
    .line 197
    const/16 v18, 0x1

    .line 198
    .line 199
    move/from16 v19, v3

    .line 200
    .line 201
    move-object v3, v6

    .line 202
    move/from16 v20, v4

    .line 203
    .line 204
    move-object v4, v1

    .line 205
    move-object v14, v6

    .line 206
    move v6, v15

    .line 207
    move-object/from16 v7, v21

    .line 208
    .line 209
    move-object/from16 v23, v8

    .line 210
    .line 211
    move/from16 v8, v20

    .line 212
    .line 213
    move/from16 v25, v12

    .line 214
    .line 215
    const/4 v12, 0x0

    .line 216
    move/from16 v9, v19

    .line 217
    .line 218
    move-object v12, v10

    .line 219
    move/from16 v10, v18

    .line 220
    .line 221
    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 222
    .line 223
    .line 224
    iput-object v14, v0, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 225
    .line 226
    invoke-virtual {v14}, Landroid/text/Layout;->getHeight()I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    iget-object v4, v0, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 231
    .line 232
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    const/4 v5, 0x0

    .line 237
    const/4 v9, 0x0

    .line 238
    :goto_4
    if-ge v9, v4, :cond_9

    .line 239
    .line 240
    iget-object v6, v0, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 241
    .line 242
    invoke-virtual {v6, v9}, Landroid/text/Layout;->getLineWidth(I)F

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    float-to-double v6, v6

    .line 247
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 248
    .line 249
    .line 250
    move-result-wide v6

    .line 251
    double-to-int v6, v6

    .line 252
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    add-int/lit8 v9, v9, 0x1

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_9
    iget v4, v0, Landroidx/media3/ui/SubtitlePainter;->cueSize:F

    .line 260
    .line 261
    const v6, -0x800001

    .line 262
    .line 263
    .line 264
    cmpl-float v4, v4, v6

    .line 265
    .line 266
    if-eqz v4, :cond_a

    .line 267
    .line 268
    if-ge v5, v15, :cond_a

    .line 269
    .line 270
    goto :goto_5

    .line 271
    :cond_a
    move v15, v5

    .line 272
    :goto_5
    add-int/2addr v15, v13

    .line 273
    iget v4, v0, Landroidx/media3/ui/SubtitlePainter;->cuePosition:F

    .line 274
    .line 275
    cmpl-float v5, v4, v6

    .line 276
    .line 277
    if-eqz v5, :cond_d

    .line 278
    .line 279
    int-to-float v2, v2

    .line 280
    mul-float v2, v2, v4

    .line 281
    .line 282
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    iget v4, v0, Landroidx/media3/ui/SubtitlePainter;->parentLeft:I

    .line 287
    .line 288
    add-int/2addr v2, v4

    .line 289
    iget v5, v0, Landroidx/media3/ui/SubtitlePainter;->cuePositionAnchor:I

    .line 290
    .line 291
    const/4 v6, 0x1

    .line 292
    if-eq v5, v6, :cond_c

    .line 293
    .line 294
    const/4 v7, 0x2

    .line 295
    if-eq v5, v7, :cond_b

    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_b
    sub-int/2addr v2, v15

    .line 299
    goto :goto_6

    .line 300
    :cond_c
    const/4 v7, 0x2

    .line 301
    mul-int/lit8 v2, v2, 0x2

    .line 302
    .line 303
    sub-int/2addr v2, v15

    .line 304
    div-int/2addr v2, v7

    .line 305
    :goto_6
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    add-int/2addr v15, v2

    .line 310
    iget v4, v0, Landroidx/media3/ui/SubtitlePainter;->parentRight:I

    .line 311
    .line 312
    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    goto :goto_7

    .line 317
    :cond_d
    const/4 v6, 0x1

    .line 318
    const/4 v7, 0x2

    .line 319
    sub-int/2addr v2, v15

    .line 320
    div-int/2addr v2, v7

    .line 321
    iget v4, v0, Landroidx/media3/ui/SubtitlePainter;->parentLeft:I

    .line 322
    .line 323
    add-int/2addr v2, v4

    .line 324
    add-int v4, v2, v15

    .line 325
    .line 326
    :goto_7
    sub-int v20, v4, v2

    .line 327
    .line 328
    if-gtz v20, :cond_e

    .line 329
    .line 330
    const-string v1, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    .line 331
    .line 332
    invoke-static {v12, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    return-void

    .line 336
    :cond_e
    iget v4, v0, Landroidx/media3/ui/SubtitlePainter;->cueLine:F

    .line 337
    .line 338
    const v5, -0x800001

    .line 339
    .line 340
    .line 341
    cmpl-float v5, v4, v5

    .line 342
    .line 343
    if-eqz v5, :cond_15

    .line 344
    .line 345
    iget v5, v0, Landroidx/media3/ui/SubtitlePainter;->cueLineType:I

    .line 346
    .line 347
    if-nez v5, :cond_10

    .line 348
    .line 349
    int-to-float v5, v11

    .line 350
    mul-float v5, v5, v4

    .line 351
    .line 352
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    iget v5, v0, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    .line 357
    .line 358
    add-int/2addr v4, v5

    .line 359
    iget v5, v0, Landroidx/media3/ui/SubtitlePainter;->cueLineAnchor:I

    .line 360
    .line 361
    if-ne v5, v7, :cond_f

    .line 362
    .line 363
    goto :goto_8

    .line 364
    :cond_f
    if-ne v5, v6, :cond_12

    .line 365
    .line 366
    mul-int/lit8 v4, v4, 0x2

    .line 367
    .line 368
    sub-int/2addr v4, v3

    .line 369
    div-int/2addr v4, v7

    .line 370
    goto :goto_9

    .line 371
    :cond_10
    iget-object v4, v0, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 372
    .line 373
    const/4 v5, 0x0

    .line 374
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineBottom(I)I

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    iget-object v6, v0, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 379
    .line 380
    invoke-virtual {v6, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    sub-int/2addr v4, v5

    .line 385
    iget v5, v0, Landroidx/media3/ui/SubtitlePainter;->cueLine:F

    .line 386
    .line 387
    cmpl-float v6, v5, v16

    .line 388
    .line 389
    if-ltz v6, :cond_11

    .line 390
    .line 391
    int-to-float v4, v4

    .line 392
    mul-float v5, v5, v4

    .line 393
    .line 394
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 395
    .line 396
    .line 397
    move-result v4

    .line 398
    iget v5, v0, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    .line 399
    .line 400
    add-int/2addr v4, v5

    .line 401
    goto :goto_9

    .line 402
    :cond_11
    const/high16 v6, 0x3f800000    # 1.0f

    .line 403
    .line 404
    add-float/2addr v5, v6

    .line 405
    int-to-float v4, v4

    .line 406
    mul-float v5, v5, v4

    .line 407
    .line 408
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    iget v5, v0, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    .line 413
    .line 414
    add-int/2addr v4, v5

    .line 415
    :goto_8
    sub-int/2addr v4, v3

    .line 416
    :cond_12
    :goto_9
    add-int v5, v4, v3

    .line 417
    .line 418
    iget v6, v0, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    .line 419
    .line 420
    if-le v5, v6, :cond_14

    .line 421
    .line 422
    sub-int v4, v6, v3

    .line 423
    .line 424
    :cond_13
    :goto_a
    move v11, v4

    .line 425
    goto :goto_b

    .line 426
    :cond_14
    iget v3, v0, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    .line 427
    .line 428
    if-ge v4, v3, :cond_13

    .line 429
    .line 430
    move v11, v3

    .line 431
    goto :goto_b

    .line 432
    :cond_15
    iget v4, v0, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    .line 433
    .line 434
    sub-int/2addr v4, v3

    .line 435
    int-to-float v3, v11

    .line 436
    iget v5, v0, Landroidx/media3/ui/SubtitlePainter;->bottomPaddingFraction:F

    .line 437
    .line 438
    mul-float v3, v3, v5

    .line 439
    .line 440
    float-to-int v3, v3

    .line 441
    sub-int/2addr v4, v3

    .line 442
    goto :goto_a

    .line 443
    :goto_b
    new-instance v12, Landroid/text/StaticLayout;

    .line 444
    .line 445
    iget-object v5, v0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 446
    .line 447
    iget v8, v0, Landroidx/media3/ui/SubtitlePainter;->spacingMult:F

    .line 448
    .line 449
    iget v9, v0, Landroidx/media3/ui/SubtitlePainter;->spacingAdd:F

    .line 450
    .line 451
    const/4 v10, 0x1

    .line 452
    move-object v3, v12

    .line 453
    move-object v4, v1

    .line 454
    move/from16 v6, v20

    .line 455
    .line 456
    move-object/from16 v7, v21

    .line 457
    .line 458
    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 459
    .line 460
    .line 461
    iput-object v12, v0, Landroidx/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 462
    .line 463
    new-instance v1, Landroid/text/StaticLayout;

    .line 464
    .line 465
    iget-object v3, v0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 466
    .line 467
    iget v4, v0, Landroidx/media3/ui/SubtitlePainter;->spacingMult:F

    .line 468
    .line 469
    iget v5, v0, Landroidx/media3/ui/SubtitlePainter;->spacingAdd:F

    .line 470
    .line 471
    const/16 v24, 0x1

    .line 472
    .line 473
    move-object/from16 v17, v1

    .line 474
    .line 475
    move-object/from16 v18, v23

    .line 476
    .line 477
    move-object/from16 v19, v3

    .line 478
    .line 479
    move/from16 v22, v4

    .line 480
    .line 481
    move/from16 v23, v5

    .line 482
    .line 483
    invoke-direct/range {v17 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 484
    .line 485
    .line 486
    iput-object v1, v0, Landroidx/media3/ui/SubtitlePainter;->edgeLayout:Landroid/text/StaticLayout;

    .line 487
    .line 488
    iput v2, v0, Landroidx/media3/ui/SubtitlePainter;->textLeft:I

    .line 489
    .line 490
    iput v11, v0, Landroidx/media3/ui/SubtitlePainter;->textTop:I

    .line 491
    .line 492
    move/from16 v1, v25

    .line 493
    .line 494
    iput v1, v0, Landroidx/media3/ui/SubtitlePainter;->textPaddingX:I

    .line 495
    .line 496
    return-void
.end method


# virtual methods
.method public draw(Landroidx/media3/common/text/Cue;Landroidx/media3/ui/CaptionStyleCompat;FFFLandroid/graphics/Canvas;IIII)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v1, p1, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-boolean v1, p1, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget v1, p1, Landroidx/media3/common/text/Cue;->windowColor:I

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    iget v1, p2, Landroidx/media3/ui/CaptionStyleCompat;->windowColor:I

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_3
    const/high16 v1, -0x1000000

    .line 30
    .line 31
    :goto_1
    iget-object v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    .line 32
    .line 33
    iget-object v3, p1, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    .line 34
    .line 35
    invoke-static {v2, v3}, Landroidx/media3/ui/SubtitlePainter;->areCharSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    iget-object v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    .line 42
    .line 43
    iget-object v3, p1, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 44
    .line 45
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    iget-object v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    .line 52
    .line 53
    iget-object v3, p1, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    .line 54
    .line 55
    if-ne v2, v3, :cond_4

    .line 56
    .line 57
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueLine:F

    .line 58
    .line 59
    iget v3, p1, Landroidx/media3/common/text/Cue;->line:F

    .line 60
    .line 61
    cmpl-float v2, v2, v3

    .line 62
    .line 63
    if-nez v2, :cond_4

    .line 64
    .line 65
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueLineType:I

    .line 66
    .line 67
    iget v3, p1, Landroidx/media3/common/text/Cue;->lineType:I

    .line 68
    .line 69
    if-ne v2, v3, :cond_4

    .line 70
    .line 71
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueLineAnchor:I

    .line 72
    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iget v3, p1, Landroidx/media3/common/text/Cue;->lineAnchor:I

    .line 78
    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->cuePosition:F

    .line 90
    .line 91
    iget v3, p1, Landroidx/media3/common/text/Cue;->position:F

    .line 92
    .line 93
    cmpl-float v2, v2, v3

    .line 94
    .line 95
    if-nez v2, :cond_4

    .line 96
    .line 97
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->cuePositionAnchor:I

    .line 98
    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iget v3, p1, Landroidx/media3/common/text/Cue;->positionAnchor:I

    .line 104
    .line 105
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_4

    .line 114
    .line 115
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueSize:F

    .line 116
    .line 117
    iget v3, p1, Landroidx/media3/common/text/Cue;->size:F

    .line 118
    .line 119
    cmpl-float v2, v2, v3

    .line 120
    .line 121
    if-nez v2, :cond_4

    .line 122
    .line 123
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmapHeight:F

    .line 124
    .line 125
    iget v3, p1, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    .line 126
    .line 127
    cmpl-float v2, v2, v3

    .line 128
    .line 129
    if-nez v2, :cond_4

    .line 130
    .line 131
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->foregroundColor:I

    .line 132
    .line 133
    iget v3, p2, Landroidx/media3/ui/CaptionStyleCompat;->foregroundColor:I

    .line 134
    .line 135
    if-ne v2, v3, :cond_4

    .line 136
    .line 137
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->backgroundColor:I

    .line 138
    .line 139
    iget v3, p2, Landroidx/media3/ui/CaptionStyleCompat;->backgroundColor:I

    .line 140
    .line 141
    if-ne v2, v3, :cond_4

    .line 142
    .line 143
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->windowColor:I

    .line 144
    .line 145
    if-ne v2, v1, :cond_4

    .line 146
    .line 147
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->edgeType:I

    .line 148
    .line 149
    iget v3, p2, Landroidx/media3/ui/CaptionStyleCompat;->edgeType:I

    .line 150
    .line 151
    if-ne v2, v3, :cond_4

    .line 152
    .line 153
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->edgeColor:I

    .line 154
    .line 155
    iget v3, p2, Landroidx/media3/ui/CaptionStyleCompat;->edgeColor:I

    .line 156
    .line 157
    if-ne v2, v3, :cond_4

    .line 158
    .line 159
    iget-object v2, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 160
    .line 161
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    iget-object v3, p2, Landroidx/media3/ui/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    .line 166
    .line 167
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_4

    .line 172
    .line 173
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->defaultTextSizePx:F

    .line 174
    .line 175
    cmpl-float v2, v2, p3

    .line 176
    .line 177
    if-nez v2, :cond_4

    .line 178
    .line 179
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueTextSizePx:F

    .line 180
    .line 181
    cmpl-float v2, v2, p4

    .line 182
    .line 183
    if-nez v2, :cond_4

    .line 184
    .line 185
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->bottomPaddingFraction:F

    .line 186
    .line 187
    cmpl-float v2, v2, p5

    .line 188
    .line 189
    if-nez v2, :cond_4

    .line 190
    .line 191
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->parentLeft:I

    .line 192
    .line 193
    if-ne v2, p7, :cond_4

    .line 194
    .line 195
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    .line 196
    .line 197
    if-ne v2, p8, :cond_4

    .line 198
    .line 199
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->parentRight:I

    .line 200
    .line 201
    if-ne v2, p9, :cond_4

    .line 202
    .line 203
    iget v2, p0, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    .line 204
    .line 205
    if-ne v2, p10, :cond_4

    .line 206
    .line 207
    invoke-direct {p0, p6, v0}, Landroidx/media3/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;Z)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_4
    iget-object v2, p1, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    .line 212
    .line 213
    iput-object v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    .line 214
    .line 215
    iget-object v2, p1, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 216
    .line 217
    iput-object v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    .line 218
    .line 219
    iget-object v2, p1, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    .line 220
    .line 221
    iput-object v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    .line 222
    .line 223
    iget v2, p1, Landroidx/media3/common/text/Cue;->line:F

    .line 224
    .line 225
    iput v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueLine:F

    .line 226
    .line 227
    iget v2, p1, Landroidx/media3/common/text/Cue;->lineType:I

    .line 228
    .line 229
    iput v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueLineType:I

    .line 230
    .line 231
    iget v2, p1, Landroidx/media3/common/text/Cue;->lineAnchor:I

    .line 232
    .line 233
    iput v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueLineAnchor:I

    .line 234
    .line 235
    iget v2, p1, Landroidx/media3/common/text/Cue;->position:F

    .line 236
    .line 237
    iput v2, p0, Landroidx/media3/ui/SubtitlePainter;->cuePosition:F

    .line 238
    .line 239
    iget v2, p1, Landroidx/media3/common/text/Cue;->positionAnchor:I

    .line 240
    .line 241
    iput v2, p0, Landroidx/media3/ui/SubtitlePainter;->cuePositionAnchor:I

    .line 242
    .line 243
    iget v2, p1, Landroidx/media3/common/text/Cue;->size:F

    .line 244
    .line 245
    iput v2, p0, Landroidx/media3/ui/SubtitlePainter;->cueSize:F

    .line 246
    .line 247
    iget p1, p1, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    .line 248
    .line 249
    iput p1, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmapHeight:F

    .line 250
    .line 251
    iget p1, p2, Landroidx/media3/ui/CaptionStyleCompat;->foregroundColor:I

    .line 252
    .line 253
    iput p1, p0, Landroidx/media3/ui/SubtitlePainter;->foregroundColor:I

    .line 254
    .line 255
    iget p1, p2, Landroidx/media3/ui/CaptionStyleCompat;->backgroundColor:I

    .line 256
    .line 257
    iput p1, p0, Landroidx/media3/ui/SubtitlePainter;->backgroundColor:I

    .line 258
    .line 259
    iput v1, p0, Landroidx/media3/ui/SubtitlePainter;->windowColor:I

    .line 260
    .line 261
    iget p1, p2, Landroidx/media3/ui/CaptionStyleCompat;->edgeType:I

    .line 262
    .line 263
    iput p1, p0, Landroidx/media3/ui/SubtitlePainter;->edgeType:I

    .line 264
    .line 265
    iget p1, p2, Landroidx/media3/ui/CaptionStyleCompat;->edgeColor:I

    .line 266
    .line 267
    iput p1, p0, Landroidx/media3/ui/SubtitlePainter;->edgeColor:I

    .line 268
    .line 269
    iget-object p1, p0, Landroidx/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 270
    .line 271
    iget-object p2, p2, Landroidx/media3/ui/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    .line 272
    .line 273
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 274
    .line 275
    .line 276
    iput p3, p0, Landroidx/media3/ui/SubtitlePainter;->defaultTextSizePx:F

    .line 277
    .line 278
    iput p4, p0, Landroidx/media3/ui/SubtitlePainter;->cueTextSizePx:F

    .line 279
    .line 280
    iput p5, p0, Landroidx/media3/ui/SubtitlePainter;->bottomPaddingFraction:F

    .line 281
    .line 282
    iput p7, p0, Landroidx/media3/ui/SubtitlePainter;->parentLeft:I

    .line 283
    .line 284
    iput p8, p0, Landroidx/media3/ui/SubtitlePainter;->parentTop:I

    .line 285
    .line 286
    iput p9, p0, Landroidx/media3/ui/SubtitlePainter;->parentRight:I

    .line 287
    .line 288
    iput p10, p0, Landroidx/media3/ui/SubtitlePainter;->parentBottom:I

    .line 289
    .line 290
    if-eqz v0, :cond_5

    .line 291
    .line 292
    iget-object p1, p0, Landroidx/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    .line 293
    .line 294
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    invoke-direct {p0}, Landroidx/media3/ui/SubtitlePainter;->setupTextLayout()V

    .line 298
    .line 299
    .line 300
    goto :goto_2

    .line 301
    :cond_5
    iget-object p1, p0, Landroidx/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    .line 302
    .line 303
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    invoke-direct {p0}, Landroidx/media3/ui/SubtitlePainter;->setupBitmapLayout()V

    .line 307
    .line 308
    .line 309
    :goto_2
    invoke-direct {p0, p6, v0}, Landroidx/media3/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;Z)V

    .line 310
    .line 311
    .line 312
    return-void
.end method
