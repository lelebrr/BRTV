.class public Lu/c;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public a:Lu/i;

.field public b:F

.field public c:Ljava/util/ArrayList;

.field public d:Lu/b;

.field public e:Z


# direct methods
.method public constructor <init>(La0/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lu/c;->a:Lu/i;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lu/c;->b:F

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lu/c;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lu/c;->e:Z

    .line 19
    .line 20
    new-instance v0, Lu/a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lu/a;-><init>(Lu/c;La0/f;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lu/c;->d:Lu/b;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lu/e;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lu/c;->d:Lu/b;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lu/e;->i(I)Lu/i;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lu/b;->h(Lu/i;F)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lu/c;->d:Lu/b;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lu/e;->i(I)Lu/i;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/high16 p2, -0x40800000    # -1.0f

    .line 19
    .line 20
    invoke-interface {v0, p1, p2}, Lu/b;->h(Lu/i;F)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final b(Lu/i;Lu/i;Lu/i;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_1

    .line 3
    .line 4
    if-gez p4, :cond_0

    .line 5
    .line 6
    mul-int/lit8 p4, p4, -0x1

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    :cond_0
    int-to-float p4, p4

    .line 10
    iput p4, p0, Lu/c;->b:F

    .line 11
    .line 12
    :cond_1
    const/high16 p4, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const/high16 v1, -0x40800000    # -1.0f

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lu/c;->d:Lu/b;

    .line 19
    .line 20
    invoke-interface {v0, p1, v1}, Lu/b;->h(Lu/i;F)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lu/c;->d:Lu/b;

    .line 24
    .line 25
    invoke-interface {p1, p2, p4}, Lu/b;->h(Lu/i;F)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lu/c;->d:Lu/b;

    .line 29
    .line 30
    invoke-interface {p1, p3, p4}, Lu/b;->h(Lu/i;F)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Lu/c;->d:Lu/b;

    .line 35
    .line 36
    invoke-interface {v0, p1, p4}, Lu/b;->h(Lu/i;F)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lu/c;->d:Lu/b;

    .line 40
    .line 41
    invoke-interface {p1, p2, v1}, Lu/b;->h(Lu/i;F)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lu/c;->d:Lu/b;

    .line 45
    .line 46
    invoke-interface {p1, p3, v1}, Lu/b;->h(Lu/i;F)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public final c(Lu/i;Lu/i;Lu/i;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_1

    .line 3
    .line 4
    if-gez p4, :cond_0

    .line 5
    .line 6
    mul-int/lit8 p4, p4, -0x1

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    :cond_0
    int-to-float p4, p4

    .line 10
    iput p4, p0, Lu/c;->b:F

    .line 11
    .line 12
    :cond_1
    const/high16 p4, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const/high16 v1, -0x40800000    # -1.0f

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lu/c;->d:Lu/b;

    .line 19
    .line 20
    invoke-interface {v0, p1, v1}, Lu/b;->h(Lu/i;F)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lu/c;->d:Lu/b;

    .line 24
    .line 25
    invoke-interface {p1, p2, p4}, Lu/b;->h(Lu/i;F)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lu/c;->d:Lu/b;

    .line 29
    .line 30
    invoke-interface {p1, p3, v1}, Lu/b;->h(Lu/i;F)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Lu/c;->d:Lu/b;

    .line 35
    .line 36
    invoke-interface {v0, p1, p4}, Lu/b;->h(Lu/i;F)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lu/c;->d:Lu/b;

    .line 40
    .line 41
    invoke-interface {p1, p2, v1}, Lu/b;->h(Lu/i;F)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lu/c;->d:Lu/b;

    .line 45
    .line 46
    invoke-interface {p1, p3, p4}, Lu/b;->h(Lu/i;F)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public d([Z)Lu/i;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lu/c;->e([ZLu/i;)Lu/i;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final e([ZLu/i;)Lu/i;
    .locals 9

    .line 1
    iget-object v0, p0, Lu/c;->d:Lu/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lu/b;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    if-ge v3, v0, :cond_3

    .line 12
    .line 13
    iget-object v5, p0, Lu/c;->d:Lu/b;

    .line 14
    .line 15
    invoke-interface {v5, v3}, Lu/b;->a(I)F

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    cmpg-float v6, v5, v1

    .line 20
    .line 21
    if-gez v6, :cond_2

    .line 22
    .line 23
    iget-object v6, p0, Lu/c;->d:Lu/b;

    .line 24
    .line 25
    invoke-interface {v6, v3}, Lu/b;->i(I)Lu/i;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget v7, v6, Lu/i;->b:I

    .line 32
    .line 33
    aget-boolean v7, p1, v7

    .line 34
    .line 35
    if-nez v7, :cond_2

    .line 36
    .line 37
    :cond_0
    if-eq v6, p2, :cond_2

    .line 38
    .line 39
    iget v7, v6, Lu/i;->l:I

    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    if-eq v7, v8, :cond_1

    .line 43
    .line 44
    const/4 v8, 0x4

    .line 45
    if-ne v7, v8, :cond_2

    .line 46
    .line 47
    :cond_1
    cmpg-float v7, v5, v4

    .line 48
    .line 49
    if-gez v7, :cond_2

    .line 50
    .line 51
    move v4, v5

    .line 52
    move-object v2, v6

    .line 53
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    return-object v2
.end method

.method public final f(Lu/i;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lu/c;->a:Lu/i;

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lu/c;->d:Lu/b;

    .line 8
    .line 9
    invoke-interface {v2, v0, v1}, Lu/b;->h(Lu/i;F)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lu/c;->a:Lu/i;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lu/c;->d:Lu/b;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-interface {v0, p1, v2}, Lu/b;->b(Lu/i;Z)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    mul-float v0, v0, v1

    .line 23
    .line 24
    iput-object p1, p0, Lu/c;->a:Lu/i;

    .line 25
    .line 26
    const/high16 p1, 0x3f800000    # 1.0f

    .line 27
    .line 28
    cmpl-float p1, v0, p1

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget p1, p0, Lu/c;->b:F

    .line 34
    .line 35
    div-float/2addr p1, v0

    .line 36
    iput p1, p0, Lu/c;->b:F

    .line 37
    .line 38
    iget-object p1, p0, Lu/c;->d:Lu/b;

    .line 39
    .line 40
    invoke-interface {p1, v0}, Lu/b;->j(F)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final g(Lu/i;Z)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lu/i;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lu/c;->d:Lu/b;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lu/b;->g(Lu/i;)F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lu/c;->b:F

    .line 13
    .line 14
    iget v2, p1, Lu/i;->e:F

    .line 15
    .line 16
    mul-float v2, v2, v0

    .line 17
    .line 18
    add-float/2addr v2, v1

    .line 19
    iput v2, p0, Lu/c;->b:F

    .line 20
    .line 21
    iget-object v0, p0, Lu/c;->d:Lu/b;

    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, Lu/b;->b(Lu/i;Z)F

    .line 24
    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Lu/i;->b(Lu/c;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public h(Lu/c;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lu/c;->d:Lu/b;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lu/b;->c(Lu/c;Z)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lu/c;->b:F

    .line 8
    .line 9
    iget v2, p1, Lu/c;->b:F

    .line 10
    .line 11
    mul-float v2, v2, v0

    .line 12
    .line 13
    add-float/2addr v2, v1

    .line 14
    iput v2, p0, Lu/c;->b:F

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    iget-object p1, p1, Lu/c;->a:Lu/i;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Lu/i;->b(Lu/c;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lu/c;->a:Lu/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "0"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lu/c;->a:Lu/i;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    const-string v1, " = "

    .line 25
    .line 26
    invoke-static {v0, v1}, Lea/q;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v1, p0, Lu/c;->b:F

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    cmpl-float v1, v1, v4

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-static {v0}, Lea/q;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget v1, p0, Lu/c;->b:F

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/4 v1, 0x0

    .line 55
    :goto_1
    iget-object v5, p0, Lu/c;->d:Lu/b;

    .line 56
    .line 57
    invoke-interface {v5}, Lu/b;->d()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    :goto_2
    if-ge v3, v5, :cond_8

    .line 62
    .line 63
    iget-object v6, p0, Lu/c;->d:Lu/b;

    .line 64
    .line 65
    invoke-interface {v6, v3}, Lu/b;->i(I)Lu/i;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    if-nez v6, :cond_2

    .line 70
    .line 71
    goto :goto_6

    .line 72
    :cond_2
    iget-object v7, p0, Lu/c;->d:Lu/b;

    .line 73
    .line 74
    invoke-interface {v7, v3}, Lu/b;->a(I)F

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    cmpl-float v8, v7, v4

    .line 79
    .line 80
    if-nez v8, :cond_3

    .line 81
    .line 82
    goto :goto_6

    .line 83
    :cond_3
    invoke-virtual {v6}, Lu/i;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    const/high16 v9, -0x40800000    # -1.0f

    .line 88
    .line 89
    if-nez v1, :cond_4

    .line 90
    .line 91
    cmpg-float v1, v7, v4

    .line 92
    .line 93
    if-gez v1, :cond_6

    .line 94
    .line 95
    const-string v1, "- "

    .line 96
    .line 97
    invoke-static {v0, v1}, Lea/q;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    :goto_3
    mul-float v7, v7, v9

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_4
    if-lez v8, :cond_5

    .line 105
    .line 106
    const-string v1, " + "

    .line 107
    .line 108
    invoke-static {v0, v1}, Lea/q;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    goto :goto_4

    .line 113
    :cond_5
    const-string v1, " - "

    .line 114
    .line 115
    invoke-static {v0, v1}, Lea/q;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    goto :goto_3

    .line 120
    :cond_6
    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 121
    .line 122
    cmpl-float v1, v7, v1

    .line 123
    .line 124
    if-nez v1, :cond_7

    .line 125
    .line 126
    invoke-static {v0, v6}, Lea/q;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    goto :goto_5

    .line 131
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v0, " "

    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    :goto_5
    const/4 v1, 0x1

    .line 155
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_8
    if-nez v1, :cond_9

    .line 159
    .line 160
    const-string v1, "0.0"

    .line 161
    .line 162
    invoke-static {v0, v1}, Lea/q;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    :cond_9
    return-object v0
.end method
