.class public Lorg/bitspark/android/view/MyRadioButton;
.super Landroid/widget/RadioButton;


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x17

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final native onDraw(Landroid/graphics/Canvas;)V
.end method

.method public native setButtonDrawable(I)V
.end method

.method public native setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
.end method
