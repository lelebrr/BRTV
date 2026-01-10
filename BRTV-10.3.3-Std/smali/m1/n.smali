.class public final Lm1/n;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lm1/p;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/support/v4/os/ResultReceiver;

.field public final synthetic e:Lj7/c;


# direct methods
.method public constructor <init>(Lj7/c;Lm1/p;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;)V
    .locals 0

    const/4 p4, 0x1

    iput p4, p0, Lm1/n;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm1/n;->e:Lj7/c;

    iput-object p2, p0, Lm1/n;->b:Lm1/p;

    iput-object p3, p0, Lm1/n;->c:Ljava/lang/String;

    iput-object p5, p0, Lm1/n;->d:Landroid/support/v4/os/ResultReceiver;

    return-void
.end method

.method public constructor <init>(Lj7/c;Lm1/p;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lm1/n;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm1/n;->e:Lj7/c;

    iput-object p2, p0, Lm1/n;->b:Lm1/p;

    iput-object p3, p0, Lm1/n;->c:Ljava/lang/String;

    iput-object p4, p0, Lm1/n;->d:Landroid/support/v4/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lm1/n;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm1/n;->b:Lm1/p;

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
    iget-object v1, p0, Lm1/n;->e:Lj7/c;

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
    const-string v1, "search for callback that isn\'t registered query="

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lm1/n;->c:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "MBServiceCompat"

    .line 47
    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, v1, Lj7/c;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lm1/n;->d:Landroid/support/v4/os/ResultReceiver;

    .line 60
    .line 61
    const/4 v1, -0x1

    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lm1/n;->b:Lm1/p;

    .line 68
    .line 69
    iget-object v0, v0, Lm1/p;->a:Landroid/os/Messenger;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lm1/n;->e:Lj7/c;

    .line 76
    .line 77
    iget-object v2, v1, Lj7/c;->b:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Landroidx/media/MediaBrowserServiceCompat;

    .line 80
    .line 81
    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat;->d:Lp/e;

    .line 82
    .line 83
    invoke-virtual {v2, v0}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lm1/b;

    .line 88
    .line 89
    if-nez v0, :cond_1

    .line 90
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v1, "getMediaItem for callback that isn\'t registered id="

    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lm1/n;->c:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v1, "MBServiceCompat"

    .line 108
    .line 109
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    iget-object v0, v1, Lj7/c;->b:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lm1/n;->d:Landroid/support/v4/os/ResultReceiver;

    .line 121
    .line 122
    const/4 v1, 0x2

    .line 123
    and-int/2addr v1, v1

    .line 124
    const/4 v2, 0x0

    .line 125
    if-eqz v1, :cond_2

    .line 126
    .line 127
    const/4 v1, -0x1

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    .line 133
    .line 134
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v3, "media_item"

    .line 138
    .line 139
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 140
    .line 141
    .line 142
    const/4 v2, 0x0

    .line 143
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 144
    .line 145
    .line 146
    :goto_1
    return-void

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
