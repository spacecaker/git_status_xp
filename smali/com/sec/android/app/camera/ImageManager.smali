.class public Lcom/sec/android/app/camera/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ImageManager$1;,
        Lcom/sec/android/app/camera/ImageManager$EmptyImageList;,
        Lcom/sec/android/app/camera/ImageManager$DataLocation;,
        Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    }
.end annotation


# static fields
.field public static final CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

.field public static final CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

.field private static final STORAGE_URI:Landroid/net/Uri;

.field private static final THUMB_URI:Landroid/net/Uri;

.field private static final VIDEO_STORAGE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    .line 62
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->THUMB_URI:Landroid/net/Uri;

    .line 65
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/sec/android/app/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/ImageManager;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;
    .locals 5
    .parameter "cr"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "directory"
    .parameter "filename"
    .parameter "source"
    .parameter "jpegData"
    .parameter "degree"

    .prologue
    .line 241
    const/4 v2, 0x0

    .line 242
    .local v2, outputStream:Ljava/io/OutputStream;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, filePath:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 246
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    invoke-direct {v0, p5, p6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v0, file:Ljava/io/File;
    new-instance p5, Ljava/io/FileOutputStream;

    .end local p5
    invoke-direct {p5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    .end local v2           #outputStream:Ljava/io/OutputStream;
    .local p5, outputStream:Ljava/io/OutputStream;
    if-eqz p7, :cond_2

    .line 249
    :try_start_1
    sget-object p8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .end local p8
    const/16 v0, 0x4b

    invoke-virtual {p7, p8, v0, p5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 250
    .end local v0           #file:Ljava/io/File;
    const/4 p7, 0x0

    const/4 p8, 0x0

    aput p8, p9, p7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 262
    .end local p7
    :goto_0
    invoke-static {p5}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 265
    new-instance p7, Landroid/content/ContentValues;

    const/4 p8, 0x7

    invoke-direct {p7, p8}, Landroid/content/ContentValues;-><init>(I)V

    .line 266
    .local p7, values:Landroid/content/ContentValues;
    const-string p8, "title"

    invoke-virtual {p7, p8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string p1, "_display_name"

    .end local p1
    invoke-virtual {p7, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string p1, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .end local p2
    invoke-virtual {p7, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 273
    const-string p1, "mime_type"

    const-string p2, "image/jpeg"

    invoke-virtual {p7, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string p1, "orientation"

    const/4 p2, 0x0

    aget p2, p9, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p7, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    const-string p1, "_data"

    invoke-virtual {p7, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    if-eqz p4, :cond_1

    .line 278
    const-string p1, "latitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p7, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 279
    const-string p1, "longitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p7, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 282
    :cond_1
    sget-object p1, Lcom/sec/android/app/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, p7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .end local p0
    move-object p1, p0

    move-object p0, p5

    .end local p5           #outputStream:Ljava/io/OutputStream;
    .end local p7           #values:Landroid/content/ContentValues;
    .local p0, outputStream:Ljava/io/OutputStream;
    :goto_1
    return-object p1

    .line 252
    .restart local v0       #file:Ljava/io/File;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1
    .restart local p2
    .restart local p5       #outputStream:Ljava/io/OutputStream;
    .local p7, source:Landroid/graphics/Bitmap;
    .restart local p8
    :cond_2
    :try_start_2
    invoke-virtual {p5, p8}, Ljava/io/FileOutputStream;->write([B)V

    .line 253
    const/4 p7, 0x0

    invoke-static {v1}, Lcom/sec/android/app/camera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    .end local p7           #source:Landroid/graphics/Bitmap;
    move-result p8

    .end local p8
    aput p8, p9, p7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 255
    .end local v0           #file:Ljava/io/File;
    :catch_0
    move-exception p0

    move-object p1, p5

    .line 256
    .end local p5           #outputStream:Ljava/io/OutputStream;
    .local p0, ex:Ljava/io/FileNotFoundException;
    .local p1, outputStream:Ljava/io/OutputStream;
    :goto_2
    :try_start_3
    const-string p2, "ImageManager"

    .end local p2
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 257
    const/4 p0, 0x0

    .line 262
    .end local p0           #ex:Ljava/io/FileNotFoundException;
    invoke-static {p1}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, p1

    .end local p1           #outputStream:Ljava/io/OutputStream;
    .local v4, outputStream:Ljava/io/OutputStream;
    move-object p1, p0

    move-object p0, v4

    .end local v4           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_1

    .line 258
    .restart local v2       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p2
    .restart local p7       #source:Landroid/graphics/Bitmap;
    .restart local p8
    :catch_1
    move-exception p0

    move-object p1, v2

    .line 259
    .end local v2           #outputStream:Ljava/io/OutputStream;
    .end local p7           #source:Landroid/graphics/Bitmap;
    .end local p8
    .local p0, ex:Ljava/io/IOException;
    .local p1, outputStream:Ljava/io/OutputStream;
    :goto_3
    :try_start_4
    const-string p2, "ImageManager"

    .end local p2
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 260
    const/4 p0, 0x0

    .line 262
    .end local p0           #ex:Ljava/io/IOException;
    invoke-static {p1}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, p1

    .end local p1           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    move-object p1, p0

    move-object p0, v4

    .end local v4           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_1

    .restart local v2       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p2
    .restart local p7       #source:Landroid/graphics/Bitmap;
    .restart local p8
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    .end local v2           #outputStream:Ljava/io/OutputStream;
    .end local p1           #title:Ljava/lang/String;
    .end local p2
    .end local p7           #source:Landroid/graphics/Bitmap;
    .end local p8
    .local p0, outputStream:Ljava/io/OutputStream;
    :goto_4
    invoke-static {p0}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p1

    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #title:Ljava/lang/String;
    .restart local p2
    .restart local p5       #outputStream:Ljava/io/OutputStream;
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, p5

    .end local p5           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_4

    .end local p0           #outputStream:Ljava/io/OutputStream;
    .end local p2
    .local p1, outputStream:Ljava/io/OutputStream;
    :catchall_2
    move-exception p0

    move-object v4, p0

    move-object p0, p1

    .end local p1           #outputStream:Ljava/io/OutputStream;
    .restart local p0       #outputStream:Ljava/io/OutputStream;
    move-object p1, v4

    goto :goto_4

    .line 258
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p2
    .restart local p5       #outputStream:Ljava/io/OutputStream;
    :catch_2
    move-exception p0

    move-object p1, p5

    .end local p5           #outputStream:Ljava/io/OutputStream;
    .local p1, outputStream:Ljava/io/OutputStream;
    goto :goto_3

    .line 255
    .restart local v2       #outputStream:Ljava/io/OutputStream;
    .local p1, title:Ljava/lang/String;
    .restart local p7       #source:Landroid/graphics/Bitmap;
    .restart local p8
    :catch_3
    move-exception p0

    move-object p1, v2

    .end local v2           #outputStream:Ljava/io/OutputStream;
    .local p1, outputStream:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method private static checkFsWritable()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/DCIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 494
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 495
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v6

    .line 511
    :goto_0
    return v4

    .line 499
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, ".probe"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .local v3, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 503
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 505
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v6

    .line 506
    goto :goto_0

    .line 508
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    const/4 v4, 0x1

    goto :goto_0

    .line 510
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, ex:Ljava/io/IOException;
    move v4, v6

    .line 511
    goto :goto_0
.end method

.method public static getBucketId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 8
    .parameter "filepath"

    .prologue
    const/4 v7, -0x1

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, degree:I
    const/4 v2, 0x0

    .line 289
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 293
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 294
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 296
    .local v4, orientation:I
    if-eq v4, v7, :cond_0

    .line 298
    packed-switch v4, :pswitch_data_0

    .line 312
    .end local v4           #orientation:I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 290
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 291
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 300
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v4       #orientation:I
    :pswitch_1
    const/16 v0, 0x5a

    .line 301
    goto :goto_1

    .line 303
    :pswitch_2
    const/16 v0, 0xb4

    .line 304
    goto :goto_1

    .line 306
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 298
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getImageListParam(Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    .locals 1
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 452
    new-instance v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/sec/android/app/camera/ImageManager$ImageListParam;-><init>()V

    .line 453
    .local v0, param:Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    iput-object p0, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mLocation:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    .line 454
    iput p1, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mInclusion:I

    .line 455
    iput p2, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mSort:I

    .line 456
    iput-object p3, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 457
    return-object v0
.end method

.method public static getSingleImageListParam(Landroid/net/Uri;)Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    .locals 1
    .parameter "uri"

    .prologue
    .line 461
    new-instance v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/sec/android/app/camera/ImageManager$ImageListParam;-><init>()V

    .line 462
    .local v0, param:Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    iput-object p0, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    .line 463
    return-object v0
.end method

.method public static getTempJpegPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.tempjpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasStorage()Z
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/camera/ImageManager;->hasStorage(Z)Z

    move-result v0

    return v0
.end method

.method public static hasStorage(Z)Z
    .locals 4
    .parameter "requireWriteAccess"

    .prologue
    const/4 v3, 0x1

    .line 520
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 523
    if-eqz p0, :cond_0

    .line 524
    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->checkFsWritable()Z

    move-result v1

    .local v1, writable:Z
    move v2, v1

    .line 533
    .end local v1           #writable:Z
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 527
    goto :goto_0

    .line 529
    :cond_1
    if-nez p0, :cond_2

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 531
    goto :goto_0

    .line 533
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isImage(Lcom/sec/android/app/camera/gallery/IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 211
    invoke-interface {p0}, Lcom/sec/android/app/camera/gallery/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/ImageManager;->isImageMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isImageMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 195
    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isSingleImageMode(Ljava/lang/String;)Z
    .locals 1
    .parameter "uriString"

    .prologue
    .line 407
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 5
    .parameter "cr"
    .parameter "uri"
    .parameter "sort"

    .prologue
    const/4 v4, 0x0

    const-string v3, ""

    .line 385
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 391
    .local v1, uriString:Ljava/lang/String;
    :goto_0
    const-string v2, "content://drm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    sget-object v2, Lcom/sec/android/app/camera/ImageManager$DataLocation;->ALL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    const/4 v3, 0x2

    invoke-static {p0, v2, v3, p2, v4}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v2

    .line 401
    :goto_1
    return-object v2

    .line 385
    .end local v1           #uriString:Ljava/lang/String;
    :cond_0
    const-string v2, ""

    move-object v1, v3

    goto :goto_0

    .line 394
    .restart local v1       #uriString:Ljava/lang/String;
    :cond_1
    const-string v2, "content://media/external/video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 395
    sget-object v2, Lcom/sec/android/app/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    const/4 v3, 0x4

    invoke-static {p0, v2, v3, p2, v4}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v2

    goto :goto_1

    .line 397
    :cond_2
    invoke-static {v1}, Lcom/sec/android/app/camera/ImageManager;->isSingleImageMode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 398
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/ImageManager;->makeSingleImageList(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v2

    goto :goto_1

    .line 400
    :cond_3
    if-eqz p1, :cond_4

    const-string v2, "bucketId"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 401
    .local v0, bucketId:Ljava/lang/String;
    :goto_2
    sget-object v2, Lcom/sec/android/app/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, p2, v0}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v2

    goto :goto_1

    .line 400
    .end local v0           #bucketId:Ljava/lang/String;
    :cond_4
    const-string v2, ""

    move-object v0, v3

    goto :goto_2
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 2
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 474
    invoke-static {p1, p2, p3, p4}, Lcom/sec/android/app/camera/ImageManager;->getImageListParam(Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    move-result-object v0

    .line 476
    .local v0, param:Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$ImageListParam;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v1

    return-object v1
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$ImageListParam;)Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 9
    .parameter "cr"
    .parameter "param"

    .prologue
    .line 318
    iget-object v8, p1, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mLocation:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    .line 319
    .local v8, location:Lcom/sec/android/app/camera/ImageManager$DataLocation;
    iget v6, p1, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mInclusion:I

    .line 320
    .local v6, inclusion:I
    iget v4, p1, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mSort:I

    .line 321
    .local v4, sort:I
    iget-object v5, p1, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 322
    .local v5, bucketId:Ljava/lang/String;
    iget-object v0, p1, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    .line 323
    .local v0, singleImageUri:Landroid/net/Uri;
    iget-boolean p1, p1, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    .line 325
    .local p1, isEmptyImageList:Z
    if-nez p1, :cond_0

    if-nez p0, :cond_1

    .line 326
    :cond_0
    new-instance p0, Lcom/sec/android/app/camera/ImageManager$EmptyImageList;

    .end local p0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ImageManager$EmptyImageList;-><init>(Lcom/sec/android/app/camera/ImageManager$1;)V

    .line 379
    .end local v0           #singleImageUri:Landroid/net/Uri;
    .end local p1           #isEmptyImageList:Z
    :goto_0
    return-object p0

    .line 329
    .restart local v0       #singleImageUri:Landroid/net/Uri;
    .restart local p0
    .restart local p1       #isEmptyImageList:Z
    :cond_1
    if-eqz v0, :cond_2

    .line 330
    new-instance p1, Lcom/sec/android/app/camera/gallery/SingleImageList;

    .end local p1           #isEmptyImageList:Z
    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/camera/gallery/SingleImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object p0, p1

    goto :goto_0

    .line 334
    .restart local p1       #isEmptyImageList:Z
    :cond_2
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/sec/android/app/camera/ImageManager;->hasStorage(Z)Z

    .end local p1           #isEmptyImageList:Z
    move-result p1

    .line 337
    .local p1, haveSdCard:Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v7, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/camera/gallery/BaseImageList;>;"
    if-eqz p1, :cond_4

    sget-object p1, Lcom/sec/android/app/camera/ImageManager$DataLocation;->INTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    .end local p1           #haveSdCard:Z
    if-eq v8, p1, :cond_4

    .line 340
    and-int/lit8 p1, v6, 0x1

    if-eqz p1, :cond_3

    .line 341
    new-instance v0, Lcom/sec/android/app/camera/gallery/ImageList;

    .end local v0           #singleImageUri:Landroid/net/Uri;
    sget-object v2, Lcom/sec/android/app/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/camera/ImageManager;->THUMB_URI:Landroid/net/Uri;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/gallery/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_3
    and-int/lit8 p1, v6, 0x4

    if-eqz p1, :cond_4

    .line 345
    new-instance p1, Lcom/sec/android/app/camera/gallery/VideoList;

    sget-object v0, Lcom/sec/android/app/camera/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    invoke-direct {p1, p0, v0, v4, v5}, Lcom/sec/android/app/camera/gallery/VideoList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_4
    sget-object p1, Lcom/sec/android/app/camera/ImageManager$DataLocation;->INTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    if-eq v8, p1, :cond_5

    sget-object p1, Lcom/sec/android/app/camera/ImageManager$DataLocation;->ALL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    if-ne v8, p1, :cond_7

    .line 349
    :cond_5
    and-int/lit8 p1, v6, 0x1

    if-eqz p1, :cond_6

    .line 350
    new-instance v0, Lcom/sec/android/app/camera/gallery/ImageList;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/MediaStore$Images$Thumbnails;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/gallery/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_6
    and-int/lit8 p1, v6, 0x2

    if-eqz p1, :cond_7

    .line 356
    new-instance p1, Lcom/sec/android/app/camera/gallery/DrmImageList;

    sget-object v0, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, p0, v0, v4, v5}, Lcom/sec/android/app/camera/gallery/DrmImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 364
    .local p0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/gallery/BaseImageList;>;"
    :cond_8
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 365
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/gallery/BaseImageList;

    .line 366
    .local p1, sublist:Lcom/sec/android/app/camera/gallery/BaseImageList;
    invoke-virtual {p1}, Lcom/sec/android/app/camera/gallery/BaseImageList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 367
    invoke-virtual {p1}, Lcom/sec/android/app/camera/gallery/BaseImageList;->close()V

    .line 368
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 372
    .end local p1           #sublist:Lcom/sec/android/app/camera/gallery/BaseImageList;
    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p0

    .end local p0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/gallery/BaseImageList;>;"
    const/4 p1, 0x1

    if-ne p0, p1, :cond_a

    .line 373
    const/4 p0, 0x0

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/gallery/BaseImageList;

    .line 374
    .local p0, list:Lcom/sec/android/app/camera/gallery/BaseImageList;
    goto/16 :goto_0

    .line 377
    .end local p0           #list:Lcom/sec/android/app/camera/gallery/BaseImageList;
    :cond_a
    new-instance p0, Lcom/sec/android/app/camera/gallery/ImageListUber;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-direct {p0, p1, v4}, Lcom/sec/android/app/camera/gallery/ImageListUber;-><init>([Lcom/sec/android/app/camera/gallery/IImageList;I)V

    .line 379
    .local p0, uber:Lcom/sec/android/app/camera/gallery/ImageListUber;
    goto/16 :goto_0
.end method

.method public static makeSingleImageList(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 1
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 484
    invoke-static {p1}, Lcom/sec/android/app/camera/ImageManager;->getSingleImageListParam(Landroid/net/Uri;)Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$ImageListParam;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v0

    return-object v0
.end method
