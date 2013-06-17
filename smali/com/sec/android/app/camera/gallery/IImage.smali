.class public interface abstract Lcom/sec/android/app/camera/gallery/IImage;
.super Ljava/lang/Object;
.source "IImage.java"


# virtual methods
.method public abstract fullSizeBitmap(II)Landroid/graphics/Bitmap;
.end method

.method public abstract fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;
.end method

.method public abstract fullSizeImageUri()Landroid/net/Uri;
.end method

.method public abstract getContainer()Lcom/sec/android/app/camera/gallery/IImageList;
.end method

.method public abstract getDataPath()Ljava/lang/String;
.end method

.method public abstract getDateTaken()J
.end method

.method public abstract getDegreesRotated()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getWidth()I
.end method

.method public abstract miniThumbBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract thumbBitmap(Z)Landroid/graphics/Bitmap;
.end method
