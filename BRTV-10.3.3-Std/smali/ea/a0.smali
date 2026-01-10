.class public final Lea/a0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lea/a0;->a:Lorg/bitspark/android/Spark;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 1
    iget-object p2, p0, Lea/a0;->a:Lorg/bitspark/android/Spark;

    .line 2
    .line 3
    iget-boolean p3, p2, Lorg/bitspark/android/Spark;->F0:Z

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    int-to-long v0, p1

    .line 12
    iget-object p1, p2, Lorg/bitspark/android/Spark;->L1:Lra/a;

    .line 13
    .line 14
    invoke-interface {p1}, Lra/a;->getDuration()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    mul-long v2, v2, v0

    .line 19
    .line 20
    const-wide/16 v0, 0x64

    .line 21
    .line 22
    div-long/2addr v2, v0

    .line 23
    long-to-int p1, v2

    .line 24
    iget-object p2, p2, Lorg/bitspark/android/Spark;->x1:Landroid/widget/TextView;

    .line 25
    .line 26
    div-int/lit16 p1, p1, 0x3e8

    .line 27
    .line 28
    int-to-long v0, p1

    .line 29
    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->q(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lea/a0;->a:Lorg/bitspark/android/Spark;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/bitspark/android/Spark;->L1:Lra/a;

    .line 4
    .line 5
    invoke-interface {v1}, Lra/a;->pause()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/bitspark/android/Spark;->o0()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    int-to-long v1, p1

    .line 16
    iget-object p1, v0, Lorg/bitspark/android/Spark;->L1:Lra/a;

    .line 17
    .line 18
    invoke-interface {p1}, Lra/a;->getDuration()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    mul-long v3, v3, v1

    .line 23
    .line 24
    const-wide/16 v1, 0x64

    .line 25
    .line 26
    div-long/2addr v3, v1

    .line 27
    long-to-int p1, v3

    .line 28
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, v0, Lorg/bitspark/android/Spark;->F0:Z

    .line 30
    .line 31
    iget-object v0, v0, Lorg/bitspark/android/Spark;->x1:Landroid/widget/TextView;

    .line 32
    .line 33
    div-int/lit16 p1, p1, 0x3e8

    .line 34
    .line 35
    int-to-long v1, p1

    .line 36
    invoke-static {v1, v2}, Lorg/bitspark/android/utils/m;->q(J)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 44
    .line 45
    const/16 v0, 0x60

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-long v0, p1

    .line 6
    iget-object p1, p0, Lea/a0;->a:Lorg/bitspark/android/Spark;

    .line 7
    .line 8
    iget-object v2, p1, Lorg/bitspark/android/Spark;->L1:Lra/a;

    .line 9
    .line 10
    invoke-interface {v2}, Lra/a;->getDuration()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    mul-long v2, v2, v0

    .line 15
    .line 16
    const-wide/16 v0, 0x64

    .line 17
    .line 18
    div-long/2addr v2, v0

    .line 19
    long-to-int v0, v2

    .line 20
    iget-object v1, p1, Lorg/bitspark/android/Spark;->L1:Lra/a;

    .line 21
    .line 22
    int-to-long v2, v0

    .line 23
    invoke-interface {v1, v2, v3}, Lra/a;->seekTo(J)V

    .line 24
    .line 25
    .line 26
    sget v1, Lorg/bitspark/android/Spark;->m2:I

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-ne v1, v2, :cond_0

    .line 30
    .line 31
    iget-object v1, p1, Lorg/bitspark/android/Spark;->L1:Lra/a;

    .line 32
    .line 33
    invoke-interface {v1}, Lra/a;->d()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p1, Lorg/bitspark/android/Spark;->L1:Lra/a;

    .line 38
    .line 39
    invoke-interface {v1}, Lra/a;->start()V

    .line 40
    .line 41
    .line 42
    :goto_0
    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p1, Lorg/bitspark/android/Spark;->F0:Z

    .line 44
    .line 45
    invoke-virtual {p1}, Lorg/bitspark/android/Spark;->i0()V

    .line 46
    .line 47
    .line 48
    sput-boolean v1, Lorg/bitspark/android/Spark;->j2:Z

    .line 49
    .line 50
    iget-object v2, p1, Lorg/bitspark/android/Spark;->R:Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p1, Lorg/bitspark/android/Spark;->x1:Landroid/widget/TextView;

    .line 56
    .line 57
    div-int/lit16 v0, v0, 0x3e8

    .line 58
    .line 59
    int-to-long v0, v0

    .line 60
    invoke-static {v0, v1}, Lorg/bitspark/android/utils/m;->q(J)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
