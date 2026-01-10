.class public final Lb3/g0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lb3/v;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentResolver;I)V
    .locals 0

    .line 1
    iput p2, p0, Lb3/g0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lb3/g0;->b:Landroid/content/ContentResolver;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lb3/b0;)Lb3/u;
    .locals 0

    .line 1
    iget p1, p0, Lb3/g0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lb3/h0;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lb3/h0;-><init>(Lb3/g0;)V

    .line 9
    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_0
    new-instance p1, Lb3/h0;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lb3/h0;-><init>(Lb3/g0;)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_1
    new-instance p1, Lb3/h0;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lb3/h0;-><init>(Lb3/g0;)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
