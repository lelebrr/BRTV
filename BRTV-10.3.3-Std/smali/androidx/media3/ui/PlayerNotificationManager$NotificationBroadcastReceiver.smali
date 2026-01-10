.class Landroidx/media3/ui/PlayerNotificationManager$NotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/PlayerNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/ui/PlayerNotificationManager;


# direct methods
.method private constructor <init>(Landroidx/media3/ui/PlayerNotificationManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Landroidx/media3/ui/PlayerNotificationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerNotificationManager;Landroidx/media3/ui/PlayerNotificationManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerNotificationManager$NotificationBroadcastReceiver;-><init>(Landroidx/media3/ui/PlayerNotificationManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/media3/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Landroidx/media3/ui/PlayerNotificationManager;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/ui/PlayerNotificationManager;->access$500(Landroidx/media3/ui/PlayerNotificationManager;)Landroidx/media3/common/Player;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_a

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Landroidx/media3/ui/PlayerNotificationManager;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/media3/ui/PlayerNotificationManager;->access$600(Landroidx/media3/ui/PlayerNotificationManager;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_a

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Landroidx/media3/ui/PlayerNotificationManager;

    .line 18
    .line 19
    invoke-static {v0}, Landroidx/media3/ui/PlayerNotificationManager;->access$700(Landroidx/media3/ui/PlayerNotificationManager;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const-string v1, "INSTANCE_ID"

    .line 24
    .line 25
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Landroidx/media3/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Landroidx/media3/ui/PlayerNotificationManager;

    .line 30
    .line 31
    invoke-static {v1}, Landroidx/media3/ui/PlayerNotificationManager;->access$700(Landroidx/media3/ui/PlayerNotificationManager;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eq v0, v1, :cond_0

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "androidx.media3.ui.notification.play"

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-static {p1}, Landroidx/media3/common/util/Util;->handlePlayButtonAction(Landroidx/media3/common/Player;)Z

    .line 52
    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :cond_1
    const-string v1, "androidx.media3.ui.notification.pause"

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-static {p1}, Landroidx/media3/common/util/Util;->handlePauseButtonAction(Landroidx/media3/common/Player;)Z

    .line 65
    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_2
    const-string v1, "androidx.media3.ui.notification.prev"

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    const/4 p2, 0x7

    .line 78
    invoke-interface {p1, p2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_a

    .line 83
    .line 84
    invoke-interface {p1}, Landroidx/media3/common/Player;->seekToPrevious()V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :cond_3
    const-string v1, "androidx.media3.ui.notification.rewind"

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    const/16 p2, 0xb

    .line 98
    .line 99
    invoke-interface {p1, p2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-eqz p2, :cond_a

    .line 104
    .line 105
    invoke-interface {p1}, Landroidx/media3/common/Player;->seekBack()V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :cond_4
    const-string v1, "androidx.media3.ui.notification.ffwd"

    .line 111
    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    const/16 p2, 0xc

    .line 119
    .line 120
    invoke-interface {p1, p2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-eqz p2, :cond_a

    .line 125
    .line 126
    invoke-interface {p1}, Landroidx/media3/common/Player;->seekForward()V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_5
    const-string v1, "androidx.media3.ui.notification.next"

    .line 131
    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_6

    .line 137
    .line 138
    const/16 p2, 0x9

    .line 139
    .line 140
    invoke-interface {p1, p2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-eqz p2, :cond_a

    .line 145
    .line 146
    invoke-interface {p1}, Landroidx/media3/common/Player;->seekToNext()V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_6
    const-string v1, "androidx.media3.ui.notification.stop"

    .line 151
    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_8

    .line 157
    .line 158
    const/4 p2, 0x3

    .line 159
    invoke-interface {p1, p2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    if-eqz p2, :cond_7

    .line 164
    .line 165
    invoke-interface {p1}, Landroidx/media3/common/Player;->stop()V

    .line 166
    .line 167
    .line 168
    :cond_7
    const/16 p2, 0x14

    .line 169
    .line 170
    invoke-interface {p1, p2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-eqz p2, :cond_a

    .line 175
    .line 176
    invoke-interface {p1}, Landroidx/media3/common/Player;->clearMediaItems()V

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_8
    const-string v1, "androidx.media3.ui.notification.dismiss"

    .line 181
    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_9

    .line 187
    .line 188
    iget-object p1, p0, Landroidx/media3/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Landroidx/media3/ui/PlayerNotificationManager;

    .line 189
    .line 190
    const/4 p2, 0x1

    .line 191
    invoke-static {p1, p2}, Landroidx/media3/ui/PlayerNotificationManager;->access$800(Landroidx/media3/ui/PlayerNotificationManager;Z)V

    .line 192
    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_9
    if-eqz v0, :cond_a

    .line 196
    .line 197
    iget-object v1, p0, Landroidx/media3/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Landroidx/media3/ui/PlayerNotificationManager;

    .line 198
    .line 199
    invoke-static {v1}, Landroidx/media3/ui/PlayerNotificationManager;->access$900(Landroidx/media3/ui/PlayerNotificationManager;)Landroidx/media3/ui/PlayerNotificationManager$CustomActionReceiver;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    if-eqz v1, :cond_a

    .line 204
    .line 205
    iget-object v1, p0, Landroidx/media3/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Landroidx/media3/ui/PlayerNotificationManager;

    .line 206
    .line 207
    invoke-static {v1}, Landroidx/media3/ui/PlayerNotificationManager;->access$1000(Landroidx/media3/ui/PlayerNotificationManager;)Ljava/util/Map;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_a

    .line 216
    .line 217
    iget-object v1, p0, Landroidx/media3/ui/PlayerNotificationManager$NotificationBroadcastReceiver;->this$0:Landroidx/media3/ui/PlayerNotificationManager;

    .line 218
    .line 219
    invoke-static {v1}, Landroidx/media3/ui/PlayerNotificationManager;->access$900(Landroidx/media3/ui/PlayerNotificationManager;)Landroidx/media3/ui/PlayerNotificationManager$CustomActionReceiver;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-interface {v1, p1, v0, p2}, Landroidx/media3/ui/PlayerNotificationManager$CustomActionReceiver;->onCustomAction(Landroidx/media3/common/Player;Ljava/lang/String;Landroid/content/Intent;)V

    .line 224
    .line 225
    .line 226
    :cond_a
    :goto_0
    return-void
.end method
