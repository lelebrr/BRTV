.class public final Lx6/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lb2/i;


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx6/b;->b:Lcom/google/android/material/tabs/TabLayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Landroidx/viewpager/widget/ViewPager;Lb2/a;Lb2/a;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lx6/b;->b:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    iget-object v0, p2, Lcom/google/android/material/tabs/TabLayout;->K:Landroidx/viewpager/widget/ViewPager;

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Lx6/b;->a:Z

    .line 8
    .line 9
    invoke-virtual {p2, p3, p1}, Lcom/google/android/material/tabs/TabLayout;->m(Lb2/a;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
