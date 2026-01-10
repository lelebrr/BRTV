.class public Lorg/bitspark/android/view/GradientBorderView;
.super Landroid/view/View;


# instance fields
.field public a:Landroid/graphics/Paint;

.field public b:I

.field public c:[I

.field public d:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x6

    .line 2
    iput p1, p0, Lorg/bitspark/android/view/GradientBorderView;->b:I

    const/4 p1, 0x0

    .line 3
    filled-new-array {p1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lorg/bitspark/android/view/GradientBorderView;->c:[I

    const/high16 p1, 0x41800000    # 16.0f

    .line 4
    iput p1, p0, Lorg/bitspark/android/view/GradientBorderView;->d:F

    .line 5
    invoke-virtual {p0}, Lorg/bitspark/android/view/GradientBorderView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x6

    .line 7
    iput p1, p0, Lorg/bitspark/android/view/GradientBorderView;->b:I

    const/4 p1, 0x0

    .line 8
    filled-new-array {p1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lorg/bitspark/android/view/GradientBorderView;->c:[I

    const/high16 p1, 0x41800000    # 16.0f

    .line 9
    iput p1, p0, Lorg/bitspark/android/view/GradientBorderView;->d:F

    .line 10
    invoke-virtual {p0}, Lorg/bitspark/android/view/GradientBorderView;->a()V

    return-void
.end method


# virtual methods
.method public final native a()V
.end method

.method public final native onDraw(Landroid/graphics/Canvas;)V
.end method

.method public native setColor(I)V
.end method

.method public native setColor([I)V
.end method
