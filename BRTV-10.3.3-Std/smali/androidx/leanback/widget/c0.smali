.class public final Landroidx/leanback/widget/c0;
.super Landroidx/recyclerview/widget/p1;
.source "MyApplication"

# interfaces
.implements Landroidx/leanback/widget/n;


# instance fields
.field public final a:Lqa/m;

.field public final b:Lia/b;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lqa/m;Landroid/view/View;Lia/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/leanback/widget/c0;->a:Lqa/m;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/leanback/widget/c0;->b:Lia/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/c0;->b:Lia/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method
