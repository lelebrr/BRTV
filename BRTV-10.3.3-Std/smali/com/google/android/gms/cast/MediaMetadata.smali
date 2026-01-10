.class public Lcom/google/android/gms/cast/MediaMetadata;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "MyApplication"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:[Ljava/lang/String;

.field public static final e:La1/b;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Landroid/os/Bundle;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v2, "int"

    .line 2
    .line 3
    const-string v3, "double"

    .line 4
    .line 5
    const-string v0, "none"

    .line 6
    .line 7
    const-string v1, "String"

    .line 8
    .line 9
    const-string v4, "ISO-8601 date String"

    .line 10
    .line 11
    const-string v5, "Time in milliseconds as long"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/android/gms/cast/MediaMetadata;->d:[Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Lh5/a;

    .line 20
    .line 21
    const/16 v1, 0x16

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lh5/a;-><init>(I)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/google/android/gms/cast/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    .line 28
    new-instance v0, La1/b;

    .line 29
    .line 30
    const/16 v1, 0x1c

    .line 31
    .line 32
    invoke-direct {v0, v1}, La1/b;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const-string v1, "com.google.android.gms.cast.metadata.CREATION_DATE"

    .line 36
    .line 37
    const-string v2, "creationDateTime"

    .line 38
    .line 39
    const/4 v3, 0x4

    .line 40
    invoke-virtual {v0, v3, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    .line 44
    .line 45
    const-string v2, "releaseDate"

    .line 46
    .line 47
    invoke-virtual {v0, v3, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    .line 51
    .line 52
    const-string v2, "originalAirdate"

    .line 53
    .line 54
    invoke-virtual {v0, v3, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    .line 58
    .line 59
    const-string v2, "title"

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    invoke-virtual {v0, v3, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v1, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 66
    .line 67
    const-string v2, "subtitle"

    .line 68
    .line 69
    invoke-virtual {v0, v3, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v1, "com.google.android.gms.cast.metadata.ARTIST"

    .line 73
    .line 74
    const-string v2, "artist"

    .line 75
    .line 76
    invoke-virtual {v0, v3, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v1, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    .line 80
    .line 81
    const-string v2, "albumArtist"

    .line 82
    .line 83
    invoke-virtual {v0, v3, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v1, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    .line 87
    .line 88
    const-string v2, "albumName"

    .line 89
    .line 90
    invoke-virtual {v0, v3, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v1, "com.google.android.gms.cast.metadata.COMPOSER"

    .line 94
    .line 95
    const-string v2, "composer"

    .line 96
    .line 97
    invoke-virtual {v0, v3, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v1, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    .line 101
    .line 102
    const-string v2, "discNumber"

    .line 103
    .line 104
    const/4 v4, 0x2

    .line 105
    invoke-virtual {v0, v4, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v1, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    .line 109
    .line 110
    const-string v2, "trackNumber"

    .line 111
    .line 112
    invoke-virtual {v0, v4, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v1, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    .line 116
    .line 117
    const-string v2, "season"

    .line 118
    .line 119
    invoke-virtual {v0, v4, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string v1, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    .line 123
    .line 124
    const-string v2, "episode"

    .line 125
    .line 126
    invoke-virtual {v0, v4, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string v1, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    .line 130
    .line 131
    const-string v2, "seriesTitle"

    .line 132
    .line 133
    invoke-virtual {v0, v3, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v1, "com.google.android.gms.cast.metadata.STUDIO"

    .line 137
    .line 138
    const-string v2, "studio"

    .line 139
    .line 140
    invoke-virtual {v0, v3, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v1, "com.google.android.gms.cast.metadata.WIDTH"

    .line 144
    .line 145
    const-string v2, "width"

    .line 146
    .line 147
    invoke-virtual {v0, v4, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v1, "com.google.android.gms.cast.metadata.HEIGHT"

    .line 151
    .line 152
    const-string v2, "height"

    .line 153
    .line 154
    invoke-virtual {v0, v4, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    .line 158
    .line 159
    const-string v2, "location"

    .line 160
    .line 161
    invoke-virtual {v0, v3, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    .line 165
    .line 166
    const-string v2, "latitude"

    .line 167
    .line 168
    const/4 v5, 0x3

    .line 169
    invoke-virtual {v0, v5, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    .line 173
    .line 174
    const-string v2, "longitude"

    .line 175
    .line 176
    invoke-virtual {v0, v5, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string v1, "com.google.android.gms.cast.metadata.SECTION_DURATION"

    .line 180
    .line 181
    const-string v2, "sectionDuration"

    .line 182
    .line 183
    const/4 v5, 0x5

    .line 184
    invoke-virtual {v0, v5, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string v1, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA"

    .line 188
    .line 189
    const-string v2, "sectionStartTimeInMedia"

    .line 190
    .line 191
    invoke-virtual {v0, v5, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const-string v1, "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME"

    .line 195
    .line 196
    const-string v2, "sectionStartAbsoluteTime"

    .line 197
    .line 198
    invoke-virtual {v0, v5, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string v1, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER"

    .line 202
    .line 203
    const-string v2, "sectionStartTimeInContainer"

    .line 204
    .line 205
    invoke-virtual {v0, v5, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const-string v1, "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID"

    .line 209
    .line 210
    const-string v2, "queueItemId"

    .line 211
    .line 212
    invoke-virtual {v0, v4, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const-string v1, "com.google.android.gms.cast.metadata.BOOK_TITLE"

    .line 216
    .line 217
    const-string v2, "bookTitle"

    .line 218
    .line 219
    invoke-virtual {v0, v3, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const-string v1, "com.google.android.gms.cast.metadata.CHAPTER_NUMBER"

    .line 223
    .line 224
    const-string v2, "chapterNumber"

    .line 225
    .line 226
    invoke-virtual {v0, v4, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const-string v1, "com.google.android.gms.cast.metadata.CHAPTER_TITLE"

    .line 230
    .line 231
    const-string v2, "chapterTitle"

    .line 232
    .line 233
    invoke-virtual {v0, v3, v1, v2}, La1/b;->L(ILjava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    sput-object v0, Lcom/google/android/gms/cast/MediaMetadata;->e:La1/b;

    .line 237
    .line 238
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/os/Bundle;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaMetadata;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaMetadata;->b:Landroid/os/Bundle;

    iput p3, p0, Lcom/google/android/gms/cast/MediaMetadata;->c:I

    return-void
.end method

.method public static j(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/cast/MediaMetadata;->e:La1/b;

    .line 8
    .line 9
    iget-object v0, v0, La1/b;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Integer;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-eq v0, p0, :cond_2

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    sget-object v1, Lcom/google/android/gms/cast/MediaMetadata;->d:[Ljava/lang/String;

    .line 35
    .line 36
    aget-object p0, v1, p0

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "Value for "

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, " must be a "

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_2
    :goto_1
    return-void

    .line 65
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string p1, "null and empty keys are not allowed"

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0
.end method

.method public static m(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_6

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    instance-of v5, v3, Landroid/os/Bundle;

    .line 42
    .line 43
    if-eqz v5, :cond_3

    .line 44
    .line 45
    instance-of v5, v4, Landroid/os/Bundle;

    .line 46
    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    move-object v5, v3

    .line 50
    check-cast v5, Landroid/os/Bundle;

    .line 51
    .line 52
    move-object v6, v4

    .line 53
    check-cast v6, Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-static {v5, v6}, Lcom/google/android/gms/cast/MediaMetadata;->m(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return v2

    .line 63
    :cond_3
    :goto_0
    if-nez v3, :cond_5

    .line 64
    .line 65
    if-nez v4, :cond_4

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    :cond_4
    return v2

    .line 74
    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_1

    .line 79
    .line 80
    return v2

    .line 81
    :cond_6
    const/4 p0, 0x1

    .line 82
    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaMetadata;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaMetadata;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/google/android/gms/cast/MediaMetadata;->b:Landroid/os/Bundle;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->b:Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-static {v3, v1}, Lcom/google/android/gms/cast/MediaMetadata;->m(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->a:Ljava/util/ArrayList;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/google/android/gms/cast/MediaMetadata;->a:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    return v0

    .line 34
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->b:Landroid/os/Bundle;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 v3, 0x0

    .line 41
    :goto_1
    add-int/2addr v0, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->a:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v1, v0

    .line 52
    return v1
.end method

.method public final l(Lorg/json/JSONObject;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "metadataType"

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/android/gms/cast/MediaMetadata;->b:Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v4, v0, Lcom/google/android/gms/cast/MediaMetadata;->a:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    iput v5, v0, Lcom/google/android/gms/cast/MediaMetadata;->c:I

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    iput v6, v0, Lcom/google/android/gms/cast/MediaMetadata;->c:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    nop

    .line 28
    :goto_0
    const-string v6, "images"

    .line 29
    .line 30
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    invoke-static {v4, v6}, Lw4/a;->b(Ljava/util/ArrayList;Lorg/json/JSONArray;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iget v6, v0, Lcom/google/android/gms/cast/MediaMetadata;->c:I

    .line 45
    .line 46
    const-string v7, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    .line 47
    .line 48
    const/4 v8, 0x5

    .line 49
    const/4 v9, 0x4

    .line 50
    const/4 v10, 0x3

    .line 51
    const/4 v11, 0x2

    .line 52
    const/4 v12, 0x1

    .line 53
    const-string v13, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 54
    .line 55
    const-string v14, "com.google.android.gms.cast.metadata.TITLE"

    .line 56
    .line 57
    if-eqz v6, :cond_6

    .line 58
    .line 59
    if-eq v6, v12, :cond_5

    .line 60
    .line 61
    if-eq v6, v11, :cond_4

    .line 62
    .line 63
    if-eq v6, v10, :cond_3

    .line 64
    .line 65
    if-eq v6, v9, :cond_2

    .line 66
    .line 67
    if-eq v6, v8, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const-string v6, "com.google.android.gms.cast.metadata.BOOK_TITLE"

    .line 71
    .line 72
    const-string v7, "com.google.android.gms.cast.metadata.CHAPTER_TITLE"

    .line 73
    .line 74
    const-string v15, "com.google.android.gms.cast.metadata.CHAPTER_NUMBER"

    .line 75
    .line 76
    filled-new-array {v7, v15, v14, v6, v13}, [Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-static {v4, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    const-string v17, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    .line 85
    .line 86
    const-string v18, "com.google.android.gms.cast.metadata.WIDTH"

    .line 87
    .line 88
    const-string v13, "com.google.android.gms.cast.metadata.TITLE"

    .line 89
    .line 90
    const-string v14, "com.google.android.gms.cast.metadata.ARTIST"

    .line 91
    .line 92
    const-string v15, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    .line 93
    .line 94
    const-string v16, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    .line 95
    .line 96
    const-string v19, "com.google.android.gms.cast.metadata.HEIGHT"

    .line 97
    .line 98
    const-string v20, "com.google.android.gms.cast.metadata.CREATION_DATE"

    .line 99
    .line 100
    filled-new-array/range {v13 .. v20}, [Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-static {v4, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    const-string v17, "com.google.android.gms.cast.metadata.COMPOSER"

    .line 109
    .line 110
    const-string v18, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    .line 111
    .line 112
    const-string v13, "com.google.android.gms.cast.metadata.TITLE"

    .line 113
    .line 114
    const-string v14, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    .line 115
    .line 116
    const-string v15, "com.google.android.gms.cast.metadata.ARTIST"

    .line 117
    .line 118
    const-string v16, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    .line 119
    .line 120
    const-string v19, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    .line 121
    .line 122
    const-string v20, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    .line 123
    .line 124
    filled-new-array/range {v13 .. v20}, [Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-static {v4, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    const-string v6, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    .line 133
    .line 134
    const-string v7, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    .line 135
    .line 136
    const-string v13, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    .line 137
    .line 138
    const-string v15, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    .line 139
    .line 140
    filled-new-array {v14, v6, v7, v13, v15}, [Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-static {v4, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    const-string v6, "com.google.android.gms.cast.metadata.STUDIO"

    .line 149
    .line 150
    filled-new-array {v14, v6, v13, v7}, [Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-static {v4, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_6
    const-string v6, "com.google.android.gms.cast.metadata.ARTIST"

    .line 159
    .line 160
    filled-new-array {v14, v6, v13, v7}, [Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-static {v4, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    :goto_1
    const-string v6, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA"

    .line 168
    .line 169
    const-string v7, "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME"

    .line 170
    .line 171
    const-string v13, "com.google.android.gms.cast.metadata.SECTION_DURATION"

    .line 172
    .line 173
    const-string v14, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER"

    .line 174
    .line 175
    const-string v15, "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID"

    .line 176
    .line 177
    filled-new-array {v13, v6, v7, v14, v15}, [Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-static {v4, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    new-instance v6, Ljava/util/HashSet;

    .line 185
    .line 186
    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 187
    .line 188
    .line 189
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    if-eqz v7, :cond_12

    .line 198
    .line 199
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    check-cast v7, Ljava/lang/String;

    .line 204
    .line 205
    if-eqz v7, :cond_7

    .line 206
    .line 207
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v13

    .line 211
    if-nez v13, :cond_7

    .line 212
    .line 213
    sget-object v13, Lcom/google/android/gms/cast/MediaMetadata;->e:La1/b;

    .line 214
    .line 215
    iget-object v14, v13, La1/b;->c:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v14, Ljava/util/HashMap;

    .line 218
    .line 219
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v14

    .line 223
    check-cast v14, Ljava/lang/String;

    .line 224
    .line 225
    if-eqz v14, :cond_f

    .line 226
    .line 227
    invoke-virtual {v6, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v15
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 231
    if-eqz v15, :cond_7

    .line 232
    .line 233
    :try_start_2
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v15

    .line 237
    if-eqz v15, :cond_7

    .line 238
    .line 239
    iget-object v13, v13, La1/b;->d:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v13, Ljava/util/HashMap;

    .line 242
    .line 243
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v13

    .line 247
    check-cast v13, Ljava/lang/Integer;

    .line 248
    .line 249
    if-eqz v13, :cond_8

    .line 250
    .line 251
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result v13

    .line 255
    goto :goto_3

    .line 256
    :cond_8
    const/4 v13, 0x0

    .line 257
    :goto_3
    if-eq v13, v12, :cond_e

    .line 258
    .line 259
    if-eq v13, v11, :cond_d

    .line 260
    .line 261
    if-eq v13, v10, :cond_c

    .line 262
    .line 263
    if-eq v13, v9, :cond_b

    .line 264
    .line 265
    if-eq v13, v8, :cond_9

    .line 266
    .line 267
    goto :goto_2

    .line 268
    :cond_9
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 269
    .line 270
    .line 271
    move-result-wide v15

    .line 272
    sget-object v7, Lv4/a;->a:Ljava/util/regex/Pattern;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 273
    .line 274
    const-wide/16 v17, 0x3e8

    .line 275
    .line 276
    move-object/from16 v19, v6

    .line 277
    .line 278
    mul-long v5, v15, v17

    .line 279
    .line 280
    :try_start_3
    invoke-virtual {v3, v14, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 281
    .line 282
    .line 283
    :catch_1
    :cond_a
    :goto_4
    move-object/from16 v6, v19

    .line 284
    .line 285
    const/4 v5, 0x0

    .line 286
    goto :goto_2

    .line 287
    :catch_2
    move-object/from16 v19, v6

    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_b
    move-object/from16 v19, v6

    .line 291
    .line 292
    instance-of v5, v15, Ljava/lang/String;

    .line 293
    .line 294
    if-eqz v5, :cond_a

    .line 295
    .line 296
    check-cast v15, Ljava/lang/String;

    .line 297
    .line 298
    invoke-static {v15}, Lw4/a;->a(Ljava/lang/String;)Ljava/util/Calendar;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    if-eqz v5, :cond_a

    .line 303
    .line 304
    invoke-virtual {v3, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_c
    move-object/from16 v19, v6

    .line 309
    .line 310
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 311
    .line 312
    .line 313
    move-result-wide v5

    .line 314
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    if-nez v7, :cond_a

    .line 319
    .line 320
    invoke-virtual {v3, v14, v5, v6}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 321
    .line 322
    .line 323
    goto :goto_4

    .line 324
    :cond_d
    move-object/from16 v19, v6

    .line 325
    .line 326
    instance-of v5, v15, Ljava/lang/Integer;

    .line 327
    .line 328
    if-eqz v5, :cond_a

    .line 329
    .line 330
    check-cast v15, Ljava/lang/Integer;

    .line 331
    .line 332
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    invoke-virtual {v3, v14, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 337
    .line 338
    .line 339
    goto :goto_4

    .line 340
    :cond_e
    move-object/from16 v19, v6

    .line 341
    .line 342
    instance-of v5, v15, Ljava/lang/String;

    .line 343
    .line 344
    if-eqz v5, :cond_a

    .line 345
    .line 346
    check-cast v15, Ljava/lang/String;

    .line 347
    .line 348
    invoke-virtual {v3, v14, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 349
    .line 350
    .line 351
    goto :goto_4

    .line 352
    :cond_f
    move-object/from16 v19, v6

    .line 353
    .line 354
    :try_start_4
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    instance-of v6, v5, Ljava/lang/String;

    .line 359
    .line 360
    if-eqz v6, :cond_10

    .line 361
    .line 362
    check-cast v5, Ljava/lang/String;

    .line 363
    .line 364
    invoke-virtual {v3, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    goto :goto_4

    .line 368
    :cond_10
    instance-of v6, v5, Ljava/lang/Integer;

    .line 369
    .line 370
    if-eqz v6, :cond_11

    .line 371
    .line 372
    check-cast v5, Ljava/lang/Integer;

    .line 373
    .line 374
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    invoke-virtual {v3, v7, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 379
    .line 380
    .line 381
    goto :goto_4

    .line 382
    :cond_11
    instance-of v6, v5, Ljava/lang/Double;

    .line 383
    .line 384
    if-eqz v6, :cond_a

    .line 385
    .line 386
    check-cast v5, Ljava/lang/Double;

    .line 387
    .line 388
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 389
    .line 390
    .line 391
    move-result-wide v5

    .line 392
    invoke-virtual {v3, v7, v5, v6}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 393
    .line 394
    .line 395
    goto :goto_4

    .line 396
    :catch_3
    :cond_12
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    const/16 p2, 0x4f45

    .line 2
    .line 3
    invoke-static {p1, p2}, Lo9/d;->V(Landroid/os/Parcel;I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x2

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->a:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lo9/d;->U(Landroid/os/Parcel;ILjava/util/List;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->b:Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Lo9/d;->M(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->c:I

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    invoke-static {p1, v1, v1}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Lo9/d;->W(Landroid/os/Parcel;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
