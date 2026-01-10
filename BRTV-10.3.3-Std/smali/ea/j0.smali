.class public final Lea/j0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic a:Lorg/bitspark/android/Spark;


# direct methods
.method public constructor <init>(Lorg/bitspark/android/Spark;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lea/j0;->a:Lorg/bitspark/android/Spark;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .line 1
    const-string p1, "ayLXP5SB\n"

    .line 2
    .line 3
    const-string v0, "KXGaXv3vsmk=\n"

    .line 4
    .line 5
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "9uESBjc9SL/3qBMRKgRT4A==\n"

    .line 15
    .line 16
    const-string v2, "gIh2Y1hrIdo=\n"

    .line 17
    .line 18
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p2, "DQVjNqgLGZs=\n"

    .line 29
    .line 30
    const-string v1, "LWAbQtpqI7s=\n"

    .line 31
    .line 32
    invoke-static {p2, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p2, "XCP5rwe6/8hGbg==\n"

    .line 43
    .line 44
    const-string p3, "fE672mHcmro=\n"

    .line 45
    .line 46
    invoke-static {p2, p3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lea/j0;->a:Lorg/bitspark/android/Spark;

    .line 54
    .line 55
    iget p3, p2, Lorg/bitspark/android/Spark;->e1:I

    .line 56
    .line 57
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    sget-boolean v0, Lorg/bitspark/android/utils/m;->b:Z

    .line 65
    .line 66
    invoke-static {p1, p3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget-object p1, Lorg/bitspark/android/Spark;->k2:Landroid/widget/VideoView;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 72
    .line 73
    .line 74
    sget-object p1, Lorg/bitspark/android/Spark;->k2:Landroid/widget/VideoView;

    .line 75
    .line 76
    const/4 p3, 0x0

    .line 77
    invoke-virtual {p1, p3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    iput-wide v0, p2, Lorg/bitspark/android/Spark;->i1:J

    .line 85
    .line 86
    const/4 p1, 0x1

    .line 87
    return p1
.end method
