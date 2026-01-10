.class public final synthetic Landroidx/media3/ui/h;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/ui/h;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media3/ui/h;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget v1, v0, Landroidx/media3/ui/h;->a:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v1, v0, Landroidx/media3/ui/h;->b:Ljava/lang/Object;

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Landroidx/media3/ui/PlayerControlView;

    .line 11
    .line 12
    move-object v3, p1

    .line 13
    move v4, p2

    .line 14
    move v5, p3

    .line 15
    move/from16 v6, p4

    .line 16
    .line 17
    move/from16 v7, p5

    .line 18
    .line 19
    move/from16 v8, p6

    .line 20
    .line 21
    move/from16 v9, p7

    .line 22
    .line 23
    move/from16 v10, p8

    .line 24
    .line 25
    move/from16 v11, p9

    .line 26
    .line 27
    invoke-static/range {v2 .. v11}, Landroidx/media3/ui/PlayerControlView;->a(Landroidx/media3/ui/PlayerControlView;Landroid/view/View;IIIIIIII)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    iget-object v1, v0, Landroidx/media3/ui/h;->b:Ljava/lang/Object;

    .line 32
    .line 33
    move-object v2, v1

    .line 34
    check-cast v2, Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 35
    .line 36
    move-object v3, p1

    .line 37
    move v4, p2

    .line 38
    move v5, p3

    .line 39
    move/from16 v6, p4

    .line 40
    .line 41
    move/from16 v7, p5

    .line 42
    .line 43
    move/from16 v8, p6

    .line 44
    .line 45
    move/from16 v9, p7

    .line 46
    .line 47
    move/from16 v10, p8

    .line 48
    .line 49
    move/from16 v11, p9

    .line 50
    .line 51
    invoke-static/range {v2 .. v11}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->k(Landroidx/media3/ui/PlayerControlViewLayoutManager;Landroid/view/View;IIIIIIII)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
