.class public final Ls/d;
.super Ls/e;
.source "MyApplication"


# instance fields
.field public final d:D

.field public final e:D

.field public final f:D

.field public final g:D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ls/e;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls/e;->a:Ljava/lang/String;

    .line 5
    .line 6
    const/16 v0, 0x28

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x2c

    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    iput-wide v3, p0, Ls/d;->d:D

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    iput-wide v2, p0, Ls/d;->e:D

    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    iput-wide v2, p0, Ls/d;->f:D

    .line 73
    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    const/16 v0, 0x29

    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 91
    .line 92
    .line 93
    move-result-wide v0

    .line 94
    iput-wide v0, p0, Ls/d;->g:D

    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method public final a(D)D
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v2, p1, v0

    .line 4
    .line 5
    if-gtz v2, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    cmpl-double v2, p1, v0

    .line 11
    .line 12
    if-ltz v2, :cond_1

    .line 13
    .line 14
    return-wide v0

    .line 15
    :cond_1
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 16
    .line 17
    move-wide v2, v0

    .line 18
    move-wide v4, v2

    .line 19
    :goto_0
    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    cmpl-double v8, v2, v6

    .line 25
    .line 26
    if-lez v8, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0, v4, v5}, Ls/d;->d(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    mul-double v2, v2, v0

    .line 33
    .line 34
    cmpg-double v8, v6, p1

    .line 35
    .line 36
    if-gez v8, :cond_2

    .line 37
    .line 38
    add-double/2addr v4, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    sub-double/2addr v4, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    sub-double v0, v4, v2

    .line 43
    .line 44
    invoke-virtual {p0, v0, v1}, Ls/d;->d(D)D

    .line 45
    .line 46
    .line 47
    move-result-wide v6

    .line 48
    add-double/2addr v4, v2

    .line 49
    invoke-virtual {p0, v4, v5}, Ls/d;->d(D)D

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    invoke-virtual {p0, v0, v1}, Ls/d;->e(D)D

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    invoke-virtual {p0, v4, v5}, Ls/d;->e(D)D

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    sub-double/2addr v4, v0

    .line 62
    sub-double/2addr p1, v6

    .line 63
    mul-double p1, p1, v4

    .line 64
    .line 65
    sub-double/2addr v2, v6

    .line 66
    div-double/2addr p1, v2

    .line 67
    add-double/2addr p1, v0

    .line 68
    return-wide p1
.end method

.method public final b(D)D
    .locals 9

    .line 1
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 2
    .line 3
    move-wide v2, v0

    .line 4
    move-wide v4, v2

    .line 5
    :goto_0
    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmpl-double v8, v2, v6

    .line 11
    .line 12
    if-lez v8, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v4, v5}, Ls/d;->d(D)D

    .line 15
    .line 16
    .line 17
    move-result-wide v6

    .line 18
    mul-double v2, v2, v0

    .line 19
    .line 20
    cmpg-double v8, v6, p1

    .line 21
    .line 22
    if-gez v8, :cond_0

    .line 23
    .line 24
    add-double/2addr v4, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sub-double/2addr v4, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sub-double p1, v4, v2

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Ls/d;->d(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    add-double/2addr v4, v2

    .line 35
    invoke-virtual {p0, v4, v5}, Ls/d;->d(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-virtual {p0, p1, p2}, Ls/d;->e(D)D

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    invoke-virtual {p0, v4, v5}, Ls/d;->e(D)D

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    sub-double/2addr v4, p1

    .line 48
    sub-double/2addr v2, v0

    .line 49
    div-double/2addr v4, v2

    .line 50
    return-wide v4
.end method

.method public final d(D)D
    .locals 6

    .line 1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    .line 3
    sub-double/2addr v0, p1

    .line 4
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 5
    .line 6
    mul-double v2, v2, v0

    .line 7
    .line 8
    mul-double v0, v0, v2

    .line 9
    .line 10
    mul-double v0, v0, p1

    .line 11
    .line 12
    mul-double v2, v2, p1

    .line 13
    .line 14
    mul-double v2, v2, p1

    .line 15
    .line 16
    mul-double v4, p1, p1

    .line 17
    .line 18
    mul-double v4, v4, p1

    .line 19
    .line 20
    iget-wide p1, p0, Ls/d;->d:D

    .line 21
    .line 22
    mul-double p1, p1, v0

    .line 23
    .line 24
    iget-wide v0, p0, Ls/d;->f:D

    .line 25
    .line 26
    mul-double v0, v0, v2

    .line 27
    .line 28
    add-double/2addr v0, p1

    .line 29
    add-double/2addr v0, v4

    .line 30
    return-wide v0
.end method

.method public final e(D)D
    .locals 6

    .line 1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    .line 3
    sub-double/2addr v0, p1

    .line 4
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 5
    .line 6
    mul-double v2, v2, v0

    .line 7
    .line 8
    mul-double v0, v0, v2

    .line 9
    .line 10
    mul-double v0, v0, p1

    .line 11
    .line 12
    mul-double v2, v2, p1

    .line 13
    .line 14
    mul-double v2, v2, p1

    .line 15
    .line 16
    mul-double v4, p1, p1

    .line 17
    .line 18
    mul-double v4, v4, p1

    .line 19
    .line 20
    iget-wide p1, p0, Ls/d;->e:D

    .line 21
    .line 22
    mul-double p1, p1, v0

    .line 23
    .line 24
    iget-wide v0, p0, Ls/d;->g:D

    .line 25
    .line 26
    mul-double v0, v0, v2

    .line 27
    .line 28
    add-double/2addr v0, p1

    .line 29
    add-double/2addr v0, v4

    .line 30
    return-wide v0
.end method
