.class public Lorg/bitspark/android/view/MyCircularProgressBar;
.super Landroid/view/View;


# instance fields
.field public final a:Landroid/graphics/RectF;

.field public b:I

.field public c:I

.field public d:F

.field public e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x21

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lorg/bitspark/android/view/MyCircularProgressBar;->a:Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Lorg/bitspark/android/view/MyCircularProgressBar;->b:I

    const/16 p2, 0x64

    .line 4
    iput p2, p0, Lorg/bitspark/android/view/MyCircularProgressBar;->c:I

    const/high16 p2, 0x40800000    # 4.0f

    .line 5
    iput p2, p0, Lorg/bitspark/android/view/MyCircularProgressBar;->d:F

    .line 6
    invoke-virtual {p0, p1}, Lorg/bitspark/android/view/MyCircularProgressBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lorg/bitspark/android/view/MyCircularProgressBar;->a:Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 9
    iput p2, p0, Lorg/bitspark/android/view/MyCircularProgressBar;->b:I

    const/16 p2, 0x64

    .line 10
    iput p2, p0, Lorg/bitspark/android/view/MyCircularProgressBar;->c:I

    const/high16 p2, 0x40800000    # 4.0f

    .line 11
    iput p2, p0, Lorg/bitspark/android/view/MyCircularProgressBar;->d:F

    .line 12
    invoke-virtual {p0, p1}, Lorg/bitspark/android/view/MyCircularProgressBar;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final native a(Landroid/content/Context;)V
.end method

.method public final native onDraw(Landroid/graphics/Canvas;)V
.end method

.method public native setBackgroundColor(I)V
.end method

.method public native setMax(I)V
.end method

.method public native setProgress(I)V
.end method

.method public native setProgressColor(I)V
.end method

.method public native setStrokeWidth(F)V
.end method
