.class public final Lm1/m;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lm1/p;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic e:Lj7/c;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj7/c;Lm1/p;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lm1/m;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm1/m;->e:Lj7/c;

    iput-object p2, p0, Lm1/m;->b:Lm1/p;

    iput-object p3, p0, Lm1/m;->c:Ljava/lang/String;

    iput-object p4, p0, Lm1/m;->d:Landroid/os/Bundle;

    iput-object p5, p0, Lm1/m;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj7/c;Lm1/p;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lm1/m;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm1/m;->e:Lj7/c;

    iput-object p2, p0, Lm1/m;->b:Lm1/p;

    iput-object p3, p0, Lm1/m;->c:Ljava/lang/String;

    iput-object p4, p0, Lm1/m;->f:Ljava/lang/Object;

    iput-object p5, p0, Lm1/m;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lm1/m;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm1/m;->b:Lm1/p;

    .line 7
    .line 8
    iget-object v0, v0, Lm1/p;->a:Landroid/os/Messenger;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lm1/m;->e:Lj7/c;

    .line 15
    .line 16
    iget-object v2, v1, Lj7/c;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Landroidx/media/MediaBrowserServiceCompat;

    .line 19
    .line 20
    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat;->d:Lp/e;

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lm1/b;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "sendCustomAction for callback that isn\'t registered action="

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lm1/m;->c:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ", extras="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lm1/m;->d:Landroid/os/Bundle;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "MBServiceCompat"

    .line 57
    .line 58
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, v1, Lj7/c;->b:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lm1/m;->f:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Landroid/support/v4/os/ResultReceiver;

    .line 72
    .line 73
    const/4 v1, -0x1

    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lm1/m;->b:Lm1/p;

    .line 80
    .line 81
    iget-object v0, v0, Lm1/p;->a:Landroid/os/Messenger;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v1, p0, Lm1/m;->e:Lj7/c;

    .line 88
    .line 89
    iget-object v2, v1, Lj7/c;->b:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v2, Landroidx/media/MediaBrowserServiceCompat;

    .line 92
    .line 93
    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat;->d:Lp/e;

    .line 94
    .line 95
    invoke-virtual {v2, v0}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lm1/b;

    .line 100
    .line 101
    iget-object v2, p0, Lm1/m;->c:Ljava/lang/String;

    .line 102
    .line 103
    if-nez v0, :cond_1

    .line 104
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v1, "addSubscription for callback that isn\'t registered id="

    .line 108
    .line 109
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-string v1, "MBServiceCompat"

    .line 120
    .line 121
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    iget-object v1, v1, Lj7/c;->b:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    iget-object v3, v0, Lm1/b;->e:Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Ljava/util/List;

    .line 139
    .line 140
    if-nez v4, :cond_2

    .line 141
    .line 142
    new-instance v4, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    iget-object v7, p0, Lm1/m;->f:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v7, Landroid/os/IBinder;

    .line 158
    .line 159
    iget-object v8, p0, Lm1/m;->d:Landroid/os/Bundle;

    .line 160
    .line 161
    if-eqz v6, :cond_4

    .line 162
    .line 163
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    check-cast v6, Lm0/b;

    .line 168
    .line 169
    iget-object v9, v6, Lm0/b;->a:Ljava/lang/Object;

    .line 170
    .line 171
    if-ne v7, v9, :cond_3

    .line 172
    .line 173
    iget-object v6, v6, Lm0/b;->b:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v6, Landroid/os/Bundle;

    .line 176
    .line 177
    invoke-static {v8, v6}, Lcom/bumptech/glide/c;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    if-eqz v6, :cond_3

    .line 182
    .line 183
    :goto_1
    return-void

    .line 184
    :cond_4
    new-instance v5, Lm0/b;

    .line 185
    .line 186
    invoke-direct {v5, v7, v8}, Lm0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    if-nez v8, :cond_5

    .line 196
    .line 197
    invoke-virtual {v1}, Landroidx/media/MediaBrowserServiceCompat;->b()V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_5
    invoke-virtual {v1}, Landroidx/media/MediaBrowserServiceCompat;->b()V

    .line 202
    .line 203
    .line 204
    :goto_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 205
    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v4, "onLoadChildren must call detach() or sendResult() before returning for package="

    .line 209
    .line 210
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, v0, Lm1/b;->a:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v0, " id="

    .line 219
    .line 220
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw v1

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
