.class public final Landroidx/mediarouter/app/p;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroidx/mediarouter/app/u;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/p;->a:Landroidx/mediarouter/app/u;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    iget-object v1, p0, Landroidx/mediarouter/app/p;->a:Landroidx/mediarouter/app/u;

    .line 7
    .line 8
    const v2, 0x1020019

    .line 9
    .line 10
    .line 11
    if-eq p1, v2, :cond_6

    .line 12
    .line 13
    const v3, 0x102001a

    .line 14
    .line 15
    .line 16
    if-ne p1, v3, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    const v2, 0x7f0b02e1

    .line 21
    .line 22
    .line 23
    if-ne p1, v2, :cond_5

    .line 24
    .line 25
    iget-object p1, v1, Landroidx/mediarouter/app/u;->R:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 26
    .line 27
    if-eqz p1, :cond_9

    .line 28
    .line 29
    iget-object p1, v1, Landroidx/mediarouter/app/u;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 30
    .line 31
    if-eqz p1, :cond_9

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/4 v2, 0x3

    .line 38
    const/4 v3, 0x0

    .line 39
    if-ne p1, v2, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    :goto_0
    const-wide/16 v4, 0x0

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object p1, v1, Landroidx/mediarouter/app/u;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    .line 50
    .line 51
    .line 52
    move-result-wide v6

    .line 53
    const-wide/16 v8, 0x202

    .line 54
    .line 55
    and-long/2addr v6, v8

    .line 56
    cmp-long p1, v6, v4

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    iget-object p1, v1, Landroidx/mediarouter/app/u;->R:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    .line 67
    .line 68
    .line 69
    const v3, 0x7f120169

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object p1, v1, Landroidx/mediarouter/app/u;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    .line 78
    .line 79
    .line 80
    move-result-wide v6

    .line 81
    const-wide/16 v8, 0x1

    .line 82
    .line 83
    and-long/2addr v6, v8

    .line 84
    cmp-long p1, v6, v4

    .line 85
    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    iget-object p1, v1, Landroidx/mediarouter/app/u;->R:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->stop()V

    .line 95
    .line 96
    .line 97
    const v3, 0x7f12016b

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    if-nez v0, :cond_4

    .line 102
    .line 103
    iget-object p1, v1, Landroidx/mediarouter/app/u;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    .line 106
    .line 107
    .line 108
    move-result-wide v6

    .line 109
    const-wide/16 v8, 0x204

    .line 110
    .line 111
    and-long/2addr v6, v8

    .line 112
    cmp-long p1, v6, v4

    .line 113
    .line 114
    if-eqz p1, :cond_4

    .line 115
    .line 116
    iget-object p1, v1, Landroidx/mediarouter/app/u;->R:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    .line 123
    .line 124
    .line 125
    const v3, 0x7f12016a

    .line 126
    .line 127
    .line 128
    :cond_4
    :goto_1
    iget-object p1, v1, Landroidx/mediarouter/app/u;->n0:Landroid/view/accessibility/AccessibilityManager;

    .line 129
    .line 130
    if-eqz p1, :cond_9

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_9

    .line 137
    .line 138
    if-eqz v3, :cond_9

    .line 139
    .line 140
    const/16 v0, 0x4000

    .line 141
    .line 142
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v2, v1, Landroidx/mediarouter/app/u;->i:Landroid/content/Context;

    .line 147
    .line 148
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    const-class v2, Landroidx/mediarouter/app/p;

    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    iget-object v1, v1, Landroidx/mediarouter/app/u;->i:Landroid/content/Context;

    .line 169
    .line 170
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_5
    const v0, 0x7f0b02df

    .line 182
    .line 183
    .line 184
    if-ne p1, v0, :cond_9

    .line 185
    .line 186
    invoke-virtual {v1}, Landroidx/appcompat/app/i0;->dismiss()V

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_6
    :goto_2
    iget-object v3, v1, Landroidx/mediarouter/app/u;->h:Lq1/s0;

    .line 191
    .line 192
    invoke-virtual {v3}, Lq1/s0;->g()Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_8

    .line 197
    .line 198
    if-ne p1, v2, :cond_7

    .line 199
    .line 200
    const/4 v0, 0x2

    .line 201
    :cond_7
    iget-object p1, v1, Landroidx/mediarouter/app/u;->f:Lq1/u0;

    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    invoke-static {v0}, Lq1/u0;->i(I)V

    .line 207
    .line 208
    .line 209
    :cond_8
    invoke-virtual {v1}, Landroidx/appcompat/app/i0;->dismiss()V

    .line 210
    .line 211
    .line 212
    :cond_9
    :goto_3
    return-void
.end method
