.class public Lorg/bitspark/android/view/MyProcessRelativeLayout;
.super Landroid/widget/RelativeLayout;


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public final g:I

.field public h:Landroid/graphics/Paint;

.field public i:Landroid/graphics/Paint;

.field public j:F

.field public k:F

.field public l:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x32

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, -0x2766

    .line 2
    iput p1, p0, Lorg/bitspark/android/view/MyProcessRelativeLayout;->a:I

    .line 3
    iput p1, p0, Lorg/bitspark/android/view/MyProcessRelativeLayout;->b:I

    .line 4
    iput p1, p0, Lorg/bitspark/android/view/MyProcessRelativeLayout;->c:I

    .line 5
    iput p1, p0, Lorg/bitspark/android/view/MyProcessRelativeLayout;->d:I

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lorg/bitspark/android/view/MyProcessRelativeLayout;->e:Z

    .line 7
    iput p1, p0, Lorg/bitspark/android/view/MyProcessRelativeLayout;->f:I

    const/16 p1, 0x64

    .line 8
    iput p1, p0, Lorg/bitspark/android/view/MyProcessRelativeLayout;->g:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Ln5/d;->q(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/bitspark/android/view/MyProcessRelativeLayout;->j:F

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Ln5/d;->q(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/bitspark/android/view/MyProcessRelativeLayout;->k:F

    .line 11
    invoke-virtual {p0, p2}, Lorg/bitspark/android/view/MyProcessRelativeLayout;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, -0x2766

    .line 13
    iput p1, p0, Lorg/bitspark/android/view/MyProcessRelativeLayout;->a:I

    .line 14
    iput p1, p0, Lorg/bitspark/android/view/MyProcessRelativeLayout;->b:I

    .line 15
    iput p1, p0, Lorg/bitspark/android/view/MyProcessRelativeLayout;->c:I

    .line 16
    iput p1, p0, Lorg/bitspark/android/view/MyProcessRelativeLayout;->d:I

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lorg/bitspark/android/view/MyProcessRelativeLayout;->e:Z

    .line 18
    iput p1, p0, Lorg/bitspark/android/view/MyProcessRelativeLayout;->f:I

    const/16 p1, 0x64

    .line 19
    iput p1, p0, Lorg/bitspark/android/view/MyProcessRelativeLayout;->g:I

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p3, 0x4

    invoke-static {p1, p3}, Ln5/d;->q(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/bitspark/android/view/MyProcessRelativeLayout;->j:F

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Ln5/d;->q(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/bitspark/android/view/MyProcessRelativeLayout;->k:F

    .line 22
    invoke-virtual {p0, p2}, Lorg/bitspark/android/view/MyProcessRelativeLayout;->a(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final native a(Landroid/util/AttributeSet;)V
.end method

.method public final native b()V
.end method

.method public native getFocusColor()I
.end method

.method public native getUnFocusColor()I
.end method

.method public final native onDraw(Landroid/graphics/Canvas;)V
.end method

.method public final native onFocusChanged(ZILandroid/graphics/Rect;)V
.end method

.method public native setBackgroundPaintColor(I)V
.end method

.method public native setCornerRadius(F)V
.end method

.method public native setFocusColor(I)V
.end method

.method public native setProgress(I)V
.end method

.method public native setProgressHeight(F)V
.end method

.method public native setUnFocusColor(I)V
.end method
