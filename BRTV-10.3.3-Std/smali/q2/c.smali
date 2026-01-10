.class public final Lq2/c;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lq2/e;


# instance fields
.field public final a:Lo2/a;

.field public final b:Lm2/j;


# direct methods
.method public constructor <init>(Lo2/a;Lm2/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq2/c;->a:Lo2/a;

    .line 5
    .line 6
    iput-object p2, p0, Lq2/c;->b:Lm2/j;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq2/c;->b:Lm2/j;

    .line 2
    .line 3
    instance-of v1, v0, Lm2/q;

    .line 4
    .line 5
    iget-object v2, p0, Lq2/c;->a:Lo2/a;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lm2/q;

    .line 10
    .line 11
    iget-object v0, v0, Lm2/q;->a:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Lo2/a;->g(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    instance-of v1, v0, Lm2/e;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    check-cast v0, Lm2/e;

    .line 22
    .line 23
    iget-object v0, v0, Lm2/e;->a:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Lo2/a;->g(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method
