.class public final Lb7/a0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/CharSequence;

.field public final d:Lb7/e;

.field public e:I

.field public f:I

.field public final synthetic g:La0/b;


# direct methods
.method public constructor <init>(La0/b;Lb7/b0;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb7/a0;->g:La0/b;

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    iput p1, p0, Lb7/a0;->a:I

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lb7/a0;->e:I

    .line 11
    .line 12
    iget-object p1, p2, Lb7/b0;->a:Lb7/e;

    .line 13
    .line 14
    iput-object p1, p0, Lb7/a0;->d:Lb7/e;

    .line 15
    .line 16
    iget p1, p2, Lb7/b0;->c:I

    .line 17
    .line 18
    iput p1, p0, Lb7/a0;->f:I

    .line 19
    .line 20
    iput-object p3, p0, Lb7/a0;->c:Ljava/lang/CharSequence;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 10

    .line 1
    iget v0, p0, Lb7/a0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Lb7/b;->o(Z)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lb7/a0;->a:I

    .line 15
    .line 16
    invoke-static {v0}, Lu/h;->a(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_c

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    if-eq v0, v4, :cond_b

    .line 24
    .line 25
    iput v1, p0, Lb7/a0;->a:I

    .line 26
    .line 27
    iget v0, p0, Lb7/a0;->e:I

    .line 28
    .line 29
    :cond_1
    :goto_1
    iget v1, p0, Lb7/a0;->e:I

    .line 30
    .line 31
    const/4 v4, -0x1

    .line 32
    const/4 v5, 0x3

    .line 33
    if-eq v1, v4, :cond_a

    .line 34
    .line 35
    iget-object v6, p0, Lb7/a0;->g:La0/b;

    .line 36
    .line 37
    iget-object v6, v6, La0/b;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v6, Lb7/d;

    .line 40
    .line 41
    iget-object v7, p0, Lb7/a0;->c:Ljava/lang/CharSequence;

    .line 42
    .line 43
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    invoke-static {v1, v8}, Lb7/b;->k(II)V

    .line 48
    .line 49
    .line 50
    :goto_2
    if-ge v1, v8, :cond_3

    .line 51
    .line 52
    invoke-interface {v7, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    invoke-virtual {v6, v9}, Lb7/d;->a(C)Z

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    if-eqz v9, :cond_2

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    const/4 v1, -0x1

    .line 67
    :goto_3
    if-ne v1, v4, :cond_4

    .line 68
    .line 69
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iput v4, p0, Lb7/a0;->e:I

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_4
    add-int/lit8 v6, v1, 0x1

    .line 77
    .line 78
    iput v6, p0, Lb7/a0;->e:I

    .line 79
    .line 80
    :goto_4
    iget v6, p0, Lb7/a0;->e:I

    .line 81
    .line 82
    if-ne v6, v0, :cond_5

    .line 83
    .line 84
    add-int/lit8 v6, v6, 0x1

    .line 85
    .line 86
    iput v6, p0, Lb7/a0;->e:I

    .line 87
    .line 88
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-le v6, v1, :cond_1

    .line 93
    .line 94
    iput v4, p0, Lb7/a0;->e:I

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_5
    iget-object v6, p0, Lb7/a0;->d:Lb7/e;

    .line 98
    .line 99
    if-ge v0, v1, :cond_6

    .line 100
    .line 101
    invoke-interface {v7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    :cond_6
    if-le v1, v0, :cond_7

    .line 108
    .line 109
    add-int/lit8 v8, v1, -0x1

    .line 110
    .line 111
    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    :cond_7
    iget v8, p0, Lb7/a0;->f:I

    .line 118
    .line 119
    if-ne v8, v3, :cond_8

    .line 120
    .line 121
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    iput v4, p0, Lb7/a0;->e:I

    .line 126
    .line 127
    if-le v1, v0, :cond_9

    .line 128
    .line 129
    add-int/lit8 v4, v1, -0x1

    .line 130
    .line 131
    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_8
    sub-int/2addr v8, v3

    .line 139
    iput v8, p0, Lb7/a0;->f:I

    .line 140
    .line 141
    :cond_9
    :goto_5
    invoke-interface {v7, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    goto :goto_6

    .line 150
    :cond_a
    iput v5, p0, Lb7/a0;->a:I

    .line 151
    .line 152
    const/4 v0, 0x0

    .line 153
    :goto_6
    iput-object v0, p0, Lb7/a0;->b:Ljava/lang/String;

    .line 154
    .line 155
    iget v0, p0, Lb7/a0;->a:I

    .line 156
    .line 157
    if-eq v0, v5, :cond_b

    .line 158
    .line 159
    iput v3, p0, Lb7/a0;->a:I

    .line 160
    .line 161
    const/4 v2, 0x1

    .line 162
    :cond_b
    return v2

    .line 163
    :cond_c
    return v3
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb7/a0;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lb7/a0;->a:I

    .line 9
    .line 10
    iget-object v0, p0, Lb7/a0;->b:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lb7/a0;->b:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method
