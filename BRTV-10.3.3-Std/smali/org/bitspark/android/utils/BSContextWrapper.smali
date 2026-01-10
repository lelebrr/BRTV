.class public Lorg/bitspark/android/utils/BSContextWrapper;
.super Landroid/content/ContextWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static native getSystemLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation
.end method

.method public static native getSystemLocaleLegacy(Landroid/content/res/Configuration;)Ljava/util/Locale;
.end method

.method public static native setSystemLocaleLegacy(Landroid/content/res/Configuration;Ljava/util/Locale;)V
.end method

.method public static native wrap(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
.end method
