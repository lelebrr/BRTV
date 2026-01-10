.class public final Landroidx/mediarouter/app/r0;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Landroid/graphics/drawable/BitmapDrawable;

.field public b:F

.field public final c:Landroid/graphics/Rect;

.field public d:Landroid/view/animation/Interpolator;

.field public e:J

.field public final f:Landroid/graphics/Rect;

.field public g:I

.field public h:F

.field public i:J

.field public j:Z

.field public k:Z

.field public l:La7/f;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Landroidx/mediarouter/app/r0;->b:F

    .line 7
    .line 8
    iput v0, p0, Landroidx/mediarouter/app/r0;->h:F

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/mediarouter/app/r0;->a:Landroid/graphics/drawable/BitmapDrawable;

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/mediarouter/app/r0;->f:Landroid/graphics/Rect;

    .line 13
    .line 14
    new-instance v0, Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/mediarouter/app/r0;->c:Landroid/graphics/Rect;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget p2, p0, Landroidx/mediarouter/app/r0;->b:F

    .line 24
    .line 25
    const/high16 v1, 0x437f0000    # 255.0f

    .line 26
    .line 27
    mul-float p2, p2, v1

    .line 28
    .line 29
    float-to-int p2, p2

    .line 30
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
