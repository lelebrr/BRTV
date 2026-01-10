.class public final Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/offline/DownloadNotificationHelper$Api31;
    }
.end annotation


# static fields
.field private static final NULL_STRING_ID:I


# instance fields
.field private final notificationBuilder:Landroidx/core/app/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/core/app/u;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {v0, p1, p2}, Landroidx/core/app/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/u;

    .line 14
    .line 15
    return-void
.end method

.method private buildEndStateNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 11

    .line 1
    const/4 v9, 0x0

    .line 2
    const/4 v10, 0x1

    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v7, 0x0

    .line 5
    const/4 v8, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move v2, p2

    .line 9
    move-object v3, p3

    .line 10
    move-object v4, p4

    .line 11
    move/from16 v5, p5

    .line 12
    .line 13
    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->buildNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;IIIZZZ)Landroid/app/Notification;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private buildNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;IIIZZZ)Landroid/app/Notification;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/u;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/core/app/u;->B:Landroid/app/Notification;

    .line 4
    .line 5
    iput p2, v1, Landroid/app/Notification;->icon:I

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    if-nez p5, :cond_0

    .line 9
    .line 10
    move-object p1, p2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    invoke-static {p1}, Landroidx/core/app/u;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, v0, Landroidx/core/app/u;->e:Ljava/lang/CharSequence;

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/u;

    .line 27
    .line 28
    iput-object p3, p1, Landroidx/core/app/u;->g:Landroid/app/PendingIntent;

    .line 29
    .line 30
    if-nez p4, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    new-instance p2, Landroidx/core/app/t;

    .line 34
    .line 35
    const/4 p3, 0x0

    .line 36
    invoke-direct {p2, p3}, Landroidx/core/app/t;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {p4}, Landroidx/core/app/u;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    iput-object p3, p2, Landroidx/core/app/t;->b:Ljava/lang/Object;

    .line 44
    .line 45
    :goto_1
    invoke-virtual {p1, p2}, Landroidx/core/app/u;->e(Landroidx/core/app/k0;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/u;

    .line 49
    .line 50
    iput p6, p1, Landroidx/core/app/u;->n:I

    .line 51
    .line 52
    iput p7, p1, Landroidx/core/app/u;->o:I

    .line 53
    .line 54
    iput-boolean p8, p1, Landroidx/core/app/u;->p:Z

    .line 55
    .line 56
    const/4 p2, 0x2

    .line 57
    invoke-virtual {p1, p2, p9}, Landroidx/core/app/u;->c(IZ)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/u;

    .line 61
    .line 62
    iput-boolean p10, p1, Landroidx/core/app/u;->j:Z

    .line 63
    .line 64
    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 65
    .line 66
    const/16 p3, 0x1f

    .line 67
    .line 68
    if-lt p2, p3, :cond_2

    .line 69
    .line 70
    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper$Api31;->setForegroundServiceBehavior(Landroidx/core/app/u;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/u;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/core/app/u;->a()Landroid/app/Notification;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1
.end method


# virtual methods
.method public buildDownloadCompletedNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .locals 6

    .line 1
    sget v5, Landroidx/media3/exoplayer/R$string;->exo_download_completed:I

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->buildEndStateNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public buildDownloadFailedNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .locals 6

    .line 1
    sget v5, Landroidx/media3/exoplayer/R$string;->exo_download_failed:I

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->buildEndStateNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public buildProgressNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/List;I)Landroid/app/Notification;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/offline/Download;",
            ">;I)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v7, 0x0

    .line 9
    const/4 v8, 0x0

    .line 10
    const/4 v9, 0x1

    .line 11
    :goto_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v10

    .line 15
    if-ge v3, v10, :cond_5

    .line 16
    .line 17
    move-object/from16 v10, p5

    .line 18
    .line 19
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v11

    .line 23
    check-cast v11, Landroidx/media3/exoplayer/offline/Download;

    .line 24
    .line 25
    iget v12, v11, Landroidx/media3/exoplayer/offline/Download;->state:I

    .line 26
    .line 27
    if-eqz v12, :cond_4

    .line 28
    .line 29
    const/4 v13, 0x2

    .line 30
    if-eq v12, v13, :cond_1

    .line 31
    .line 32
    const/4 v13, 0x5

    .line 33
    if-eq v12, v13, :cond_0

    .line 34
    .line 35
    const/4 v13, 0x7

    .line 36
    if-eq v12, v13, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_0
    const/4 v7, 0x1

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    invoke-virtual {v11}, Landroidx/media3/exoplayer/offline/Download;->getPercentDownloaded()F

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const/high16 v12, -0x40800000    # -1.0f

    .line 46
    .line 47
    cmpl-float v12, v4, v12

    .line 48
    .line 49
    if-eqz v12, :cond_2

    .line 50
    .line 51
    add-float/2addr v0, v4

    .line 52
    const/4 v9, 0x0

    .line 53
    :cond_2
    invoke-virtual {v11}, Landroidx/media3/exoplayer/offline/Download;->getBytesDownloaded()J

    .line 54
    .line 55
    .line 56
    move-result-wide v11

    .line 57
    const-wide/16 v13, 0x0

    .line 58
    .line 59
    cmp-long v4, v11, v13

    .line 60
    .line 61
    if-lez v4, :cond_3

    .line 62
    .line 63
    const/4 v4, 0x1

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/4 v4, 0x0

    .line 66
    :goto_1
    or-int/2addr v6, v4

    .line 67
    add-int/lit8 v8, v8, 0x1

    .line 68
    .line 69
    const/4 v4, 0x1

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    const/4 v5, 0x1

    .line 72
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    if-eqz v4, :cond_6

    .line 76
    .line 77
    sget v3, Landroidx/media3/exoplayer/R$string;->exo_download_downloading:I

    .line 78
    .line 79
    :goto_3
    move v15, v3

    .line 80
    const/4 v3, 0x1

    .line 81
    goto :goto_5

    .line 82
    :cond_6
    if-eqz v5, :cond_9

    .line 83
    .line 84
    if-eqz p6, :cond_9

    .line 85
    .line 86
    and-int/lit8 v3, p6, 0x2

    .line 87
    .line 88
    if-eqz v3, :cond_7

    .line 89
    .line 90
    sget v3, Landroidx/media3/exoplayer/R$string;->exo_download_paused_for_wifi:I

    .line 91
    .line 92
    :goto_4
    move v15, v3

    .line 93
    const/4 v3, 0x0

    .line 94
    goto :goto_5

    .line 95
    :cond_7
    and-int/lit8 v3, p6, 0x1

    .line 96
    .line 97
    if-eqz v3, :cond_8

    .line 98
    .line 99
    sget v3, Landroidx/media3/exoplayer/R$string;->exo_download_paused_for_network:I

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_8
    sget v3, Landroidx/media3/exoplayer/R$string;->exo_download_paused:I

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_9
    if-eqz v7, :cond_a

    .line 106
    .line 107
    sget v3, Landroidx/media3/exoplayer/R$string;->exo_download_removing:I

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_a
    const/4 v3, 0x1

    .line 111
    const/4 v15, 0x0

    .line 112
    :goto_5
    if-eqz v3, :cond_d

    .line 113
    .line 114
    const/16 v3, 0x64

    .line 115
    .line 116
    if-eqz v4, :cond_c

    .line 117
    .line 118
    int-to-float v4, v8

    .line 119
    div-float/2addr v0, v4

    .line 120
    float-to-int v0, v0

    .line 121
    if-eqz v9, :cond_b

    .line 122
    .line 123
    if-eqz v6, :cond_b

    .line 124
    .line 125
    const/4 v1, 0x1

    .line 126
    :cond_b
    move/from16 v17, v0

    .line 127
    .line 128
    move/from16 v18, v1

    .line 129
    .line 130
    const/16 v16, 0x64

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_c
    const/16 v16, 0x64

    .line 134
    .line 135
    const/16 v17, 0x0

    .line 136
    .line 137
    const/16 v18, 0x1

    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_d
    const/16 v16, 0x0

    .line 141
    .line 142
    const/16 v17, 0x0

    .line 143
    .line 144
    const/16 v18, 0x0

    .line 145
    .line 146
    :goto_6
    const/16 v19, 0x1

    .line 147
    .line 148
    const/16 v20, 0x0

    .line 149
    .line 150
    move-object/from16 v10, p0

    .line 151
    .line 152
    move-object/from16 v11, p1

    .line 153
    .line 154
    move/from16 v12, p2

    .line 155
    .line 156
    move-object/from16 v13, p3

    .line 157
    .line 158
    move-object/from16 v14, p4

    .line 159
    .line 160
    invoke-direct/range {v10 .. v20}, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->buildNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;IIIZZZ)Landroid/app/Notification;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    return-object v0
.end method
