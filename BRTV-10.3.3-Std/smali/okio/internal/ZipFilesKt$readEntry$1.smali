.class final Lokio/internal/ZipFilesKt$readEntry$1;
.super Lj9/j;
.source "MyApplication"

# interfaces
.implements Li9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/ZipFilesKt;->readEntry(Lokio/BufferedSource;)Lokio/internal/ZipEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj9/j;",
        "Li9/p;"
    }
.end annotation


# instance fields
.field final synthetic $compressedSize:Lj9/m;

.field final synthetic $hasZip64Extra:Lj9/l;

.field final synthetic $offset:Lj9/m;

.field final synthetic $requiredZip64ExtraSize:J

.field final synthetic $size:Lj9/m;

.field final synthetic $this_readEntry:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lj9/l;JLj9/m;Lokio/BufferedSource;Lj9/m;Lj9/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$hasZip64Extra:Lj9/l;

    .line 2
    .line 3
    iput-wide p2, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$requiredZip64ExtraSize:J

    .line 4
    .line 5
    iput-object p4, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$size:Lj9/m;

    .line 6
    .line 7
    iput-object p5, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$this_readEntry:Lokio/BufferedSource;

    .line 8
    .line 9
    iput-object p6, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$compressedSize:Lj9/m;

    .line 10
    .line 11
    iput-object p7, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$offset:Lj9/m;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1}, Lj9/j;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/internal/ZipFilesKt$readEntry$1;->invoke(IJ)V

    sget-object p1, Lw8/l;->a:Lw8/l;

    return-object p1
.end method

.method public final invoke(IJ)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 2
    iget-object p1, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$hasZip64Extra:Lj9/l;

    iget-boolean v1, p1, Lj9/l;->a:Z

    if-nez v1, :cond_4

    .line 3
    iput-boolean v0, p1, Lj9/l;->a:Z

    .line 4
    iget-wide v0, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$requiredZip64ExtraSize:J

    cmp-long p1, p2, v0

    if-ltz p1, :cond_3

    .line 5
    iget-object p1, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$size:Lj9/m;

    iget-wide p2, p1, Lj9/m;->a:J

    const-wide v0, 0xffffffffL

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    iget-object p2, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$this_readEntry:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide p2

    :cond_0
    iput-wide p2, p1, Lj9/m;->a:J

    .line 6
    iget-object p1, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$compressedSize:Lj9/m;

    iget-wide p2, p1, Lj9/m;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v0

    if-nez v4, :cond_1

    iget-object p2, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$this_readEntry:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide p2

    goto :goto_0

    :cond_1
    move-wide p2, v2

    :goto_0
    iput-wide p2, p1, Lj9/m;->a:J

    .line 7
    iget-object p1, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$offset:Lj9/m;

    iget-wide p2, p1, Lj9/m;->a:J

    cmp-long v4, p2, v0

    if-nez v4, :cond_2

    iget-object p2, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$this_readEntry:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v2

    :cond_2
    iput-wide v2, p1, Lj9/m;->a:J

    goto :goto_1

    .line 8
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: zip64 extra too short"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: zip64 extra repeated"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method
