.class public abstract Lcom/sec/android/app/camera/gallery/BaseImage;
.super Ljava/lang/Object;
.source "BaseImage.java"

# interfaces
.implements Lcom/sec/android/app/camera/gallery/IImage;


# instance fields
.field protected mContainer:Lcom/sec/android/app/camera/gallery/BaseImageList;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mDataPath:Ljava/lang/String;

.field private final mDateTaken:J

.field private final mDisplayName:Ljava/lang/String;

.field private mHeight:I

.field protected mId:J

.field protected final mIndex:I

.field protected mMimeType:Ljava/lang/String;

.field protected mMiniThumbMagic:J

.field private mTitle:Ljava/lang/String;

.field protected mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "container"
    .parameter "cr"
    .parameter "id"
    .parameter "index"
    .parameter "uri"
    .parameter "dataPath"
    .parameter "miniThumbMagic"
    .parameter "mimeType"
    .parameter "dateTaken"
    .parameter "title"
    .parameter "displayName"

    .prologue
    const/4 v0, -0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mWidth:I

    .line 60
    iput v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mHeight:I

    .line 65
    iput-object p1, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContainer:Lcom/sec/android/app/camera/gallery/BaseImageList;

    .line 66
    iput-object p2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 67
    iput-wide p3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mId:J

    .line 68
    iput p5, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mIndex:I

    .line 69
    iput-object p6, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    .line 70
    iput-object p7, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDataPath:Ljava/lang/String;

    .line 71
    iput-wide p8, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mMiniThumbMagic:J

    .line 72
    iput-object p10, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mMimeType:Ljava/lang/String;

    .line 73
    iput-wide p11, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDateTaken:J

    .line 74
    iput-object p13, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mTitle:Ljava/lang/String;

    .line 75
    iput-object p14, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDisplayName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private setupDimension()V
    .locals 6

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 157
    .local v1, input:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 158
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 159
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 160
    invoke-static {}, Lcom/sec/android/app/camera/BitmapManager;->instance()Lcom/sec/android/app/camera/BitmapManager;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/app/camera/BitmapManager;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 162
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mWidth:I

    .line 163
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    invoke-static {v1}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 170
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 165
    .local v0, ex:Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    :try_start_1
    iput v3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mWidth:I

    .line 166
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    invoke-static {v1}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 84
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/sec/android/app/camera/gallery/Image;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 85
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    check-cast p1, Lcom/sec/android/app/camera/gallery/Image;

    .end local p1
    iget-object v1, p1, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fullSizeBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "minSideLength"
    .parameter "maxNumberOfPixels"

    .prologue
    .line 94
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/android/app/camera/gallery/BaseImage;->fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "minSideLength"
    .parameter "maxNumberOfPixels"
    .parameter "rotateAsNeeded"
    .parameter "useNative"

    .prologue
    .line 100
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContainer:Lcom/sec/android/app/camera/gallery/BaseImageList;

    iget-wide v3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/gallery/BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 101
    .local v1, url:Landroid/net/Uri;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 110
    :goto_0
    return-object v2

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, p2, v1, v2, p4}, Lcom/sec/android/app/camera/Util;->makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/BaseImage;->getDegreesRotated()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    move-object v2, v0

    .line 110
    goto :goto_0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getContainer()Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContainer:Lcom/sec/android/app/camera/gallery/BaseImageList;

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDateTaken:J

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/BaseImage;->setupDimension()V

    .line 179
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mHeight:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/BaseImage;->setupDimension()V

    .line 174
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 185
    .local v0, b:Landroid/graphics/Bitmap;
    :try_start_0
    iget-wide v2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mId:J

    .line 188
    .local v2, id:J
    iget-object v4, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDataPath:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/BaseImage;->getDegreesRotated()I

    move-result v4

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    move-object v4, v0

    .line 196
    .end local v2           #id:J
    :goto_0
    return-object v4

    .line 189
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 190
    .local v1, ex:Ljava/lang/Throwable;
    const-string v4, "BaseImage"

    const-string v5, "miniThumbBitmap got exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected onRemove()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
