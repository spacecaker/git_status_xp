.class Lcom/sec/android/app/twlauncher/AppShortcutZone$PrematureLinearInterpolator;
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
    name = "PrematureLinearInterpolator"
.end annotation


# instance fields
.field private mPrematureFactor:F


# direct methods
.method public constructor <init>(F)V
    .locals 2
    .parameter "prematureFactor"

    .prologue
    const/high16 v1, 0x3f80

    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 995
    iput v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$PrematureLinearInterpolator;->mPrematureFactor:F

    .line 991
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 992
    iput p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$PrematureLinearInterpolator;->mPrematureFactor:F

    .line 994
    :cond_0
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .parameter "v"

    .prologue
    const/high16 v3, 0x3f80

    .line 997
    mul-float v1, p1, v3

    iget v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$PrematureLinearInterpolator;->mPrematureFactor:F

    div-float v0, v1, v2

    .line 998
    .local v0, ret:F
    cmpl-float v1, v0, v3

    if-lez v1, :cond_0

    .line 999
    const/high16 v0, 0x3f80

    .line 1001
    :cond_0
    return v0
.end method
