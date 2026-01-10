.class public final Lz3/k;
.super Lz3/r;
.source "MyApplication"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/Integer;

.field public final c:J

.field public final d:[B

.field public final e:Ljava/lang/String;

.field public final f:J

.field public final g:Lz3/n;


# direct methods
.method public constructor <init>(JLjava/lang/Integer;J[BLjava/lang/String;JLz3/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lz3/k;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lz3/k;->b:Ljava/lang/Integer;

    .line 7
    .line 8
    iput-wide p4, p0, Lz3/k;->c:J

    .line 9
    .line 10
    iput-object p6, p0, Lz3/k;->d:[B

    .line 11
    .line 12
    iput-object p7, p0, Lz3/k;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-wide p8, p0, Lz3/k;->f:J

    .line 15
    .line 16
    iput-object p10, p0, Lz3/k;->g:Lz3/n;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lz3/r;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_6

    .line 9
    .line 10
    check-cast p1, Lz3/r;

    .line 11
    .line 12
    move-object v1, p1

    .line 13
    check-cast v1, Lz3/k;

    .line 14
    .line 15
    iget-wide v3, v1, Lz3/k;->a:J

    .line 16
    .line 17
    iget-wide v5, p0, Lz3/k;->a:J

    .line 18
    .line 19
    cmp-long v7, v5, v3

    .line 20
    .line 21
    if-nez v7, :cond_5

    .line 22
    .line 23
    iget-object v3, p0, Lz3/k;->b:Ljava/lang/Integer;

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    iget-object v3, v1, Lz3/k;->b:Ljava/lang/Integer;

    .line 28
    .line 29
    if-nez v3, :cond_5

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v4, v1, Lz3/k;->b:Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_5

    .line 39
    .line 40
    :goto_0
    iget-wide v3, v1, Lz3/k;->c:J

    .line 41
    .line 42
    iget-wide v5, p0, Lz3/k;->c:J

    .line 43
    .line 44
    cmp-long v7, v5, v3

    .line 45
    .line 46
    if-nez v7, :cond_5

    .line 47
    .line 48
    instance-of v3, p1, Lz3/k;

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    check-cast p1, Lz3/k;

    .line 53
    .line 54
    iget-object p1, p1, Lz3/k;->d:[B

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget-object p1, v1, Lz3/k;->d:[B

    .line 58
    .line 59
    :goto_1
    iget-object v3, p0, Lz3/k;->d:[B

    .line 60
    .line 61
    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    iget-object p1, v1, Lz3/k;->e:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v3, p0, Lz3/k;->e:Ljava/lang/String;

    .line 70
    .line 71
    if-nez v3, :cond_3

    .line 72
    .line 73
    if-nez p1, :cond_5

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    :goto_2
    iget-wide v3, p0, Lz3/k;->f:J

    .line 83
    .line 84
    iget-wide v5, v1, Lz3/k;->f:J

    .line 85
    .line 86
    cmp-long p1, v3, v5

    .line 87
    .line 88
    if-nez p1, :cond_5

    .line 89
    .line 90
    iget-object p1, v1, Lz3/k;->g:Lz3/n;

    .line 91
    .line 92
    iget-object v1, p0, Lz3/k;->g:Lz3/n;

    .line 93
    .line 94
    if-nez v1, :cond_4

    .line 95
    .line 96
    if-nez p1, :cond_5

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_4
    invoke-virtual {v1, p1}, Lz3/n;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_5
    const/4 v0, 0x0

    .line 107
    :goto_3
    return v0

    .line 108
    :cond_6
    return v2
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget-wide v0, p0, Lz3/k;->a:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v3, v0, v2

    .line 6
    .line 7
    xor-long/2addr v0, v3

    .line 8
    long-to-int v1, v0

    .line 9
    const v0, 0xf4243

    .line 10
    .line 11
    .line 12
    xor-int/2addr v1, v0

    .line 13
    mul-int v1, v1, v0

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    iget-object v4, p0, Lz3/k;->b:Ljava/lang/Integer;

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    :goto_0
    xor-int/2addr v1, v4

    .line 27
    mul-int v1, v1, v0

    .line 28
    .line 29
    iget-wide v4, p0, Lz3/k;->c:J

    .line 30
    .line 31
    ushr-long v6, v4, v2

    .line 32
    .line 33
    xor-long/2addr v4, v6

    .line 34
    long-to-int v5, v4

    .line 35
    xor-int/2addr v1, v5

    .line 36
    mul-int v1, v1, v0

    .line 37
    .line 38
    iget-object v4, p0, Lz3/k;->d:[B

    .line 39
    .line 40
    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    xor-int/2addr v1, v4

    .line 45
    mul-int v1, v1, v0

    .line 46
    .line 47
    iget-object v4, p0, Lz3/k;->e:Ljava/lang/String;

    .line 48
    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    :goto_1
    xor-int/2addr v1, v4

    .line 58
    mul-int v1, v1, v0

    .line 59
    .line 60
    iget-wide v4, p0, Lz3/k;->f:J

    .line 61
    .line 62
    ushr-long v6, v4, v2

    .line 63
    .line 64
    xor-long/2addr v4, v6

    .line 65
    long-to-int v2, v4

    .line 66
    xor-int/2addr v1, v2

    .line 67
    mul-int v1, v1, v0

    .line 68
    .line 69
    iget-object v0, p0, Lz3/k;->g:Lz3/n;

    .line 70
    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {v0}, Lz3/n;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    :goto_2
    xor-int v0, v1, v3

    .line 79
    .line 80
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LogEvent{eventTimeMs="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lz3/k;->a:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", eventCode="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lz3/k;->b:Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", eventUptimeMs="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lz3/k;->c:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", sourceExtension="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lz3/k;->d:[B

    .line 39
    .line 40
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", sourceExtensionJsonProto3="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lz3/k;->e:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ", timezoneOffsetSeconds="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-wide v1, p0, Lz3/k;->f:J

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, ", networkConnectionInfo="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lz3/k;->g:Lz3/n;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, "}"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method
