.class public final Lv/i;
.super Lv/e;
.source "MyApplication"


# instance fields
.field public g0:F

.field public h0:I

.field public i0:I

.field public j0:Lv/c;

.field public k0:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lv/e;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v0, p0, Lv/i;->g0:F

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lv/i;->h0:I

    .line 10
    .line 11
    iput v0, p0, Lv/i;->i0:I

    .line 12
    .line 13
    iget-object v0, p0, Lv/e;->z:Lv/c;

    .line 14
    .line 15
    iput-object v0, p0, Lv/i;->j0:Lv/c;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lv/i;->k0:I

    .line 19
    .line 20
    iget-object v1, p0, Lv/e;->H:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lv/e;->H:Ljava/util/ArrayList;

    .line 26
    .line 27
    iget-object v2, p0, Lv/i;->j0:Lv/c;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lv/e;->G:[Lv/c;

    .line 33
    .line 34
    array-length v1, v1

    .line 35
    :goto_0
    if-ge v0, v1, :cond_0

    .line 36
    .line 37
    iget-object v2, p0, Lv/e;->G:[Lv/c;

    .line 38
    .line 39
    iget-object v3, p0, Lv/i;->j0:Lv/c;

    .line 40
    .line 41
    aput-object v3, v2, v0

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public final B(Lu/e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv/e;->K:Lv/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lv/i;->j0:Lv/c;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lu/e;->m(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, p0, Lv/i;->k0:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iput p1, p0, Lv/e;->P:I

    .line 22
    .line 23
    iput v2, p0, Lv/e;->Q:I

    .line 24
    .line 25
    iget-object p1, p0, Lv/e;->K:Lv/e;

    .line 26
    .line 27
    invoke-virtual {p1}, Lv/e;->j()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Lv/e;->w(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lv/e;->z(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iput v2, p0, Lv/e;->P:I

    .line 39
    .line 40
    iput p1, p0, Lv/e;->Q:I

    .line 41
    .line 42
    iget-object p1, p0, Lv/e;->K:Lv/e;

    .line 43
    .line 44
    invoke-virtual {p1}, Lv/e;->m()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {p0, p1}, Lv/e;->z(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2}, Lv/e;->w(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public final C(I)V
    .locals 3

    .line 1
    iget v0, p0, Lv/i;->k0:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lv/i;->k0:I

    .line 7
    .line 8
    iget-object p1, p0, Lv/e;->H:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lv/i;->k0:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lv/e;->y:Lv/c;

    .line 19
    .line 20
    iput-object v0, p0, Lv/i;->j0:Lv/c;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lv/e;->z:Lv/c;

    .line 24
    .line 25
    iput-object v0, p0, Lv/i;->j0:Lv/c;

    .line 26
    .line 27
    :goto_0
    iget-object v0, p0, Lv/i;->j0:Lv/c;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lv/e;->G:[Lv/c;

    .line 33
    .line 34
    array-length v0, p1

    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_1
    if-ge v1, v0, :cond_2

    .line 37
    .line 38
    iget-object v2, p0, Lv/i;->j0:Lv/c;

    .line 39
    .line 40
    aput-object v2, p1, v1

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    return-void
.end method

.method public final a(Lu/e;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lv/e;->K:Lv/e;

    .line 2
    .line 3
    check-cast v0, Lv/f;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x2

    .line 9
    invoke-virtual {v0, v1}, Lv/e;->h(I)Lv/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-virtual {v0, v2}, Lv/e;->h(I)Lv/c;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p0, Lv/e;->K:Lv/e;

    .line 19
    .line 20
    sget-object v4, Lv/d;->b:Lv/d;

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    const/4 v6, 0x0

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    iget-object v3, v3, Lv/e;->J:[Lv/d;

    .line 27
    .line 28
    aget-object v3, v3, v6

    .line 29
    .line 30
    if-ne v3, v4, :cond_1

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v3, 0x0

    .line 35
    :goto_0
    iget v7, p0, Lv/i;->k0:I

    .line 36
    .line 37
    const/4 v8, 0x5

    .line 38
    if-nez v7, :cond_3

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    invoke-virtual {v0, v1}, Lv/e;->h(I)Lv/c;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v8}, Lv/e;->h(I)Lv/c;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v0, p0, Lv/e;->K:Lv/e;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, v0, Lv/e;->J:[Lv/d;

    .line 54
    .line 55
    aget-object v0, v0, v5

    .line 56
    .line 57
    if-ne v0, v4, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v5, 0x0

    .line 61
    :goto_1
    move v3, v5

    .line 62
    :cond_3
    iget v0, p0, Lv/i;->h0:I

    .line 63
    .line 64
    const/16 v4, 0x8

    .line 65
    .line 66
    const/4 v5, -0x1

    .line 67
    if-eq v0, v5, :cond_4

    .line 68
    .line 69
    iget-object v0, p0, Lv/i;->j0:Lv/c;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lu/e;->j(Ljava/lang/Object;)Lu/i;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p1, v1}, Lu/e;->j(Ljava/lang/Object;)Lu/i;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget v5, p0, Lv/i;->h0:I

    .line 80
    .line 81
    invoke-virtual {p1, v0, v1, v5, v4}, Lu/e;->e(Lu/i;Lu/i;II)V

    .line 82
    .line 83
    .line 84
    if-eqz v3, :cond_6

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Lu/e;->j(Ljava/lang/Object;)Lu/i;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1, v1, v0, v6, v8}, Lu/e;->f(Lu/i;Lu/i;II)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    iget v0, p0, Lv/i;->i0:I

    .line 95
    .line 96
    if-eq v0, v5, :cond_5

    .line 97
    .line 98
    iget-object v0, p0, Lv/i;->j0:Lv/c;

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lu/e;->j(Ljava/lang/Object;)Lu/i;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p1, v2}, Lu/e;->j(Ljava/lang/Object;)Lu/i;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iget v5, p0, Lv/i;->i0:I

    .line 109
    .line 110
    neg-int v5, v5

    .line 111
    invoke-virtual {p1, v0, v2, v5, v4}, Lu/e;->e(Lu/i;Lu/i;II)V

    .line 112
    .line 113
    .line 114
    if-eqz v3, :cond_6

    .line 115
    .line 116
    invoke-virtual {p1, v1}, Lu/e;->j(Ljava/lang/Object;)Lu/i;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {p1, v0, v1, v6, v8}, Lu/e;->f(Lu/i;Lu/i;II)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v2, v0, v6, v8}, Lu/e;->f(Lu/i;Lu/i;II)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_5
    iget v0, p0, Lv/i;->g0:F

    .line 128
    .line 129
    const/high16 v1, -0x40800000    # -1.0f

    .line 130
    .line 131
    cmpl-float v0, v0, v1

    .line 132
    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    iget-object v0, p0, Lv/i;->j0:Lv/c;

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Lu/e;->j(Ljava/lang/Object;)Lu/i;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p1, v2}, Lu/e;->j(Ljava/lang/Object;)Lu/i;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    iget v3, p0, Lv/i;->g0:F

    .line 146
    .line 147
    invoke-virtual {p1}, Lu/e;->k()Lu/c;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    iget-object v5, v4, Lu/c;->d:Lu/b;

    .line 152
    .line 153
    invoke-interface {v5, v0, v1}, Lu/b;->h(Lu/i;F)V

    .line 154
    .line 155
    .line 156
    iget-object v0, v4, Lu/c;->d:Lu/b;

    .line 157
    .line 158
    invoke-interface {v0, v2, v3}, Lu/b;->h(Lu/i;F)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v4}, Lu/e;->c(Lu/c;)V

    .line 162
    .line 163
    .line 164
    :cond_6
    :goto_2
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final f(Lv/e;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lv/e;->f(Lv/e;Ljava/util/HashMap;)V

    .line 2
    .line 3
    .line 4
    check-cast p1, Lv/i;

    .line 5
    .line 6
    iget p2, p1, Lv/i;->g0:F

    .line 7
    .line 8
    iput p2, p0, Lv/i;->g0:F

    .line 9
    .line 10
    iget p2, p1, Lv/i;->h0:I

    .line 11
    .line 12
    iput p2, p0, Lv/i;->h0:I

    .line 13
    .line 14
    iget p2, p1, Lv/i;->i0:I

    .line 15
    .line 16
    iput p2, p0, Lv/i;->i0:I

    .line 17
    .line 18
    iget p1, p1, Lv/i;->k0:I

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lv/i;->C(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final h(I)Lv/c;
    .locals 2

    .line 1
    invoke-static {p1}, Lu/h;->a(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    iget v0, p0, Lv/i;->k0:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lv/i;->j0:Lv/c;

    .line 14
    .line 15
    return-object p1

    .line 16
    :pswitch_1
    iget v0, p0, Lv/i;->k0:I

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lv/i;->j0:Lv/c;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 25
    .line 26
    invoke-static {p1}, Lea/q;->q(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :pswitch_2
    const/4 p1, 0x0

    .line 35
    return-object p1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
