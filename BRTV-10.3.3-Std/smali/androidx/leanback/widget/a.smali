.class public final Landroidx/leanback/widget/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/a;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/leanback/widget/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/leanback/widget/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/leanback/widget/SearchEditText;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/leanback/widget/SearchEditText;->h:Landroidx/leanback/widget/w0;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast v0, Landroidx/leanback/widget/q;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/leanback/widget/q;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Landroidx/leanback/widget/SearchBar;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :pswitch_0
    iget-object v0, p0, Landroidx/leanback/widget/a;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Landroidx/leanback/widget/r0;

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/leanback/widget/r0;->a:Landroidx/leanback/widget/SearchBar;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Landroidx/leanback/widget/SearchBar;->j:Z

    .line 32
    .line 33
    iget-object v0, v0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SpeechOrbView;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_1
    iget-object v0, p0, Landroidx/leanback/widget/a;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Landroidx/leanback/widget/GridLayoutManager;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/recyclerview/widget/x0;->requestLayout()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_2
    iget-object v0, p0, Landroidx/leanback/widget/a;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Landroidx/leanback/widget/BaseCardView;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseCardView;->a(Z)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
