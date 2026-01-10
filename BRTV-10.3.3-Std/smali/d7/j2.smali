.class public Ld7/j2;
.super Ld7/p1;
.source "MyApplication"


# instance fields
.field public d:[Ljava/lang/Object;

.field public e:I


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)Ld7/p1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld7/j2;->g(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public g(Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld7/j2;->d:[Ljava/lang/Object;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget v0, p0, Ld7/p1;->b:I

    .line 9
    .line 10
    invoke-static {v0}, Ld7/k2;->j(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Ld7/j2;->d:[Ljava/lang/Object;

    .line 15
    .line 16
    array-length v2, v1

    .line 17
    if-gt v0, v2, :cond_2

    .line 18
    .line 19
    array-length v0, v1

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ld7/d0;->A(I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    :goto_0
    and-int/2addr v2, v0

    .line 31
    iget-object v3, p0, Ld7/j2;->d:[Ljava/lang/Object;

    .line 32
    .line 33
    aget-object v4, v3, v2

    .line 34
    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    aput-object p1, v3, v2

    .line 38
    .line 39
    iget v0, p0, Ld7/j2;->e:I

    .line 40
    .line 41
    add-int/2addr v0, v1

    .line 42
    iput v0, p0, Ld7/j2;->e:I

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ld7/p1;->a(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    :goto_1
    return-void

    .line 55
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Ld7/j2;->d:[Ljava/lang/Object;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Ld7/p1;->a(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public h(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld7/j2;->d:[Ljava/lang/Object;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Ld7/j2;->g(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Ld7/p1;->d(Ljava/lang/Iterable;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public i()Ld7/k2;
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Ld7/p1;->b:I

    .line 3
    .line 4
    if-eqz v1, :cond_3

    .line 5
    .line 6
    if-eq v1, v0, :cond_2

    .line 7
    .line 8
    iget-object v2, p0, Ld7/j2;->d:[Ljava/lang/Object;

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    invoke-static {v1}, Ld7/k2;->j(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Ld7/j2;->d:[Ljava/lang/Object;

    .line 17
    .line 18
    array-length v2, v2

    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    iget v1, p0, Ld7/p1;->b:I

    .line 22
    .line 23
    iget-object v2, p0, Ld7/p1;->a:[Ljava/lang/Object;

    .line 24
    .line 25
    array-length v3, v2

    .line 26
    shr-int/lit8 v4, v3, 0x1

    .line 27
    .line 28
    shr-int/lit8 v3, v3, 0x2

    .line 29
    .line 30
    add-int/2addr v4, v3

    .line 31
    if-ge v1, v4, :cond_0

    .line 32
    .line 33
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :cond_0
    move-object v7, v2

    .line 38
    new-instance v1, Ld7/i5;

    .line 39
    .line 40
    iget v4, p0, Ld7/j2;->e:I

    .line 41
    .line 42
    iget-object v8, p0, Ld7/j2;->d:[Ljava/lang/Object;

    .line 43
    .line 44
    array-length v2, v8

    .line 45
    add-int/lit8 v5, v2, -0x1

    .line 46
    .line 47
    iget v6, p0, Ld7/p1;->b:I

    .line 48
    .line 49
    move-object v3, v1

    .line 50
    invoke-direct/range {v3 .. v8}, Ld7/i5;-><init>(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget v1, p0, Ld7/p1;->b:I

    .line 55
    .line 56
    iget-object v2, p0, Ld7/p1;->a:[Ljava/lang/Object;

    .line 57
    .line 58
    invoke-static {v2, v1}, Ld7/k2;->k([Ljava/lang/Object;I)Ld7/k2;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    iput v2, p0, Ld7/p1;->b:I

    .line 67
    .line 68
    :goto_0
    iput-boolean v0, p0, Ld7/p1;->c:Z

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Ld7/j2;->d:[Ljava/lang/Object;

    .line 72
    .line 73
    return-object v1

    .line 74
    :cond_2
    iget-object v0, p0, Ld7/p1;->a:[Ljava/lang/Object;

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    aget-object v0, v0, v1

    .line 78
    .line 79
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    sget v1, Ld7/k2;->c:I

    .line 83
    .line 84
    new-instance v1, Ld7/m2;

    .line 85
    .line 86
    invoke-direct {v1, v0}, Ld7/m2;-><init>(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_3
    sget v0, Ld7/k2;->c:I

    .line 91
    .line 92
    sget-object v0, Ld7/i5;->j:Ld7/i5;

    .line 93
    .line 94
    return-object v0
.end method
