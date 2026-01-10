.class public final Landroidx/media3/datasource/ByteArrayDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "MyApplication"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/ByteArrayDataSource$UriResolver;
    }
.end annotation


# instance fields
.field private bytesRemaining:I

.field private data:[B

.field private opened:Z

.field private readPosition:I

.field private uri:Landroid/net/Uri;

.field private final uriResolver:Landroidx/media3/datasource/ByteArrayDataSource$UriResolver;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/ByteArrayDataSource$UriResolver;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    .line 4
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/datasource/ByteArrayDataSource$UriResolver;

    iput-object p1, p0, Landroidx/media3/datasource/ByteArrayDataSource;->uriResolver:Landroidx/media3/datasource/ByteArrayDataSource$UriResolver;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/datasource/a;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/a;-><init>([B)V

    invoke-direct {p0, v0}, Landroidx/media3/datasource/ByteArrayDataSource;-><init>(Landroidx/media3/datasource/ByteArrayDataSource$UriResolver;)V

    .line 2
    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    return-void
.end method

.method public static synthetic a([BLandroid/net/Uri;)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/datasource/ByteArrayDataSource;->lambda$new$0([BLandroid/net/Uri;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$new$0([BLandroid/net/Uri;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->opened:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->opened:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->uri:Landroid/net/Uri;

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->data:[B

    .line 15
    .line 16
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->uri:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->transferInitializing(Landroidx/media3/datasource/DataSpec;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->uri:Landroid/net/Uri;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/datasource/ByteArrayDataSource;->uriResolver:Landroidx/media3/datasource/ByteArrayDataSource$UriResolver;

    .line 9
    .line 10
    invoke-interface {v1, v0}, Landroidx/media3/datasource/ByteArrayDataSource$UriResolver;->resolve(Landroid/net/Uri;)[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->data:[B

    .line 15
    .line 16
    iget-wide v1, p1, Landroidx/media3/datasource/DataSpec;->position:J

    .line 17
    .line 18
    array-length v3, v0

    .line 19
    int-to-long v3, v3

    .line 20
    cmp-long v5, v1, v3

    .line 21
    .line 22
    if-gtz v5, :cond_2

    .line 23
    .line 24
    long-to-int v2, v1

    .line 25
    iput v2, p0, Landroidx/media3/datasource/ByteArrayDataSource;->readPosition:I

    .line 26
    .line 27
    array-length v0, v0

    .line 28
    sub-int/2addr v0, v2

    .line 29
    iput v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->bytesRemaining:I

    .line 30
    .line 31
    iget-wide v1, p1, Landroidx/media3/datasource/DataSpec;->length:J

    .line 32
    .line 33
    const-wide/16 v3, -0x1

    .line 34
    .line 35
    cmp-long v5, v1, v3

    .line 36
    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    int-to-long v5, v0

    .line 40
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    long-to-int v1, v0

    .line 45
    iput v1, p0, Landroidx/media3/datasource/ByteArrayDataSource;->bytesRemaining:I

    .line 46
    .line 47
    :cond_0
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->opened:Z

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    .line 51
    .line 52
    .line 53
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    .line 54
    .line 55
    cmp-long p1, v0, v3

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget p1, p0, Landroidx/media3/datasource/ByteArrayDataSource;->bytesRemaining:I

    .line 61
    .line 62
    int-to-long v0, p1

    .line 63
    :goto_0
    return-wide v0

    .line 64
    :cond_2
    new-instance p1, Landroidx/media3/datasource/DataSourceException;

    .line 65
    .line 66
    const/16 v0, 0x7d8

    .line 67
    .line 68
    invoke-direct {p1, v0}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    .line 69
    .line 70
    .line 71
    throw p1
.end method

.method public read([BII)I
    .locals 2

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->bytesRemaining:I

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    return p1

    .line 11
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    iget-object v0, p0, Landroidx/media3/datasource/ByteArrayDataSource;->data:[B

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Landroidx/media3/datasource/ByteArrayDataSource;->readPosition:I

    .line 22
    .line 23
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iget p1, p0, Landroidx/media3/datasource/ByteArrayDataSource;->readPosition:I

    .line 27
    .line 28
    add-int/2addr p1, p3

    .line 29
    iput p1, p0, Landroidx/media3/datasource/ByteArrayDataSource;->readPosition:I

    .line 30
    .line 31
    iget p1, p0, Landroidx/media3/datasource/ByteArrayDataSource;->bytesRemaining:I

    .line 32
    .line 33
    sub-int/2addr p1, p3

    .line 34
    iput p1, p0, Landroidx/media3/datasource/ByteArrayDataSource;->bytesRemaining:I

    .line 35
    .line 36
    invoke-virtual {p0, p3}, Landroidx/media3/datasource/BaseDataSource;->bytesTransferred(I)V

    .line 37
    .line 38
    .line 39
    return p3
.end method
