.class public Lcom/trello/rxlifecycle/components/support/RxAppCompatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MyApplication"


# instance fields
.field public final x:Lya/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lya/a;->a()Lya/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxAppCompatActivity;->x:Lya/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Ld8/a;->a:Ld8/a;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/trello/rxlifecycle/components/support/RxAppCompatActivity;->x:Lya/a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lya/a;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Ld8/a;->f:Ld8/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/trello/rxlifecycle/components/support/RxAppCompatActivity;->x:Lya/a;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lya/a;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    sget-object v0, Ld8/a;->d:Ld8/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/trello/rxlifecycle/components/support/RxAppCompatActivity;->x:Lya/a;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lya/a;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ld8/a;->c:Ld8/a;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/trello/rxlifecycle/components/support/RxAppCompatActivity;->x:Lya/a;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lya/a;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ld8/a;->b:Ld8/a;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/trello/rxlifecycle/components/support/RxAppCompatActivity;->x:Lya/a;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lya/a;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    sget-object v0, Ld8/a;->e:Ld8/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/trello/rxlifecycle/components/support/RxAppCompatActivity;->x:Lya/a;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lya/a;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
