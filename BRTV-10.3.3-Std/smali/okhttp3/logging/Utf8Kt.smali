.class public final Lokhttp3/logging/Utf8Kt;
.super Ljava/lang/Object;
.source "MyApplication"


# direct methods
.method public static final isProbablyUtf8(Lokio/Buffer;)Z
    .locals 8

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    new-instance v7, Lokio/Buffer;

    .line 8
    .line 9
    invoke-direct {v7}, Lokio/Buffer;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    const-wide/16 v3, 0x40

    .line 17
    .line 18
    cmp-long v5, v1, v3

    .line 19
    .line 20
    if-lez v5, :cond_0

    .line 21
    .line 22
    move-wide v5, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-wide v5, v1

    .line 25
    :goto_0
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    move-object v1, p0

    .line 28
    move-object v2, v7

    .line 29
    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    :cond_1
    const/16 v1, 0x10

    .line 34
    .line 35
    if-ge p0, v1, :cond_3

    .line 36
    .line 37
    add-int/lit8 p0, p0, 0x1

    .line 38
    .line 39
    invoke-virtual {v7}, Lokio/Buffer;->exhausted()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {v7}, Lokio/Buffer;->readUtf8CodePoint()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(I)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    .line 57
    .line 58
    .line 59
    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    if-nez v1, :cond_1

    .line 61
    .line 62
    return v0

    .line 63
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 64
    return p0

    .line 65
    :catch_0
    return v0
.end method
