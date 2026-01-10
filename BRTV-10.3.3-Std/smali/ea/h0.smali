.class public final Lea/h0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lea/h0;->a:Lorg/bitspark/android/Spark;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    .line 1
    sget v0, Lorg/bitspark/android/Spark;->m2:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "E4g7jbTJ\n"

    .line 6
    .line 7
    const-string v1, "Udt27N2njXo=\n"

    .line 8
    .line 9
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "fbFJ+rZkcYR8+ELxiUB9kWqqSPv5RHGFbrd55qlXIsE=\n"

    .line 19
    .line 20
    const-string v3, "C9gtn9kyGOE=\n"

    .line 21
    .line 22
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lea/h0;->a:Lorg/bitspark/android/Spark;

    .line 30
    .line 31
    iget-object v3, v2, Lorg/bitspark/android/Spark;->E1:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v3, "yZU+fvtf5BqMlHl9+0T2BpuCI3PxXppa\n"

    .line 37
    .line 38
    const-string v4, "6eNXGp4wsnM=\n"

    .line 39
    .line 40
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    sget-object v3, Lorg/bitspark/android/Spark;->k2:Landroid/widget/VideoView;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 61
    .line 62
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lea/g0;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lea/g0;-><init>(Lea/h0;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 74
    .line 75
    .line 76
    const/16 p1, 0x1388

    .line 77
    .line 78
    invoke-virtual {v2, p1}, Lorg/bitspark/android/Spark;->z0(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, v2, Lorg/bitspark/android/Spark;->w1:Lorg/bitspark/android/view/CircularProgressBar;

    .line 82
    .line 83
    const/16 v0, 0x8

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lorg/bitspark/android/view/CircularProgressBar;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    const-string p1, "NF85Qjut\n"

    .line 89
    .line 90
    const-string v0, "dgx0I1LDV9o=\n"

    .line 91
    .line 92
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v0, "kme1WYlQUSqYbd9dhURVN6tggFzMU1Ussme1WYlQUSqYbalCn1RVNph7xVueT1cqmHqWC4tPXj0=\n"

    .line 97
    .line 98
    const-string v1, "/QnlK+wgMFg=\n"

    .line 99
    .line 100
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_0
    return-void
.end method
