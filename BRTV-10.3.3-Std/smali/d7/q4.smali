.class public final Ld7/q4;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lb7/e0;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic a:I

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Ld7/q4;->a:I

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
    const-string p1, "expectedValuesPerKey"

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-static {v0, p1}, Ld7/d0;->d(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput v0, p0, Ld7/q4;->b:I

    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string p1, "expectedValuesPerKey"

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-static {v0, p1}, Ld7/d0;->d(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput v0, p0, Ld7/q4;->b:I

    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Ld7/q4;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Ld7/q4;->b:I

    .line 7
    .line 8
    invoke-static {v0}, Ld7/k0;->d(I)Ld7/k0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    iget v1, p0, Ld7/q4;->b:I

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
