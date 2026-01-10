.class public Landroidx/media3/datasource/FileDescriptorDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "MyApplication"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final inUseFileDescriptors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/io/FileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bytesRemaining:J

.field private final fileDescriptor:Ljava/io/FileDescriptor;

.field private inputStream:Ljava/io/FileInputStream;

.field private final length:J

.field private final offset:J

.field private opened:Z

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Landroidx/media3/datasource/FileDescriptorDataSource;->inUseFileDescriptors:Ljava/util/Set;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;JJ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/io/FileDescriptor;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->fileDescriptor:Ljava/io/FileDescriptor;

    .line 12
    .line 13
    iput-wide p2, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->offset:J

    .line 14
    .line 15
    iput-wide p4, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->length:J

    .line 16
    .line 17
    return-void
.end method

.method private static seekFileDescriptor(Ljava/io/FileDescriptor;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/DataSourceException;
        }
    .end annotation

    .line 1
    :try_start_0
    sget v0, Landroid/system/OsConstants;->SEEK_SET:I

    .line 2
    .line 3
    invoke-static {p0, p1, p2, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Landroidx/media3/datasource/DataSourceException;

    .line 9
    .line 10
    const/16 p2, 0x7d0

    .line 11
    .line 12
    invoke-direct {p1, p0, p2}, Landroidx/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/DataSourceException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->uri:Landroid/net/Uri;

    .line 3
    .line 4
    sget-object v1, Landroidx/media3/datasource/FileDescriptorDataSource;->inUseFileDescriptors:Ljava/util/Set;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->fileDescriptor:Ljava/io/FileDescriptor;

    .line 7
    .line 8
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    iget-object v2, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v2

    .line 21
    goto :goto_2

    .line 22
    :catch_0
    move-exception v2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iput-object v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 25
    .line 26
    iget-boolean v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->opened:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iput-boolean v1, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->opened:Z

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void

    .line 36
    :goto_1
    :try_start_1
    new-instance v3, Landroidx/media3/datasource/DataSourceException;

    .line 37
    .line 38
    const/16 v4, 0x7d0

    .line 39
    .line 40
    invoke-direct {v3, v2, v4}, Landroidx/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .line 41
    .line 42
    .line 43
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :goto_2
    iput-object v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 45
    .line 46
    iget-boolean v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->opened:Z

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iput-boolean v1, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->opened:Z

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    .line 53
    .line 54
    .line 55
    :cond_2
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->uri:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/DataSourceException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->uri:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->transferInitializing(Landroidx/media3/datasource/DataSpec;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Landroidx/media3/datasource/FileDescriptorDataSource;->inUseFileDescriptors:Ljava/util/Set;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->fileDescriptor:Ljava/io/FileDescriptor;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_9

    .line 17
    .line 18
    iget-wide v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->length:J

    .line 19
    .line 20
    const/16 v2, 0x7d8

    .line 21
    .line 22
    const-wide/16 v3, -0x1

    .line 23
    .line 24
    cmp-long v5, v0, v3

    .line 25
    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    iget-wide v5, p1, Landroidx/media3/datasource/DataSpec;->position:J

    .line 29
    .line 30
    cmp-long v7, v5, v0

    .line 31
    .line 32
    if-gtz v7, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Landroidx/media3/datasource/DataSourceException;

    .line 36
    .line 37
    invoke-direct {p1, v2}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :catch_0
    move-exception p1

    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :catch_1
    move-exception p1

    .line 45
    goto/16 :goto_6

    .line 46
    .line 47
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->fileDescriptor:Ljava/io/FileDescriptor;

    .line 48
    .line 49
    iget-wide v5, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->offset:J

    .line 50
    .line 51
    iget-wide v7, p1, Landroidx/media3/datasource/DataSpec;->position:J

    .line 52
    .line 53
    add-long/2addr v5, v7

    .line 54
    invoke-static {v0, v5, v6}, Landroidx/media3/datasource/FileDescriptorDataSource;->seekFileDescriptor(Ljava/io/FileDescriptor;J)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Ljava/io/FileInputStream;

    .line 58
    .line 59
    iget-object v1, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->fileDescriptor:Ljava/io/FileDescriptor;

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 65
    .line 66
    iget-wide v5, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->length:J

    .line 67
    .line 68
    const-wide/16 v7, 0x0

    .line 69
    .line 70
    cmp-long v1, v5, v3

    .line 71
    .line 72
    if-nez v1, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    .line 79
    .line 80
    .line 81
    move-result-wide v5

    .line 82
    cmp-long v1, v5, v7

    .line 83
    .line 84
    if-nez v1, :cond_2

    .line 85
    .line 86
    iput-wide v3, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->bytesRemaining:J

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    sub-long/2addr v5, v0

    .line 94
    iput-wide v5, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->bytesRemaining:J

    .line 95
    .line 96
    cmp-long v0, v5, v7

    .line 97
    .line 98
    if-ltz v0, :cond_3

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    new-instance p1, Landroidx/media3/datasource/DataSourceException;

    .line 102
    .line 103
    invoke-direct {p1, v2}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_4
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->position:J

    .line 108
    .line 109
    sub-long/2addr v5, v0

    .line 110
    iput-wide v5, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->bytesRemaining:J
    :try_end_0
    .catch Landroidx/media3/datasource/DataSourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    cmp-long v0, v5, v7

    .line 113
    .line 114
    if-ltz v0, :cond_8

    .line 115
    .line 116
    :goto_1
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    .line 117
    .line 118
    cmp-long v2, v0, v3

    .line 119
    .line 120
    if-eqz v2, :cond_6

    .line 121
    .line 122
    iget-wide v5, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->bytesRemaining:J

    .line 123
    .line 124
    cmp-long v2, v5, v3

    .line 125
    .line 126
    if-nez v2, :cond_5

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 130
    .line 131
    .line 132
    move-result-wide v0

    .line 133
    :goto_2
    iput-wide v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->bytesRemaining:J

    .line 134
    .line 135
    :cond_6
    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->opened:Z

    .line 137
    .line 138
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    .line 139
    .line 140
    .line 141
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    .line 142
    .line 143
    cmp-long p1, v0, v3

    .line 144
    .line 145
    if-eqz p1, :cond_7

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_7
    iget-wide v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->bytesRemaining:J

    .line 149
    .line 150
    :goto_3
    return-wide v0

    .line 151
    :cond_8
    :try_start_1
    new-instance p1, Landroidx/media3/datasource/DataSourceException;

    .line 152
    .line 153
    invoke-direct {p1, v2}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    .line 154
    .line 155
    .line 156
    throw p1

    .line 157
    :cond_9
    new-instance p1, Landroidx/media3/datasource/DataSourceException;

    .line 158
    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 160
    .line 161
    const-string v1, "Attempted to re-use an already in-use file descriptor"

    .line 162
    .line 163
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const/4 v1, -0x2

    .line 167
    invoke-direct {p1, v0, v1}, Landroidx/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .line 168
    .line 169
    .line 170
    throw p1
    :try_end_1
    .catch Landroidx/media3/datasource/DataSourceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    :goto_4
    new-instance v0, Landroidx/media3/datasource/DataSourceException;

    .line 172
    .line 173
    instance-of v1, p1, Ljava/io/FileNotFoundException;

    .line 174
    .line 175
    if-eqz v1, :cond_a

    .line 176
    .line 177
    const/16 v1, 0x7d5

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_a
    const/16 v1, 0x7d0

    .line 181
    .line 182
    :goto_5
    invoke-direct {v0, p1, v1}, Landroidx/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .line 183
    .line 184
    .line 185
    throw v0

    .line 186
    :goto_6
    throw p1
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/DataSourceException;
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-wide v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->bytesRemaining:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    cmp-long v5, v0, v2

    .line 11
    .line 12
    if-nez v5, :cond_1

    .line 13
    .line 14
    return v4

    .line 15
    :cond_1
    const-wide/16 v2, -0x1

    .line 16
    .line 17
    cmp-long v5, v0, v2

    .line 18
    .line 19
    if-nez v5, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    int-to-long v5, p3

    .line 23
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    long-to-int p3, v0

    .line 28
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 29
    .line 30
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/io/FileInputStream;

    .line 35
    .line 36
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    .line 37
    .line 38
    .line 39
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    if-ne p1, v4, :cond_3

    .line 41
    .line 42
    return v4

    .line 43
    :cond_3
    iget-wide p2, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->bytesRemaining:J

    .line 44
    .line 45
    cmp-long v0, p2, v2

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    int-to-long v0, p1

    .line 50
    sub-long/2addr p2, v0

    .line 51
    iput-wide p2, p0, Landroidx/media3/datasource/FileDescriptorDataSource;->bytesRemaining:J

    .line 52
    .line 53
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->bytesTransferred(I)V

    .line 54
    .line 55
    .line 56
    return p1

    .line 57
    :catch_0
    move-exception p1

    .line 58
    new-instance p2, Landroidx/media3/datasource/DataSourceException;

    .line 59
    .line 60
    const/16 p3, 0x7d0

    .line 61
    .line 62
    invoke-direct {p2, p1, p3}, Landroidx/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .line 63
    .line 64
    .line 65
    throw p2
.end method
