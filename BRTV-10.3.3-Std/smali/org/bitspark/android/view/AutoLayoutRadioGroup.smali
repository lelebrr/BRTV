.class public Lorg/bitspark/android/view/AutoLayoutRadioGroup;
.super Landroid/widget/RadioGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x36

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final native onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
.end method
