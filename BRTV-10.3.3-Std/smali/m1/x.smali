.class public abstract Lm1/x;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:Lm1/w;

.field public f:Landroid/media/VolumeProvider;


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lm1/x;->a:I

    .line 5
    .line 6
    iput p3, p0, Lm1/x;->b:I

    .line 7
    .line 8
    iput p4, p0, Lm1/x;->d:I

    .line 9
    .line 10
    iput-object p2, p0, Lm1/x;->c:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Landroid/media/VolumeProvider;
    .locals 8

    .line 1
    iget-object v0, p0, Lm1/x;->f:Landroid/media/VolumeProvider;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x1e

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lm1/t;

    .line 12
    .line 13
    iget v6, p0, Lm1/x;->d:I

    .line 14
    .line 15
    iget v4, p0, Lm1/x;->a:I

    .line 16
    .line 17
    iget v5, p0, Lm1/x;->b:I

    .line 18
    .line 19
    iget-object v7, p0, Lm1/x;->c:Ljava/lang/String;

    .line 20
    .line 21
    move-object v2, v0

    .line 22
    move-object v3, p0

    .line 23
    invoke-direct/range {v2 .. v7}, Lm1/t;-><init>(Lm1/x;IIILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lm1/x;->f:Landroid/media/VolumeProvider;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Lm1/u;

    .line 30
    .line 31
    iget v1, p0, Lm1/x;->d:I

    .line 32
    .line 33
    iget v2, p0, Lm1/x;->a:I

    .line 34
    .line 35
    iget v3, p0, Lm1/x;->b:I

    .line 36
    .line 37
    invoke-direct {v0, p0, v2, v3, v1}, Lm1/u;-><init>(Lm1/x;III)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lm1/x;->f:Landroid/media/VolumeProvider;

    .line 41
    .line 42
    :cond_1
    :goto_0
    iget-object v0, p0, Lm1/x;->f:Landroid/media/VolumeProvider;

    .line 43
    .line 44
    return-object v0
.end method
