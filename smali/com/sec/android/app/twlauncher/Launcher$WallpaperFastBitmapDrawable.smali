.class Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperFastBitmapDrawable"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDrawLeft:I

.field private mDrawTop:I

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 5126
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 5127
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 5128
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;->mWidth:I

    .line 5129
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;->mHeight:I

    .line 5130
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;->mWidth:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;->mHeight:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;->setBounds(IIII)V

    .line 5131
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Bitmap;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5119
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 5135
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;->mDrawLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;->mDrawTop:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 5136
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 5186
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 5181
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 5196
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 5191
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 5140
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 5157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported with this drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBounds(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 5145
    sub-int v0, p3, p1

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;->mWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;->mDrawLeft:I

    .line 5146
    sub-int v0, p4, p2

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;->mHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;->mDrawTop:I

    .line 5147
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "bounds"

    .prologue
    .line 5152
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 5153
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .parameter "cf"

    .prologue
    .line 5163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported with this drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDither(Z)V
    .locals 2
    .parameter "dither"

    .prologue
    .line 5169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported with this drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFilterBitmap(Z)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 5175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported with this drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
