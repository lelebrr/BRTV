.class public final Ll6/m;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ll6/m;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Ll6/m;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, [Lf0/f;

    .line 7
    .line 8
    check-cast p3, [Lf0/f;

    .line 9
    .line 10
    invoke-static {p2, p3}, Lcom/bumptech/glide/d;->a([Lf0/f;[Lf0/f;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Ll6/m;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, [Lf0/f;

    .line 19
    .line 20
    invoke-static {v0, p2}, Lcom/bumptech/glide/d;->a([Lf0/f;[Lf0/f;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-static {p2}, Lcom/bumptech/glide/d;->h([Lf0/f;)[Lf0/f;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Ll6/m;->b:Ljava/lang/Object;

    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    const/4 v1, 0x0

    .line 34
    :goto_0
    array-length v2, p2

    .line 35
    if-ge v1, v2, :cond_2

    .line 36
    .line 37
    iget-object v2, p0, Ll6/m;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, [Lf0/f;

    .line 40
    .line 41
    aget-object v2, v2, v1

    .line 42
    .line 43
    aget-object v3, p2, v1

    .line 44
    .line 45
    aget-object v4, p3, v1

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-char v5, v3, Lf0/f;->a:C

    .line 51
    .line 52
    iput-char v5, v2, Lf0/f;->a:C

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    :goto_1
    iget-object v6, v3, Lf0/f;->b:[F

    .line 56
    .line 57
    array-length v7, v6

    .line 58
    if-ge v5, v7, :cond_1

    .line 59
    .line 60
    aget v6, v6, v5

    .line 61
    .line 62
    const/high16 v7, 0x3f800000    # 1.0f

    .line 63
    .line 64
    sub-float/2addr v7, p1

    .line 65
    mul-float v7, v7, v6

    .line 66
    .line 67
    iget-object v6, v4, Lf0/f;->b:[F

    .line 68
    .line 69
    aget v6, v6, v5

    .line 70
    .line 71
    mul-float v6, v6, p1

    .line 72
    .line 73
    add-float/2addr v6, v7

    .line 74
    iget-object v7, v2, Lf0/f;->b:[F

    .line 75
    .line 76
    aput v6, v7, v5

    .line 77
    .line 78
    add-int/lit8 v5, v5, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    iget-object p1, p0, Ll6/m;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, [Lf0/f;

    .line 87
    .line 88
    return-object p1

    .line 89
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    const-string p2, "Can\'t interpolate between two incompatible pathData"

    .line 92
    .line 93
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :pswitch_0
    check-cast p2, Landroid/graphics/Rect;

    .line 98
    .line 99
    check-cast p3, Landroid/graphics/Rect;

    .line 100
    .line 101
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 102
    .line 103
    iget v1, p3, Landroid/graphics/Rect;->left:I

    .line 104
    .line 105
    sub-int/2addr v1, v0

    .line 106
    int-to-float v1, v1

    .line 107
    mul-float v1, v1, p1

    .line 108
    .line 109
    float-to-int v1, v1

    .line 110
    add-int/2addr v0, v1

    .line 111
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 112
    .line 113
    iget v2, p3, Landroid/graphics/Rect;->top:I

    .line 114
    .line 115
    sub-int/2addr v2, v1

    .line 116
    int-to-float v2, v2

    .line 117
    mul-float v2, v2, p1

    .line 118
    .line 119
    float-to-int v2, v2

    .line 120
    add-int/2addr v1, v2

    .line 121
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 122
    .line 123
    iget v3, p3, Landroid/graphics/Rect;->right:I

    .line 124
    .line 125
    sub-int/2addr v3, v2

    .line 126
    int-to-float v3, v3

    .line 127
    mul-float v3, v3, p1

    .line 128
    .line 129
    float-to-int v3, v3

    .line 130
    add-int/2addr v2, v3

    .line 131
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 132
    .line 133
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    .line 134
    .line 135
    sub-int/2addr p3, p2

    .line 136
    int-to-float p3, p3

    .line 137
    mul-float p3, p3, p1

    .line 138
    .line 139
    float-to-int p1, p3

    .line 140
    add-int/2addr p2, p1

    .line 141
    iget-object p1, p0, Ll6/m;->b:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast p1, Landroid/graphics/Rect;

    .line 144
    .line 145
    if-nez p1, :cond_4

    .line 146
    .line 147
    new-instance p1, Landroid/graphics/Rect;

    .line 148
    .line 149
    invoke-direct {p1, v0, v1, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_4
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 154
    .line 155
    .line 156
    :goto_2
    return-object p1

    .line 157
    :pswitch_1
    check-cast p2, [F

    .line 158
    .line 159
    check-cast p3, [F

    .line 160
    .line 161
    iget-object v0, p0, Ll6/m;->b:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v0, [F

    .line 164
    .line 165
    if-nez v0, :cond_5

    .line 166
    .line 167
    array-length v0, p2

    .line 168
    new-array v0, v0, [F

    .line 169
    .line 170
    :cond_5
    const/4 v1, 0x0

    .line 171
    :goto_3
    array-length v2, v0

    .line 172
    if-ge v1, v2, :cond_6

    .line 173
    .line 174
    aget v2, p2, v1

    .line 175
    .line 176
    aget v3, p3, v1

    .line 177
    .line 178
    invoke-static {v3, v2, p1, v2}, Lea/q;->d(FFFF)F

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    aput v2, v0, v1

    .line 183
    .line 184
    add-int/lit8 v1, v1, 0x1

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_6
    return-object v0

    .line 188
    :pswitch_2
    check-cast p2, Ljava/lang/Float;

    .line 189
    .line 190
    check-cast p3, Ljava/lang/Float;

    .line 191
    .line 192
    iget-object v0, p0, Ll6/m;->b:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v0, Landroid/animation/FloatEvaluator;

    .line 195
    .line 196
    invoke-virtual {v0, p1, p2, p3}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    const p2, 0x3dcccccd    # 0.1f

    .line 205
    .line 206
    .line 207
    cmpg-float p2, p1, p2

    .line 208
    .line 209
    if-gez p2, :cond_7

    .line 210
    .line 211
    const/4 p1, 0x0

    .line 212
    :cond_7
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    return-object p1

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
