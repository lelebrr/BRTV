.class public Lorg/bitspark/android/view/MyViewPager;
.super Landroidx/viewpager/widget/ViewPager;


# instance fields
.field public d0:Lsa/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2e

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final native dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public final native onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public final native onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public native setDispatchKeyEvent(Lsa/a;)V
.end method
