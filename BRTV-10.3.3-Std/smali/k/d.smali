.class public final Lk/d;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lk/d;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lk/d;->e:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lk/d;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lk/d;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lk/d;->d:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lk/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lk/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lm1/p;

    .line 9
    .line 10
    iget-object v0, v0, Lm1/p;->a:Landroid/os/Messenger;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lk/d;->e:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lj7/c;

    .line 19
    .line 20
    iget-object v2, v1, Lj7/c;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Landroidx/media/MediaBrowserServiceCompat;

    .line 23
    .line 24
    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat;->d:Lp/e;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lm1/b;

    .line 31
    .line 32
    const-string v2, "MBServiceCompat"

    .line 33
    .line 34
    iget-object v3, p0, Lk/d;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Ljava/lang/String;

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v1, "removeSubscription for callback that isn\'t registered id="

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_0
    iget-object v1, v1, Lj7/c;->b:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object v0, v0, Lm1/b;->e:Ljava/util/HashMap;

    .line 66
    .line 67
    iget-object v1, p0, Lk/d;->d:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Landroid/os/IBinder;

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    const/4 v5, 0x1

    .line 73
    if-nez v1, :cond_1

    .line 74
    .line 75
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    const/4 v4, 0x1

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Ljava/util/List;

    .line 88
    .line 89
    if-eqz v6, :cond_4

    .line 90
    .line 91
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-eqz v8, :cond_3

    .line 100
    .line 101
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    check-cast v8, Lm0/b;

    .line 106
    .line 107
    iget-object v8, v8, Lm0/b;->a:Ljava/lang/Object;

    .line 108
    .line 109
    if-ne v1, v8, :cond_2

    .line 110
    .line 111
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 112
    .line 113
    .line 114
    const/4 v4, 0x1

    .line 115
    goto :goto_0

    .line 116
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_4

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    :cond_4
    :goto_1
    if-nez v4, :cond_5

    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v1, "removeSubscription called for "

    .line 130
    .line 131
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v1, " which is not subscribed"

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    :cond_5
    :goto_2
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p0, Lk/d;->b:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v0, Lk/e;

    .line 153
    .line 154
    if-eqz v0, :cond_6

    .line 155
    .line 156
    iget-object v1, p0, Lk/d;->e:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v1, Lj7/c;

    .line 159
    .line 160
    iget-object v2, v1, Lj7/c;->b:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v2, Lk/f;

    .line 163
    .line 164
    const/4 v3, 0x1

    .line 165
    iput-boolean v3, v2, Lk/f;->z:Z

    .line 166
    .line 167
    iget-object v0, v0, Lk/e;->b:Lk/l;

    .line 168
    .line 169
    const/4 v2, 0x0

    .line 170
    invoke-virtual {v0, v2}, Lk/l;->c(Z)V

    .line 171
    .line 172
    .line 173
    iget-object v0, v1, Lj7/c;->b:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v0, Lk/f;

    .line 176
    .line 177
    iput-boolean v2, v0, Lk/f;->z:Z

    .line 178
    .line 179
    :cond_6
    iget-object v0, p0, Lk/d;->c:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v0, Lk/n;

    .line 182
    .line 183
    invoke-virtual {v0}, Lk/n;->isEnabled()Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_7

    .line 188
    .line 189
    invoke-virtual {v0}, Lk/n;->hasSubMenu()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_7

    .line 194
    .line 195
    iget-object v1, p0, Lk/d;->d:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v1, Lk/l;

    .line 198
    .line 199
    const/4 v2, 0x4

    .line 200
    const/4 v3, 0x0

    .line 201
    invoke-virtual {v1, v0, v3, v2}, Lk/l;->q(Landroid/view/MenuItem;Lk/y;I)Z

    .line 202
    .line 203
    .line 204
    :cond_7
    return-void

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
