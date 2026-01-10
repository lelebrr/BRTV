.class public final Lb3/g;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lb3/v;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lb3/g;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lb3/c;

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    invoke-direct {p1, v0}, Lb3/c;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lb3/g;->b:Ljava/lang/Object;

    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance p1, La0/b;

    .line 22
    .line 23
    const/16 v0, 0x9

    .line 24
    .line 25
    invoke-direct {p1, v0}, La0/b;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lb3/g;->b:Ljava/lang/Object;

    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lb3/b0;)Lb3/u;
    .locals 2

    .line 1
    iget p1, p0, Lb3/g;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lc3/a;

    .line 7
    .line 8
    iget-object v0, p0, Lb3/g;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, La0/b;

    .line 11
    .line 12
    invoke-direct {p1, v0}, Lc3/a;-><init>(La0/b;)V

    .line 13
    .line 14
    .line 15
    return-object p1

    .line 16
    :pswitch_0
    new-instance p1, Lb3/d;

    .line 17
    .line 18
    iget-object v0, p0, Lb3/g;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lb3/c;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-direct {p1, v1, v0}, Lb3/d;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
