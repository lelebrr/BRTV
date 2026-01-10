.class public final Lorg/bitspark/android/utils/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/bitspark/android/utils/n;->a:Landroid/widget/TextView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final native onAnimationCancel(Landroid/animation/Animator;)V
.end method

.method public final native onAnimationEnd(Landroid/animation/Animator;)V
.end method

.method public final native onAnimationRepeat(Landroid/animation/Animator;)V
.end method

.method public final native onAnimationStart(Landroid/animation/Animator;)V
.end method
