.class public final Lea/o0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/datasource/TransferListener;


# instance fields
.field public a:J

.field public b:J

.field public c:J


# virtual methods
.method public final onBytesTransferred(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ZI)V
    .locals 0

    .line 1
    iget-wide p1, p0, Lea/o0;->a:J

    .line 2
    .line 3
    int-to-long p3, p4

    .line 4
    add-long/2addr p1, p3

    .line 5
    iput-wide p1, p0, Lea/o0;->a:J

    .line 6
    .line 7
    return-void
.end method

.method public final onTransferEnd(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTransferInitializing(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTransferStart(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)V
    .locals 0

    .line 1
    return-void
.end method
