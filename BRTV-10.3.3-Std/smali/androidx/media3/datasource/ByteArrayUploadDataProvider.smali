.class final Landroidx/media3/datasource/ByteArrayUploadDataProvider;
.super Landroid/net/http/UploadDataProvider;
.source "MyApplication"


# instance fields
.field private final data:[B

.field private position:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/http/UploadDataProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/datasource/ByteArrayUploadDataProvider;->data:[B

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/ByteArrayUploadDataProvider;->data:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    int-to-long v0, v0

    .line 5
    return-wide v0
.end method

.method public read(Landroid/net/http/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/media3/datasource/ByteArrayUploadDataProvider;->data:[B

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    iget v2, p0, Landroidx/media3/datasource/ByteArrayUploadDataProvider;->position:I

    .line 9
    .line 10
    sub-int/2addr v1, v2

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Landroidx/media3/datasource/ByteArrayUploadDataProvider;->data:[B

    .line 16
    .line 17
    iget v2, p0, Landroidx/media3/datasource/ByteArrayUploadDataProvider;->position:I

    .line 18
    .line 19
    invoke-virtual {p2, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    iget p2, p0, Landroidx/media3/datasource/ByteArrayUploadDataProvider;->position:I

    .line 23
    .line 24
    add-int/2addr p2, v0

    .line 25
    iput p2, p0, Landroidx/media3/datasource/ByteArrayUploadDataProvider;->position:I

    .line 26
    .line 27
    invoke-static {p1}, Landroidx/media3/datasource/b;->o(Landroid/net/http/UploadDataSink;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public rewind(Landroid/net/http/UploadDataSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/media3/datasource/ByteArrayUploadDataProvider;->position:I

    .line 3
    .line 4
    invoke-static {p1}, Landroidx/media3/datasource/b;->z(Landroid/net/http/UploadDataSink;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
