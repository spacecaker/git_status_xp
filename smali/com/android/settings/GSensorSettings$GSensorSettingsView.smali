.class Lcom/android/settings/GSensorSettings$GSensorSettingsView;
.super Landroid/view/View;
.source "GSensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GSensorSettingsView"
.end annotation


# static fields
.field static sx:I

.field static sy:I


# instance fields
.field mRadius:I

.field mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 243
    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$500()I

    move-result v0

    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$600()I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sx:I

    .line 244
    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$700()I

    move-result v0

    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$600()I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sy:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 251
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 245
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mState:I

    .line 252
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->updateState(I)V

    return-void
.end method

.method private updateState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 255
    iput p1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mState:I

    .line 256
    return-void
.end method


# virtual methods
.method public getPoint([F)[F
    .locals 3
    .parameter "position"

    .prologue
    .line 272
    const/4 v0, 0x0

    sget v1, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sx:I

    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$600()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, p1, v0

    .line 273
    const/4 v0, 0x1

    sget v1, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sy:I

    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$600()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, p1, v0

    .line 275
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const-wide/high16 v5, 0x4000

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, image:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 288
    :cond_0
    :goto_0
    sget v1, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sx:I

    sget v2, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sy:I

    sget v3, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sx:I

    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$600()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sy:I

    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$600()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 289
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 292
    return-void

    .line 281
    :cond_1
    iget v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 283
    sget v1, Lcom/android/settings/GSensorSettings;->ani_gap_x:F

    sget v2, Lcom/android/settings/GSensorSettings;->ani_count:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    sget v3, Lcom/android/settings/GSensorSettings;->ani_gap_y:F

    sget v4, Lcom/android/settings/GSensorSettings;->ani_count:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mRadius:I

    .line 284
    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$500()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$700()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mRadius:I

    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$600()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lcom/android/settings/GSensorSettings;->ani_count:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$900()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setPoint(FF)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/high16 v5, 0x4000

    .line 260
    float-to-double v1, p1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, p2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 261
    .local v0, lengthPoint:F
    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$800()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 262
    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$800()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float p1, v1, v0

    .line 263
    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$800()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    div-float p2, v1, v0

    .line 266
    :cond_0
    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$500()I

    move-result v1

    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$600()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int v1, v1

    sput v1, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sx:I

    .line 267
    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$700()I

    move-result v1

    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$600()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, p2

    float-to-int v1, v1

    sput v1, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sy:I

    .line 269
    return-void
.end method
