.class final Lcom/sec/android/app/twlauncher/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/Utilities$BubbleText;
    }
.end annotation


# static fields
.field static final sBgMap:[Lcom/sec/android/app/twlauncher/BgMap;

.field private static final sBlurPaint:Landroid/graphics/Paint;

.field private static final sBounds:Landroid/graphics/Rect;

.field private static sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I

.field static sColors:[I

.field private static final sDisabledPaint:Landroid/graphics/Paint;

.field private static final sGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private static final sGlowColorPressedPaint:Landroid/graphics/Paint;

.field private static sIconHeight:I

.field private static sIconTextureHeight:I

.field private static sIconTextureWidth:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static final sPaint:Landroid/graphics/Paint;

.field static final sRandom3rdIconBg:[I

.field static final sRandomIconBg:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, -0x1

    .line 53
    sput v0, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 54
    sput v0, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    .line 55
    sput v0, Lcom/sec/android/app/twlauncher/Utilities;->sIconTextureWidth:I

    .line 56
    sput v0, Lcom/sec/android/app/twlauncher/Utilities;->sIconTextureHeight:I

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sBounds:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 68
    sget-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sColors:[I

    .line 94
    sput v4, Lcom/sec/android/app/twlauncher/Utilities;->sColorIndex:I

    .line 558
    invoke-static {}, Lcom/sec/android/app/twlauncher/BgMapFactory;->getBgMap()[Lcom/sec/android/app/twlauncher/BgMap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sBgMap:[Lcom/sec/android/app/twlauncher/BgMap;

    .line 560
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f02002f

    aput v1, v0, v4

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sRandomIconBg:[I

    .line 564
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sRandom3rdIconBg:[I

    return-void

    .line 93
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data

    .line 564
    :array_1
    .array-data 0x4
        0x2at 0x0t 0x2t 0x7ft
        0x2bt 0x0t 0x2t 0x7ft
        0x2ct 0x0t 0x2t 0x7ft
        0x2dt 0x0t 0x2t 0x7ft
        0x2et 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    return-void
.end method

.method static createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "bitmap"
    .parameter "context"

    .prologue
    .line 489
    sget-object v10, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v10

    .line 490
    :try_start_0
    sget v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    .line 491
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 492
    .local v7, resources:Landroid/content/res/Resources;
    const/high16 v11, 0x105

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    sput v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sput v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 496
    .end local v7           #resources:Landroid/content/res/Resources;
    :cond_0
    sget v9, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 497
    .local v9, width:I
    sget v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    .line 499
    .local v4, height:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 500
    .local v1, bitmapWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 502
    .local v0, bitmapHeight:I
    if-lez v9, :cond_7

    if-lez v4, :cond_7

    .line 503
    if-lt v9, v1, :cond_1

    if-ge v4, v0, :cond_5

    .line 504
    :cond_1
    int-to-float v11, v1

    int-to-float v12, v0

    div-float v6, v11, v12

    .line 506
    .local v6, ratio:F
    if-le v1, v0, :cond_3

    .line 507
    int-to-float v11, v9

    div-float/2addr v11, v6

    float-to-int v4, v11

    .line 512
    :cond_2
    :goto_0
    sget v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    if-ne v9, v11, :cond_4

    sget v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    if-ne v4, v11, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    move-object v2, v11

    .line 514
    .local v2, c:Landroid/graphics/Bitmap$Config;
    :goto_1
    sget v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sget v12, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    invoke-static {v11, v12, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 515
    .local v8, thumb:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 516
    .local v3, canvas:Landroid/graphics/Canvas;
    sget-object v5, Lcom/sec/android/app/twlauncher/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 517
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 518
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 519
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 520
    sget-object v11, Lcom/sec/android/app/twlauncher/Utilities;->sBounds:Landroid/graphics/Rect;

    sget v12, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sub-int/2addr v12, v9

    div-int/lit8 v12, v12, 0x2

    sget v13, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sub-int/2addr v13, v4

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v11, v12, v13, v9, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 521
    sget-object v11, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 522
    sget-object v11, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    sget-object v12, Lcom/sec/android/app/twlauncher/Utilities;->sBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p0, v11, v12, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 523
    monitor-exit v10

    move-object v10, v8

    .line 539
    .end local v2           #c:Landroid/graphics/Bitmap$Config;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v6           #ratio:F
    .end local v8           #thumb:Landroid/graphics/Bitmap;
    :goto_2
    return-object v10

    .line 508
    .restart local v6       #ratio:F
    :cond_3
    if-le v0, v1, :cond_2

    .line 509
    int-to-float v11, v4

    mul-float/2addr v11, v6

    float-to-int v9, v11

    goto :goto_0

    .line 512
    :cond_4
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v2, v11

    goto :goto_1

    .line 524
    .end local v6           #ratio:F
    :cond_5
    if-lt v1, v9, :cond_6

    if-ge v0, v4, :cond_7

    .line 525
    :cond_6
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 526
    .restart local v2       #c:Landroid/graphics/Bitmap$Config;
    sget v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sget v12, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    invoke-static {v11, v12, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 527
    .restart local v8       #thumb:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 528
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    sget-object v5, Lcom/sec/android/app/twlauncher/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 529
    .restart local v5       #paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 530
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 531
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 532
    sget v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sub-int/2addr v11, v1

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sub-int/2addr v12, v0

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v3, p0, v11, v12, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 534
    monitor-exit v10

    move-object v10, v8

    goto :goto_2

    .line 537
    .end local v2           #c:Landroid/graphics/Bitmap$Config;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v8           #thumb:Landroid/graphics/Bitmap;
    :cond_7
    monitor-exit v10

    move-object v10, p0

    .line 539
    goto :goto_2

    .line 537
    .end local v0           #bitmapHeight:I
    .end local v1           #bitmapWidth:I
    .end local v4           #height:I
    .end local v9           #width:I
    :catchall_0
    move-exception v11

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method

.method static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 102
    sget-object v6, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v6

    .line 103
    :try_start_0
    sget v1, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 104
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/Utilities;->initStatics(Landroid/content/Context;)V

    .line 107
    :cond_0
    sget v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 108
    .local v4, width:I
    sget v3, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    .line 110
    .local v3, height:I
    instance-of v1, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v1, :cond_3

    .line 111
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object p1, v0

    .line 112
    .local p1, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 113
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 122
    .end local p1           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 123
    .local v2, sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 125
    .local v1, sourceHeight:I
    if-lez v2, :cond_6

    if-lez v2, :cond_6

    .line 127
    if-lt v4, v2, :cond_2

    if-ge v3, v1, :cond_5

    .line 129
    :cond_2
    int-to-float p1, v2

    int-to-float v5, v1

    div-float/2addr p1, v5

    .line 130
    .local p1, ratio:F
    if-le v2, v1, :cond_4

    .line 131
    int-to-float v1, v4

    div-float p1, v1, p1

    float-to-int p1, p1

    .end local v3           #height:I
    .local p1, height:I
    move v1, v4

    .end local v4           #width:I
    .local v1, width:I
    :goto_1
    move v2, p1

    .end local p1           #height:I
    .local v2, height:I
    move v5, v1

    .line 143
    .end local v1           #width:I
    .local v5, width:I
    :goto_2
    sget v3, Lcom/sec/android/app/twlauncher/Utilities;->sIconTextureWidth:I

    .line 144
    .local v3, textureWidth:I
    sget v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconTextureHeight:I

    .line 146
    .local v4, textureHeight:I
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 148
    .local p1, bitmap:Landroid/graphics/Bitmap;
    sget-object v1, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 149
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    .line 152
    .local v3, left:I
    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 163
    .local v4, top:I
    sget-object v7, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 164
    add-int/2addr v5, v3

    add-int/2addr v2, v4

    invoke-virtual {p0, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 165
    .end local v2           #height:I
    .end local v5           #width:I
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    sget-object v1, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .end local v1           #canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 168
    monitor-exit v6

    return-object p1

    .line 114
    .local v3, height:I
    .local v4, width:I
    .local p1, context:Landroid/content/Context;
    :cond_3
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 116
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 117
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 118
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .end local p1           #context:Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 169
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #height:I
    .end local v4           #width:I
    .end local p0
    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 132
    .local v1, sourceHeight:I
    .local v2, sourceWidth:I
    .restart local v3       #height:I
    .restart local v4       #width:I
    .restart local p0
    .local p1, ratio:F
    :cond_4
    if-le v1, v2, :cond_7

    .line 133
    int-to-float v1, v3

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .end local v4           #width:I
    .local p1, width:I
    move v1, p1

    .end local p1           #width:I
    .local v1, width:I
    move p1, v3

    .end local v3           #height:I
    .local p1, height:I
    goto :goto_1

    .line 135
    .end local p1           #height:I
    .local v1, sourceHeight:I
    .restart local v3       #height:I
    .restart local v4       #width:I
    :cond_5
    if-ge v2, v4, :cond_6

    if-ge v1, v3, :cond_6

    .line 137
    move v2, v2

    .line 138
    .end local v4           #width:I
    .local v2, width:I
    move p1, v1

    .end local v3           #height:I
    .restart local p1       #height:I
    move v5, v2

    .end local v2           #width:I
    .restart local v5       #width:I
    move v2, p1

    .end local p1           #height:I
    .local v2, height:I
    goto :goto_2

    .end local v5           #width:I
    .local v2, sourceWidth:I
    .restart local v3       #height:I
    .restart local v4       #width:I
    :cond_6
    move v2, v3

    .end local v3           #height:I
    .local v2, height:I
    move v5, v4

    .end local v4           #width:I
    .restart local v5       #width:I
    goto :goto_2

    .end local v5           #width:I
    .local v2, sourceWidth:I
    .restart local v3       #height:I
    .restart local v4       #width:I
    .local p1, ratio:F
    :cond_7
    move p1, v3

    .end local v3           #height:I
    .local p1, height:I
    move v1, v4

    .end local v4           #width:I
    .local v1, width:I
    goto :goto_1
.end method

.method static createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 404
    sget-object v8, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v8

    .line 405
    :try_start_0
    sget v1, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 406
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 407
    .local v1, resources:Landroid/content/res/Resources;
    const/high16 v2, 0x105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .end local v1           #resources:Landroid/content/res/Resources;
    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sput v1, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 410
    :cond_0
    sget v5, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 411
    .local v5, width:I
    sget v3, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    .line 413
    .local v3, height:I
    const/high16 v4, 0x3f80

    .line 414
    .local v4, scale:F
    instance-of v1, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v1, :cond_3

    .line 415
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object p1, v0

    .line 416
    .local p1, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 417
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 426
    .end local p1           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 427
    .local v2, iconWidth:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 429
    .local v1, iconHeight:I
    if-lez v5, :cond_7

    if-lez v3, :cond_7

    .line 430
    if-lt v5, v2, :cond_2

    if-lt v3, v1, :cond_2

    const/high16 p1, 0x3f80

    cmpl-float p1, v4, p1

    if-eqz p1, :cond_6

    .line 431
    :cond_2
    int-to-float p1, v2

    int-to-float v4, v1

    div-float/2addr p1, v4

    .line 433
    .local p1, ratio:F
    if-le v2, v1, :cond_4

    .line 434
    .end local v4           #scale:F
    int-to-float v1, v5

    div-float p1, v1, p1

    float-to-int p1, p1

    .end local v3           #height:I
    .local p1, height:I
    move v1, p1

    .end local p1           #height:I
    .local v1, height:I
    move v3, v5

    .line 439
    .end local v5           #width:I
    .local v3, width:I
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_5

    .end local v2           #iconWidth:I
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 441
    .local p1, c:Landroid/graphics/Bitmap$Config;
    :goto_2
    sget v2, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sget v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    invoke-static {v2, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 442
    .local v2, thumb:Landroid/graphics/Bitmap;
    sget-object p1, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 443
    .local p1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 449
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 450
    sget v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    .line 451
    .local v4, x:I
    sget v5, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    .line 452
    .local v5, y:I
    add-int v6, v4, v3

    add-int v7, v5, v1

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 453
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 454
    sget-object p1, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .end local p1           #canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 455
    new-instance p1, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-direct {p1, v2}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .end local p0
    .local p1, icon:Landroid/graphics/drawable/Drawable;
    move-object p0, p1

    .end local p1           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p0
    move p1, v1

    .end local v1           #height:I
    .local p1, height:I
    move v1, v3

    .line 470
    .end local v2           #thumb:Landroid/graphics/Bitmap;
    .end local v3           #width:I
    .end local v4           #x:I
    .end local v5           #y:I
    .local v1, width:I
    :goto_3
    monitor-exit v8

    .line 472
    return-object p0

    .line 418
    .end local v1           #width:I
    .local v3, height:I
    .local v4, scale:F
    .local v5, width:I
    .local p1, context:Landroid/content/Context;
    :cond_3
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 420
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 421
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 422
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 423
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .end local p1           #context:Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 470
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #height:I
    .end local v4           #scale:F
    .end local v5           #width:I
    :catchall_0
    move-exception p1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 435
    .local v1, iconHeight:I
    .local v2, iconWidth:I
    .restart local v3       #height:I
    .restart local v5       #width:I
    .local p1, ratio:F
    :cond_4
    if-le v1, v2, :cond_8

    .line 436
    int-to-float v1, v3

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .end local v5           #width:I
    .local p1, width:I
    move v1, v3

    .end local v3           #height:I
    .local v1, height:I
    move v3, p1

    .end local p1           #width:I
    .local v3, width:I
    goto :goto_1

    .line 439
    .end local v2           #iconWidth:I
    :cond_5
    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    .line 456
    .local v1, iconHeight:I
    .restart local v2       #iconWidth:I
    .local v3, height:I
    .restart local v4       #scale:F
    .restart local v5       #width:I
    :cond_6
    if-ge v2, v5, :cond_7

    if-ge v1, v3, :cond_7

    .line 457
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 458
    .local p1, c:Landroid/graphics/Bitmap$Config;
    sget v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .end local v4           #scale:F
    sget v6, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    invoke-static {v4, v6, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 459
    .local v4, thumb:Landroid/graphics/Bitmap;
    sget-object p1, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 460
    .local p1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 461
    sget-object v6, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 462
    sub-int v6, v5, v2

    div-int/lit8 v6, v6, 0x2

    .line 463
    .local v6, x:I
    sub-int v7, v3, v1

    div-int/lit8 v7, v7, 0x2

    .line 464
    .local v7, y:I
    add-int/2addr v2, v6

    add-int/2addr v1, v7

    invoke-virtual {p0, v6, v7, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 465
    .end local v1           #iconHeight:I
    .end local v2           #iconWidth:I
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 466
    sget-object p1, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .end local p1           #canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 467
    new-instance p1, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-direct {p1, v4}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0
    .local p1, icon:Landroid/graphics/drawable/Drawable;
    move v1, v5

    .end local v5           #width:I
    .local v1, width:I
    move-object p0, p1

    .end local p1           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p0
    move p1, v3

    .end local v3           #height:I
    .local p1, height:I
    goto :goto_3

    .end local v6           #x:I
    .end local v7           #y:I
    .end local p1           #height:I
    .local v1, iconHeight:I
    .restart local v2       #iconWidth:I
    .restart local v3       #height:I
    .local v4, scale:F
    .restart local v5       #width:I
    :cond_7
    move p1, v3

    .end local v3           #height:I
    .restart local p1       #height:I
    move v1, v5

    .end local v5           #width:I
    .local v1, width:I
    goto :goto_3

    .end local v4           #scale:F
    .local v1, iconHeight:I
    .restart local v3       #height:I
    .restart local v5       #width:I
    .local p1, ratio:F
    :cond_8
    move v1, v3

    .end local v3           #height:I
    .local v1, height:I
    move v3, v5

    .end local v5           #width:I
    .local v3, width:I
    goto/16 :goto_1
.end method

.method static findResFixedBg(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 601
    const/4 v2, -0x1

    .line 602
    .local v2, res:I
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sBgMap:[Lcom/sec/android/app/twlauncher/BgMap;

    array-length v3, v4

    .line 605
    .local v3, size:I
    sget-boolean v4, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v4, :cond_1

    .line 608
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 609
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sBgMap:[Lcom/sec/android/app/twlauncher/BgMap;

    aget-object v0, v4, v1

    .line 612
    .local v0, bgmap:Lcom/sec/android/app/twlauncher/BgMap;
    iget-object v4, v0, Lcom/sec/android/app/twlauncher/BgMap;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 613
    if-eqz p1, :cond_0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/BgMap;->mClassName:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 614
    :cond_0
    iget v2, v0, Lcom/sec/android/app/twlauncher/BgMap;->mResid:I

    .line 623
    .end local v0           #bgmap:Lcom/sec/android/app/twlauncher/BgMap;
    .end local v1           #i:I
    :cond_1
    :goto_1
    return v2

    .line 616
    .restart local v0       #bgmap:Lcom/sec/android/app/twlauncher/BgMap;
    .restart local v1       #i:I
    :cond_2
    iget-object v4, v0, Lcom/sec/android/app/twlauncher/BgMap;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 617
    iget v2, v0, Lcom/sec/android/app/twlauncher/BgMap;->mResid:I

    .line 618
    goto :goto_1

    .line 608
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static getDrawableIconBg(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "packageName"
    .parameter "className"
    .parameter "context"
    .parameter "isSystemApp"

    .prologue
    .line 573
    const/4 v0, 0x0

    .line 574
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 575
    .local v6, resources:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 577
    .local v1, fixedBg:Z
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    .line 579
    :cond_0
    const/4 v5, -0x1

    .line 580
    .local v5, res:I
    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    .line 581
    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/Utilities;->findResFixedBg(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 582
    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    .line 583
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sget-object v9, Lcom/sec/android/app/twlauncher/Utilities;->sRandomIconBg:[I

    array-length v9, v9

    int-to-long v9, v9

    rem-long v3, v7, v9

    .line 584
    .local v3, random:J
    sget-object v7, Lcom/sec/android/app/twlauncher/Utilities;->sRandomIconBg:[I

    long-to-int v8, v3

    aget v5, v7, v8

    .line 595
    .end local v3           #random:J
    :cond_1
    :goto_0
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 597
    return-object v0

    .line 587
    :cond_2
    if-nez p0, :cond_3

    .line 588
    sget-object v7, Lcom/sec/android/app/twlauncher/Utilities;->sRandom3rdIconBg:[I

    const/4 v8, 0x0

    aget v5, v7, v8

    goto :goto_0

    .line 590
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 591
    .local v2, len:I
    sget-object v7, Lcom/sec/android/app/twlauncher/Utilities;->sRandom3rdIconBg:[I

    sget-object v8, Lcom/sec/android/app/twlauncher/Utilities;->sRandom3rdIconBg:[I

    array-length v8, v8

    rem-int v8, v2, v8

    aget v5, v7, v8

    goto :goto_0
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x0

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 239
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 240
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 242
    .local v1, density:F
    const/high16 v4, 0x105

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sput v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 243
    sget v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sput v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconTextureHeight:I

    sput v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconTextureWidth:I

    .line 245
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    const/high16 v6, 0x40a0

    mul-float/2addr v6, v1

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 246
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x3d00

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 248
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x7200

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 251
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 252
    .local v0, cm:Landroid/graphics/ColorMatrix;
    const v4, 0x3e4ccccd

    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 253
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 254
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 255
    return-void
.end method

.method static roundToPow2(I)I
    .locals 3
    .parameter "n"

    .prologue
    .line 372
    move v1, p0

    .line 373
    .local v1, orig:I
    shr-int/lit8 p0, p0, 0x1

    .line 374
    const/high16 v0, 0x800

    .line 375
    .local v0, mask:I
    :goto_0
    if-eqz v0, :cond_0

    and-int v2, p0, v0

    if-nez v2, :cond_0

    .line 376
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 379
    or-int/2addr p0, v0

    .line 380
    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 382
    :cond_1
    add-int/lit8 p0, p0, 0x1

    .line 383
    if-eq p0, v1, :cond_2

    .line 384
    shl-int/lit8 p0, p0, 0x1

    .line 386
    :cond_2
    return p0
.end method

.method static zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V
    .locals 6
    .parameter "vg"
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "requestLayout"

    .prologue
    .line 660
    if-ne p1, p2, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 666
    .local v0, childCount:I
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 675
    .local v3, vf:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 676
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_1
    sub-int v4, v0, p2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_2

    .line 677
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 678
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 676
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 686
    .end local v2           #v:Landroid/view/View;
    :cond_2
    if-eqz p3, :cond_0

    .line 687
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0
.end method
