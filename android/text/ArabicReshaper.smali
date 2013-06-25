.class public Landroid/text/ArabicReshaper;
.super Ljava/lang/Object;
.source "ArabicReshaper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getReshapedText(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public static native setHasArabicChar(Landroid/graphics/Canvas;Ljava/lang/String;II)V
.end method

.method public static native setIsArabicText(Landroid/graphics/Canvas;Z)V
.end method

.method public static native setIsStaticArabicText(Landroid/graphics/Canvas;Z)V
.end method
