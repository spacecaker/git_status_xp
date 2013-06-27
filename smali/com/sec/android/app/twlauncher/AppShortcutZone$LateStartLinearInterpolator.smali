.class Lcom/sec/android/app/twlauncher/AppShortcutZone$LateStartLinearInterpolator;
.super Ljava/lang/Object;
.source "AppShortcutZone.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AppShortcutZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LateStartLinearInterpolator"
.end annotation


# instance fields
.field private mStartFactor:F


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .parameter "startFactor"

    .prologue
    const/4 v0, 0x0

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1011
    iput v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$LateStartLinearInterpolator;->mStartFactor:F

    .line 1007
    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1008
    iput p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$LateStartLinearInterpolator;->mStartFactor:F

    .line 1010
    :cond_0
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .parameter "v"

    .prologue
    const/high16 v3, 0x3f80

    .line 1013
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$LateStartLinearInterpolator;->mStartFactor:F

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    .line 1018
    :goto_0
    return v1

    .line 1014
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$LateStartLinearInterpolator;->mStartFactor:F

    sub-float v1, p1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$LateStartLinearInterpolator;->mStartFactor:F

    sub-float v2, v3, v2

    div-float v0, v1, v2

    .line 1015
    .local v0, ret:F
    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    .line 1016
    const/high16 v0, 0x3f80

    :cond_1
    move v1, v0

    .line 1018
    goto :goto_0
.end method
