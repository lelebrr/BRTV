.class public final Lc6/a;
.super Lr4/b;
.source "MyApplication"


# instance fields
.field public final synthetic c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc6/a;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final G(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lc6/a;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 5
    .line 6
    iget-boolean v1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final H(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc6/a;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final I(Landroid/view/View;FF)V
    .locals 5

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x3

    .line 3
    iget-object v2, p0, Lc6/a;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    cmpg-float v4, p3, v3

    .line 7
    .line 8
    if-gez v4, :cond_2

    .line 9
    .line 10
    iget-boolean p2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    :cond_0
    :goto_0
    const/4 v0, 0x3

    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget p3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:I

    .line 28
    .line 29
    if-le p2, p3, :cond_0

    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_2
    iget-boolean v4, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Z

    .line 34
    .line 35
    if-eqz v4, :cond_7

    .line 36
    .line 37
    invoke-virtual {v2, p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C(Landroid/view/View;F)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_7

    .line 42
    .line 43
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    cmpg-float p2, p2, v3

    .line 52
    .line 53
    if-gez p2, :cond_3

    .line 54
    .line 55
    const/high16 p2, 0x43fa0000    # 500.0f

    .line 56
    .line 57
    cmpl-float p2, p3, p2

    .line 58
    .line 59
    if-gtz p2, :cond_4

    .line 60
    .line 61
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    iget p3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q:I

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    add-int/2addr v3, p3

    .line 72
    div-int/lit8 v3, v3, 0x2

    .line 73
    .line 74
    if-le p2, v3, :cond_5

    .line 75
    .line 76
    :cond_4
    const/4 v0, 0x5

    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :cond_5
    iget-boolean p2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    .line 80
    .line 81
    if-eqz p2, :cond_6

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x()I

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    sub-int/2addr p2, p3

    .line 93
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    iget v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:I

    .line 102
    .line 103
    sub-int/2addr p3, v3

    .line 104
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 105
    .line 106
    .line 107
    move-result p3

    .line 108
    if-ge p2, p3, :cond_f

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_7
    const/4 v4, 0x4

    .line 112
    cmpl-float v3, p3, v3

    .line 113
    .line 114
    if-eqz v3, :cond_b

    .line 115
    .line 116
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 121
    .line 122
    .line 123
    move-result p3

    .line 124
    cmpl-float p2, p2, p3

    .line 125
    .line 126
    if-lez p2, :cond_8

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_8
    iget-boolean p2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    .line 130
    .line 131
    if-eqz p2, :cond_a

    .line 132
    .line 133
    :cond_9
    const/4 v0, 0x4

    .line 134
    goto :goto_2

    .line 135
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    iget p3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:I

    .line 140
    .line 141
    sub-int p3, p2, p3

    .line 142
    .line 143
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 144
    .line 145
    .line 146
    move-result p3

    .line 147
    iget v1, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    .line 148
    .line 149
    sub-int/2addr p2, v1

    .line 150
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-ge p3, p2, :cond_9

    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_b
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    iget-boolean p3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    .line 165
    .line 166
    if-eqz p3, :cond_c

    .line 167
    .line 168
    iget p3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B:I

    .line 169
    .line 170
    sub-int p3, p2, p3

    .line 171
    .line 172
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 173
    .line 174
    .line 175
    move-result p3

    .line 176
    iget v0, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    .line 177
    .line 178
    sub-int/2addr p2, v0

    .line 179
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    if-ge p3, p2, :cond_9

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_c
    iget p3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:I

    .line 188
    .line 189
    if-ge p2, p3, :cond_e

    .line 190
    .line 191
    iget p3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    .line 192
    .line 193
    sub-int p3, p2, p3

    .line 194
    .line 195
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 196
    .line 197
    .line 198
    move-result p3

    .line 199
    if-ge p2, p3, :cond_d

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_e
    sub-int p3, p2, p3

    .line 208
    .line 209
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 210
    .line 211
    .line 212
    move-result p3

    .line 213
    iget v1, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    .line 214
    .line 215
    sub-int/2addr p2, v1

    .line 216
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    if-ge p3, p2, :cond_9

    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    :cond_f
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    const/4 p2, 0x1

    .line 229
    invoke-virtual {v2, p1, v0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D(Landroid/view/View;IZ)V

    .line 230
    .line 231
    .line 232
    return-void
.end method

.method public final O(ILandroid/view/View;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lc6/a;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ne v1, v3, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    iget-boolean v4, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->X:Z

    .line 11
    .line 12
    if-eqz v4, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    const/4 v4, 0x3

    .line 16
    if-ne v1, v4, :cond_3

    .line 17
    .line 18
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V:I

    .line 19
    .line 20
    if-ne v1, p1, :cond_3

    .line 21
    .line 22
    iget-object p1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S:Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/view/View;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p1, 0x0

    .line 34
    :goto_0
    if-eqz p1, :cond_3

    .line 35
    .line 36
    const/4 v1, -0x1

    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    return v2

    .line 44
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    iget-object p1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Ljava/lang/ref/WeakReference;

    .line 48
    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-ne p1, p2, :cond_4

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    :cond_4
    return v2
.end method

.method public final d(ILandroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final e(ILandroid/view/View;)I
    .locals 2

    .line 1
    iget-object p2, p0, Lc6/a;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-boolean v1, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    .line 15
    .line 16
    :goto_0
    invoke-static {p1, v0, p2}, Ll5/a;->g(III)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public final y()I
    .locals 2

    .line 1
    iget-object v0, p0, Lc6/a;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    .line 11
    .line 12
    return v0
.end method
