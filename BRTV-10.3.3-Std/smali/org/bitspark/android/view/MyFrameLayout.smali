.class public Lorg/bitspark/android/view/MyFrameLayout;
.super Landroid/widget/FrameLayout;


# instance fields
.field public a:Lsa/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/bitspark/android/view/MyFrameLayout;->a:Lsa/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/bitspark/android/view/MyFrameLayout;->a:Lsa/f;

    return-void
.end method


# virtual methods
.method public final native onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public native setOnInterceptTouchEvent(Lsa/f;)V
.end method
