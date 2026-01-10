.class public final Lp/g;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[Ljava/lang/Object;


# virtual methods
.method public a(Lj8/b;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lp/g;->d:[Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lp/g;->a:I

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const v3, -0x61c88647

    .line 10
    .line 11
    .line 12
    mul-int v2, v2, v3

    .line 13
    .line 14
    ushr-int/lit8 v4, v2, 0x10

    .line 15
    .line 16
    xor-int/2addr v2, v4

    .line 17
    and-int/2addr v2, v1

    .line 18
    aget-object v4, v0, v2

    .line 19
    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    and-int/2addr v2, v1

    .line 32
    aget-object v4, v0, v2

    .line 33
    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    :goto_0
    aput-object p1, v0, v2

    .line 45
    .line 46
    iget p1, p0, Lp/g;->b:I

    .line 47
    .line 48
    add-int/lit8 p1, p1, 0x1

    .line 49
    .line 50
    iput p1, p0, Lp/g;->b:I

    .line 51
    .line 52
    iget v0, p0, Lp/g;->c:I

    .line 53
    .line 54
    if-lt p1, v0, :cond_7

    .line 55
    .line 56
    iget-object v0, p0, Lp/g;->d:[Ljava/lang/Object;

    .line 57
    .line 58
    array-length v1, v0

    .line 59
    shl-int/lit8 v2, v1, 0x1

    .line 60
    .line 61
    add-int/lit8 v4, v2, -0x1

    .line 62
    .line 63
    new-array v5, v2, [Ljava/lang/Object;

    .line 64
    .line 65
    :goto_1
    add-int/lit8 v6, p1, -0x1

    .line 66
    .line 67
    if-eqz p1, :cond_6

    .line 68
    .line 69
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 70
    .line 71
    aget-object p1, v0, v1

    .line 72
    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    mul-int p1, p1, v3

    .line 81
    .line 82
    ushr-int/lit8 v7, p1, 0x10

    .line 83
    .line 84
    xor-int/2addr p1, v7

    .line 85
    and-int/2addr p1, v4

    .line 86
    aget-object v7, v5, p1

    .line 87
    .line 88
    if-eqz v7, :cond_5

    .line 89
    .line 90
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 91
    .line 92
    and-int/2addr p1, v4

    .line 93
    aget-object v7, v5, p1

    .line 94
    .line 95
    if-nez v7, :cond_4

    .line 96
    .line 97
    :cond_5
    aget-object v7, v0, v1

    .line 98
    .line 99
    aput-object v7, v5, p1

    .line 100
    .line 101
    move p1, v6

    .line 102
    goto :goto_1

    .line 103
    :cond_6
    iput v4, p0, Lp/g;->a:I

    .line 104
    .line 105
    int-to-float p1, v2

    .line 106
    const/high16 v0, 0x3f400000    # 0.75f

    .line 107
    .line 108
    mul-float p1, p1, v0

    .line 109
    .line 110
    float-to-int p1, p1

    .line 111
    iput p1, p0, Lp/g;->c:I

    .line 112
    .line 113
    iput-object v5, p0, Lp/g;->d:[Ljava/lang/Object;

    .line 114
    .line 115
    :cond_7
    return-void
.end method

.method public b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lp/g;->d:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    iget v2, p0, Lp/g;->a:I

    .line 5
    .line 6
    sub-int v3, v1, v2

    .line 7
    .line 8
    shl-int/lit8 v4, v1, 0x1

    .line 9
    .line 10
    if-ltz v4, :cond_0

    .line 11
    .line 12
    new-array v5, v4, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    invoke-static {v6, v2, v1, v0, v5}, Lx8/i;->D(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lp/g;->d:[Ljava/lang/Object;

    .line 19
    .line 20
    iget v2, p0, Lp/g;->a:I

    .line 21
    .line 22
    invoke-static {v3, v6, v2, v0, v5}, Lx8/i;->D(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object v5, p0, Lp/g;->d:[Ljava/lang/Object;

    .line 26
    .line 27
    iput v6, p0, Lp/g;->a:I

    .line 28
    .line 29
    iput v1, p0, Lp/g;->b:I

    .line 30
    .line 31
    add-int/lit8 v4, v4, -0x1

    .line 32
    .line 33
    iput v4, p0, Lp/g;->c:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 37
    .line 38
    const-string v1, "Max array capacity exceeded"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public c([Ljava/lang/Object;II)V
    .locals 4

    .line 1
    iget v0, p0, Lp/g;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lp/g;->b:I

    .line 6
    .line 7
    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 8
    .line 9
    :goto_1
    and-int/2addr v0, p3

    .line 10
    aget-object v1, p1, v0

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    aput-object p3, p1, p2

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const v3, -0x61c88647

    .line 23
    .line 24
    .line 25
    mul-int v2, v2, v3

    .line 26
    .line 27
    ushr-int/lit8 v3, v2, 0x10

    .line 28
    .line 29
    xor-int/2addr v2, v3

    .line 30
    and-int/2addr v2, p3

    .line 31
    if-gt p2, v0, :cond_1

    .line 32
    .line 33
    if-ge p2, v2, :cond_2

    .line 34
    .line 35
    if-le v2, v0, :cond_3

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    if-lt p2, v2, :cond_3

    .line 39
    .line 40
    if-le v2, v0, :cond_3

    .line 41
    .line 42
    :cond_2
    :goto_2
    aput-object v1, p1, p2

    .line 43
    .line 44
    move p2, v0

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_1
.end method

.method public d(I)V
    .locals 5

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lp/g;->f()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-gt p1, v0, :cond_5

    .line 9
    .line 10
    iget v0, p0, Lp/g;->b:I

    .line 11
    .line 12
    if-ge p1, v0, :cond_1

    .line 13
    .line 14
    sub-int v1, v0, p1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    :goto_0
    move v2, v1

    .line 19
    :goto_1
    const/4 v3, 0x0

    .line 20
    if-ge v2, v0, :cond_2

    .line 21
    .line 22
    iget-object v4, p0, Lp/g;->d:[Ljava/lang/Object;

    .line 23
    .line 24
    aput-object v3, v4, v2

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    iget v0, p0, Lp/g;->b:I

    .line 30
    .line 31
    sub-int v1, v0, v1

    .line 32
    .line 33
    sub-int/2addr p1, v1

    .line 34
    sub-int/2addr v0, v1

    .line 35
    iput v0, p0, Lp/g;->b:I

    .line 36
    .line 37
    if-lez p1, :cond_4

    .line 38
    .line 39
    iget-object v0, p0, Lp/g;->d:[Ljava/lang/Object;

    .line 40
    .line 41
    array-length v0, v0

    .line 42
    iput v0, p0, Lp/g;->b:I

    .line 43
    .line 44
    sub-int p1, v0, p1

    .line 45
    .line 46
    move v1, p1

    .line 47
    :goto_2
    if-ge v1, v0, :cond_3

    .line 48
    .line 49
    iget-object v2, p0, Lp/g;->d:[Ljava/lang/Object;

    .line 50
    .line 51
    aput-object v3, v2, v1

    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    iput p1, p0, Lp/g;->b:I

    .line 57
    .line 58
    :cond_4
    return-void

    .line 59
    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public e(I)V
    .locals 4

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lp/g;->f()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-gt p1, v0, :cond_5

    .line 9
    .line 10
    iget-object v0, p0, Lp/g;->d:[Ljava/lang/Object;

    .line 11
    .line 12
    array-length v0, v0

    .line 13
    iget v1, p0, Lp/g;->a:I

    .line 14
    .line 15
    sub-int v2, v0, v1

    .line 16
    .line 17
    if-ge p1, v2, :cond_1

    .line 18
    .line 19
    add-int v0, v1, p1

    .line 20
    .line 21
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 22
    if-ge v1, v0, :cond_2

    .line 23
    .line 24
    iget-object v3, p0, Lp/g;->d:[Ljava/lang/Object;

    .line 25
    .line 26
    aput-object v2, v3, v1

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget v1, p0, Lp/g;->a:I

    .line 32
    .line 33
    sub-int/2addr v0, v1

    .line 34
    sub-int/2addr p1, v0

    .line 35
    add-int/2addr v1, v0

    .line 36
    iget v0, p0, Lp/g;->c:I

    .line 37
    .line 38
    and-int/2addr v0, v1

    .line 39
    iput v0, p0, Lp/g;->a:I

    .line 40
    .line 41
    if-lez p1, :cond_4

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    :goto_1
    if-ge v0, p1, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Lp/g;->d:[Ljava/lang/Object;

    .line 47
    .line 48
    aput-object v2, v1, v0

    .line 49
    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    iput p1, p0, Lp/g;->a:I

    .line 54
    .line 55
    :cond_4
    return-void

    .line 56
    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public f()I
    .locals 2

    .line 1
    iget v0, p0, Lp/g;->b:I

    .line 2
    .line 3
    iget v1, p0, Lp/g;->a:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget v1, p0, Lp/g;->c:I

    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    return v0
.end method
