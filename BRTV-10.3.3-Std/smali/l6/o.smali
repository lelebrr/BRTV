.class public final Ll6/o;
.super Ll6/p;
.source "MyApplication"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ll6/s;


# direct methods
.method public synthetic constructor <init>(Ll6/s;I)V
    .locals 0

    .line 1
    iput p2, p0, Ll6/o;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Ll6/o;->f:Ll6/s;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ll6/p;-><init>(Ll6/s;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2

    .line 1
    iget v0, p0, Ll6/o;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll6/o;->f:Ll6/s;

    .line 7
    .line 8
    iget v0, v0, Ll6/q;->h:F

    .line 9
    .line 10
    return v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Ll6/o;->f:Ll6/s;

    .line 12
    .line 13
    iget v1, v0, Ll6/q;->h:F

    .line 14
    .line 15
    iget v0, v0, Ll6/q;->j:F

    .line 16
    .line 17
    add-float/2addr v1, v0

    .line 18
    return v1

    .line 19
    :pswitch_1
    iget-object v0, p0, Ll6/o;->f:Ll6/s;

    .line 20
    .line 21
    iget v1, v0, Ll6/q;->h:F

    .line 22
    .line 23
    iget v0, v0, Ll6/q;->i:F

    .line 24
    .line 25
    add-float/2addr v1, v0

    .line 26
    return v1

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
