.class public Lorg/bitspark/android/beans/SubtitleMenu;
.super Lorg/bitspark/android/beans/Menu;


# instance fields
.field private groupIndex:I

.field private isSelected:Z

.field private label:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private rendererIndex:I

.field private trackIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 2

    const-string v0, "6is1whb4/v4=\n"

    const-string v1, "hkpbpWOZmZs=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "q17OCFw=\n"

    const-string v1, "xz+sbTC/ET4=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p6}, Lorg/bitspark/android/beans/Menu;-><init>(Ljava/lang/String;Z)V

    .line 3
    iput-object p1, p0, Lorg/bitspark/android/beans/SubtitleMenu;->language:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/bitspark/android/beans/SubtitleMenu;->label:Ljava/lang/String;

    .line 5
    iput p3, p0, Lorg/bitspark/android/beans/SubtitleMenu;->rendererIndex:I

    .line 6
    iput p4, p0, Lorg/bitspark/android/beans/SubtitleMenu;->groupIndex:I

    .line 7
    iput p5, p0, Lorg/bitspark/android/beans/SubtitleMenu;->trackIndex:I

    .line 8
    iput-boolean p6, p0, Lorg/bitspark/android/beans/SubtitleMenu;->isSelected:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIZILj9/f;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move v6, p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/bitspark/android/beans/SubtitleMenu;-><init>(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    return-void
.end method


# virtual methods
.method public final native getGroupIndex()I
.end method

.method public final native getLabel()Ljava/lang/String;
.end method

.method public final native getLanguage()Ljava/lang/String;
.end method

.method public final native getRendererIndex()I
.end method

.method public final native getTrackIndex()I
.end method

.method public native isSelected()Z
.end method

.method public final native setGroupIndex(I)V
.end method

.method public final native setLabel(Ljava/lang/String;)V
.end method

.method public final native setLanguage(Ljava/lang/String;)V
.end method

.method public final native setRendererIndex(I)V
.end method

.method public native setSelected(Z)V
.end method

.method public final native setTrackIndex(I)V
.end method
