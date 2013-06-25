.class Landroid/provider/MediaStore$InternalThumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalThumbnails"
.end annotation


# static fields
.field static final DEFAULT_GROUP_ID:I = 0x0

.field private static final FULL_SCREEN_KIND:I = 0x2

.field private static final MICRO_KIND:I = 0x3

.field private static final MINI_KIND:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static sThumbBuf:[B

.field private static final sThumbBufLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 266
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    .line 268
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V
    .locals 7
    .parameter "cr"
    .parameter "origId"
    .parameter "baseUri"
    .parameter "groupId"

    .prologue
    .line 305
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "cancel"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "orig_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "group_id"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 308
    .local v1, cancelUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 310
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 313
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_0
    return-void

    .line 313
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "c"
    .parameter "baseUri"
    .parameter "cr"
    .parameter "options"

    .prologue
    const-string v11, "couldn\'t open thumbnail "

    const-string v10, "MediaStore"

    const-string v9, "; "

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 275
    .local v6, thumbUri:Landroid/net/Uri;
    const/4 v7, 0x0

    :try_start_0
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 276
    .local v4, thumbId:J
    const/4 v7, 0x1

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, filePath:Ljava/lang/String;
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 278
    const-string/jumbo v7, "r"

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 279
    .local v3, pfdInput:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 281
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 290
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #pfdInput:Landroid/os/ParcelFileDescriptor;
    .end local v4           #thumbId:J
    :goto_0
    return-object v0

    .line 282
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 283
    .local v1, ex:Ljava/io/FileNotFoundException;
    const-string v7, "MediaStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t open thumbnail "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 285
    .local v1, ex:Ljava/io/IOException;
    const-string v7, "MediaStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t open thumbnail "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    .end local v1           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 287
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    const-string v7, "MediaStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to allocate memory for thumbnail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 20
    .parameter "cr"
    .parameter "origId"
    .parameter "groupId"
    .parameter "kind"
    .parameter "options"
    .parameter "baseUri"
    .parameter "isVideo"

    .prologue
    .line 333
    const/4 v12, 0x0

    .line 334
    .local v12, bitmap:Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    .line 337
    .local v14, filePath:Ljava/lang/String;
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "thumbnails"

    const-string v6, "media"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 345
    .local v5, thumbnailUri:Landroid/net/Uri;
    invoke-static/range {p7 .. p7}, Landroid/media/MiniThumbFile;->instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;

    move-result-object v13

    .line 346
    .local v13, thumbFile:Landroid/media/MiniThumbFile;
    move-object v0, v13

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v15

    .line 354
    .local v15, magic:J
    const-wide/16 v17, 0x0

    .line 355
    .local v17, mini_thumb_magic:J
    const/4 v10, 0x0

    .line 357
    .local v10, c0:Landroid/database/Cursor;
    const/4 v4, 0x1

    :try_start_0
    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "mini_thumb_magic"

    aput-object v7, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 358
    .end local v10           #c0:Landroid/database/Cursor;
    .local v4, c0:Landroid/database/Cursor;
    if-eqz v4, :cond_21

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    .end local v5           #thumbnailUri:Landroid/net/Uri;
    if-eqz v5, :cond_21

    .line 359
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-wide v5

    .line 364
    .end local v17           #mini_thumb_magic:J
    .local v5, mini_thumb_magic:J
    :goto_0
    if-eqz v4, :cond_0

    .line 365
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 368
    :cond_0
    :goto_1
    const-wide/16 v7, -0x1

    cmp-long v4, v5, v7

    if-nez v4, :cond_2

    .end local v4           #c0:Landroid/database/Cursor;
    const/16 p0, 0x0

    move-object/from16 p1, v14

    .end local v14           #filePath:Ljava/lang/String;
    .local p1, filePath:Ljava/lang/String;
    move-object/from16 p2, p0

    move-object/from16 p0, v12

    .line 463
    .end local v5           #mini_thumb_magic:J
    .end local v12           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #thumbFile:Landroid/media/MiniThumbFile;
    .end local p3
    .end local p6
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_2
    return-object p2

    .line 361
    .local v5, thumbnailUri:Landroid/net/Uri;
    .restart local v10       #c0:Landroid/database/Cursor;
    .restart local v12       #bitmap:Landroid/graphics/Bitmap;
    .restart local v13       #thumbFile:Landroid/media/MiniThumbFile;
    .restart local v14       #filePath:Ljava/lang/String;
    .restart local v17       #mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3
    .restart local p6
    :catch_0
    move-exception v4

    move-object v5, v4

    move-object v4, v10

    .line 362
    .end local v10           #c0:Landroid/database/Cursor;
    .restart local v4       #c0:Landroid/database/Cursor;
    .local v5, ex:Landroid/database/sqlite/SQLiteException;
    :goto_3
    :try_start_2
    const-string v6, "MediaStore"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_f

    .line 364
    if-eqz v4, :cond_20

    .line 365
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-wide/from16 v5, v17

    .end local v17           #mini_thumb_magic:J
    .local v5, mini_thumb_magic:J
    goto :goto_1

    .line 364
    .end local v4           #c0:Landroid/database/Cursor;
    .local v5, thumbnailUri:Landroid/net/Uri;
    .restart local v10       #c0:Landroid/database/Cursor;
    .restart local v17       #mini_thumb_magic:J
    :catchall_0
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v10

    .end local v5           #thumbnailUri:Landroid/net/Uri;
    .end local v10           #c0:Landroid/database/Cursor;
    .end local p1           #origId:J
    .local p0, c0:Landroid/database/Cursor;
    :goto_4
    if-eqz p0, :cond_1

    .line 365
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p1

    .line 371
    .end local v17           #mini_thumb_magic:J
    .local v5, mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #origId:J
    :cond_2
    const-wide/16 v7, 0x0

    cmp-long v4, v15, v7

    if-eqz v4, :cond_1e

    cmp-long v4, v15, v5

    if-nez v4, :cond_1e

    .line 375
    const/4 v4, 0x3

    move/from16 v0, p5

    move v1, v4

    if-ne v0, v1, :cond_5

    .line 376
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    .end local p3
    monitor-enter p3

    .line 377
    :try_start_3
    sget-object p0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .end local p0           #cr:Landroid/content/ContentResolver;
    if-nez p0, :cond_3

    .line 378
    const/16 p0, 0x2710

    move/from16 v0, p0

    new-array v0, v0, [B

    move-object/from16 p0, v0

    sput-object p0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 380
    :cond_3
    sget-object p0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object v0, v13

    move-wide/from16 v1, p1

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 381
    sget-object p0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/16 p1, 0x0

    sget-object p2, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .end local p1           #origId:J
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 p2, v0

    invoke-static/range {p0 .. p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object p0

    .line 382
    .end local v12           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    if-nez p0, :cond_4

    .line 383
    :try_start_4
    const-string p1, "MediaStore"

    const-string p2, "couldn\'t decode byte array."

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_4
    :goto_5
    monitor-exit p3

    move-object/from16 p1, v14

    .end local v14           #filePath:Ljava/lang/String;
    .local p1, filePath:Ljava/lang/String;
    move-object/from16 p2, p0

    .line 387
    goto :goto_2

    .line 386
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #filePath:Ljava/lang/String;
    .restart local v12       #bitmap:Landroid/graphics/Bitmap;
    .restart local v14       #filePath:Ljava/lang/String;
    :catchall_1
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v12

    .end local v12           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    :goto_6
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    throw p1

    .line 388
    .restart local v12       #bitmap:Landroid/graphics/Bitmap;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3
    :cond_5
    const/4 v4, 0x1

    move/from16 v0, p5

    move v1, v4

    if-ne v0, v1, :cond_1e

    .line 389
    if-eqz p8, :cond_7

    const-string/jumbo v4, "video_id="

    move-object v5, v4

    .line 390
    .local v5, column:Ljava/lang/String;
    :goto_7
    const/4 v4, 0x0

    .line 392
    .local v4, c:Landroid/database/Cursor;
    :try_start_5
    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #column:Ljava/lang/String;
    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p7

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v5

    .line 393
    .end local v4           #c:Landroid/database/Cursor;
    .local v5, c:Landroid/database/Cursor;
    if-eqz v5, :cond_8

    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 394
    move-object v0, v5

    move-object/from16 v1, p7

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_d

    move-result-object v4

    .line 395
    .end local v12           #bitmap:Landroid/graphics/Bitmap;
    .local v4, bitmap:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_9

    .line 400
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object/from16 p1, v14

    .end local v14           #filePath:Ljava/lang/String;
    .local p1, filePath:Ljava/lang/String;
    move-object/from16 p0, v4

    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p2, v4

    goto/16 :goto_2

    .line 389
    .local v5, mini_thumb_magic:J
    .restart local v12       #bitmap:Landroid/graphics/Bitmap;
    .restart local v14       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    :cond_7
    const-string v4, "image_id="

    move-object v5, v4

    goto :goto_7

    .local v5, c:Landroid/database/Cursor;
    :cond_8
    move-object v4, v12

    .line 400
    .end local v12           #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    :cond_9
    if-eqz v5, :cond_a

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 405
    .end local v5           #c:Landroid/database/Cursor;
    :cond_a
    :goto_8
    const/4 v5, 0x0

    .line 408
    .restart local v5       #c:Landroid/database/Cursor;
    :try_start_7
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "blocking"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string/jumbo v7, "orig_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "group_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .end local p3
    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 411
    .local v7, blockingUri:Landroid/net/Uri;
    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object p4

    .line 413
    .end local v5           #c:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    if-nez p4, :cond_d

    const/16 p0, 0x0

    .line 461
    .end local p0           #cr:Landroid/content/ContentResolver;
    if-eqz p4, :cond_b

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    :cond_b
    move-object/from16 p1, v14

    .end local v14           #filePath:Ljava/lang/String;
    .local p1, filePath:Ljava/lang/String;
    move-object/from16 p2, p0

    move-object/from16 p0, v4

    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 400
    .end local v7           #blockingUri:Landroid/net/Uri;
    .end local p4           #c:Landroid/database/Cursor;
    .local v4, c:Landroid/database/Cursor;
    .restart local v12       #bitmap:Landroid/graphics/Bitmap;
    .restart local v14       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3
    :catchall_2
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v4

    .end local v4           #c:Landroid/database/Cursor;
    .end local p1           #origId:J
    .local p0, c:Landroid/database/Cursor;
    :goto_9
    if-eqz p0, :cond_c

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_c
    throw p1

    .line 416
    .end local v12           #bitmap:Landroid/graphics/Bitmap;
    .end local p3
    .local v4, bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #blockingUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    :cond_d
    const/16 p3, 0x3

    move/from16 v0, p5

    move/from16 v1, p3

    if-ne v0, v1, :cond_14

    .line 417
    :try_start_8
    sget-object p6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    .end local p6
    monitor-enter p6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_2

    .line 419
    :try_start_9
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez p3, :cond_e

    .line 420
    const/16 p3, 0x2710

    move/from16 v0, p3

    new-array v0, v0, [B

    move-object/from16 p3, v0

    sput-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 422
    :cond_e
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object v0, v13

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object p3

    if-eqz p3, :cond_1d

    .line 423
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v5, 0x0

    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v6, v6

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-object p3

    .line 424
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    if-nez p3, :cond_f

    .line 425
    :try_start_a
    const-string v4, "MediaStore"

    const-string v5, "couldn\'t decode byte array."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_f
    :goto_a
    monitor-exit p6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    .line 438
    :goto_b
    if-nez p3, :cond_1b

    .line 439
    :try_start_b
    const-string p6, "MediaStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create the thumbnail in memory: origId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", kind="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isVideo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p6

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .end local p1           #origId:J
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "thumbnails"

    const-string p6, "media"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 444
    .local v9, uri:Landroid/net/Uri;
    if-nez v14, :cond_1a

    .line 445
    if-eqz p4, :cond_10

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    .line 446
    :cond_10
    sget-object v10, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_4

    .end local v13           #thumbFile:Landroid/media/MiniThumbFile;
    move-result-object p0

    .line 447
    .end local p4           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    if-eqz p0, :cond_11

    :try_start_c
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_5

    move-result p1

    if-nez p1, :cond_16

    .line 448
    :cond_11
    const/16 p1, 0x0

    .line 461
    if-eqz p0, :cond_12

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_12
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p2, p1

    move-object/from16 p1, v14

    .end local v14           #filePath:Ljava/lang/String;
    .local p1, filePath:Ljava/lang/String;
    goto/16 :goto_2

    .line 428
    .end local v9           #uri:Landroid/net/Uri;
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    .restart local v13       #thumbFile:Landroid/media/MiniThumbFile;
    .restart local v14       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    :catchall_3
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v4

    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #origId:J
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_c
    :try_start_d
    monitor-exit p6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    :try_start_e
    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_1

    .line 458
    :catch_1
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p3, v14

    .end local v14           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-object/from16 p1, p4

    .line 459
    .end local v7           #blockingUri:Landroid/net/Uri;
    .end local v13           #thumbFile:Landroid/media/MiniThumbFile;
    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    .local p2, ex:Landroid/database/sqlite/SQLiteException;
    :goto_d
    :try_start_f
    const-string p4, "MediaStore"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 461
    if-eqz p1, :cond_19

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    move-object/from16 p2, p3

    .end local p3           #filePath:Ljava/lang/String;
    .local p2, filePath:Ljava/lang/String;
    :cond_13
    :goto_e
    move-object/from16 p1, p2

    .end local p2           #filePath:Ljava/lang/String;
    .local p1, filePath:Ljava/lang/String;
    move-object/from16 p2, p0

    .line 463
    goto/16 :goto_2

    .line 429
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #blockingUri:Landroid/net/Uri;
    .restart local v13       #thumbFile:Landroid/media/MiniThumbFile;
    .restart local v14       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    .restart local p6
    :cond_14
    const/16 p3, 0x1

    move/from16 v0, p5

    move/from16 v1, p3

    if-ne v0, v1, :cond_15

    .line 430
    :try_start_10
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_1c

    .line 431
    move-object/from16 v0, p4

    move-object/from16 v1, p7

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_b

    .line 434
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #cr:Landroid/content/ContentResolver;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #origId:J
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported kind: "

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_2

    .line 458
    .end local p6
    :catch_2
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p3, v14

    .end local v14           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-object/from16 p0, v4

    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_d

    .line 450
    .end local v13           #thumbFile:Landroid/media/MiniThumbFile;
    .end local p1           #c:Landroid/database/Cursor;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v14       #filePath:Ljava/lang/String;
    .local p0, c:Landroid/database/Cursor;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    :cond_16
    const/16 p1, 0x1

    :try_start_11
    invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_5

    move-result-object p1

    .end local v14           #filePath:Ljava/lang/String;
    .local p1, filePath:Ljava/lang/String;
    move-object/from16 p2, p1

    .end local p1           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 p1, p0

    .line 452
    .end local p0           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    :goto_f
    if-eqz p8, :cond_17

    .line 453
    :try_start_12
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_6

    move-result-object p0

    .line 461
    .end local v9           #uri:Landroid/net/Uri;
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_10
    if-eqz p1, :cond_13

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    goto :goto_e

    .line 455
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    :cond_17
    :try_start_13
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_6

    move-result-object p0

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_10

    .line 461
    .end local v7           #blockingUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #c:Landroid/database/Cursor;
    .restart local v13       #thumbFile:Landroid/media/MiniThumbFile;
    .restart local v14       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p6
    :catchall_4
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, v5

    .end local v5           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v14

    .end local v14           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 p0, v4

    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #thumbFile:Landroid/media/MiniThumbFile;
    .end local p6
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_11
    if-eqz p1, :cond_18

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    :cond_18
    throw p3

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #blockingUri:Landroid/net/Uri;
    .restart local v13       #thumbFile:Landroid/media/MiniThumbFile;
    .restart local v14       #filePath:Ljava/lang/String;
    .restart local p4       #c:Landroid/database/Cursor;
    :catchall_5
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, v14

    .end local v14           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 p0, v4

    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_11

    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v14       #filePath:Ljava/lang/String;
    .restart local p4       #c:Landroid/database/Cursor;
    :catchall_6
    move-exception p1

    move-object/from16 p3, p1

    move-object/from16 p2, v14

    .end local v14           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    goto :goto_11

    .end local v13           #thumbFile:Landroid/media/MiniThumbFile;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v14       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    .restart local p4       #c:Landroid/database/Cursor;
    :catchall_7
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, v14

    .end local v14           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 v19, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v19

    goto :goto_11

    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v14       #filePath:Ljava/lang/String;
    .local p0, c:Landroid/database/Cursor;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    :catchall_8
    move-exception p1

    move-object/from16 p2, v14

    .end local v14           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 v19, p0

    .end local p0           #c:Landroid/database/Cursor;
    .local v19, c:Landroid/database/Cursor;
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, p1

    move-object/from16 p1, v19

    .end local v19           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    goto :goto_11

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    :catchall_9
    move-exception p0

    move-object/from16 v19, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v19

    goto :goto_11

    .end local v7           #blockingUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .local p2, ex:Landroid/database/sqlite/SQLiteException;
    .local p3, filePath:Ljava/lang/String;
    :catchall_a
    move-exception p2

    move-object/from16 v19, p2

    move-object/from16 p2, p3

    .end local p3           #filePath:Ljava/lang/String;
    .local p2, filePath:Ljava/lang/String;
    move-object/from16 p3, v19

    goto :goto_11

    .line 458
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #c:Landroid/database/Cursor;
    .restart local v13       #thumbFile:Landroid/media/MiniThumbFile;
    .restart local v14       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p6
    :catch_3
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, v5

    .end local v5           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p3, v14

    .end local v14           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-object/from16 p0, v4

    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_d

    .end local v13           #thumbFile:Landroid/media/MiniThumbFile;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p6
    .restart local v7       #blockingUri:Landroid/net/Uri;
    .restart local v14       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .restart local p4       #c:Landroid/database/Cursor;
    :catch_4
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v14

    .end local v14           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    goto/16 :goto_d

    .end local p1           #c:Landroid/database/Cursor;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v14       #filePath:Ljava/lang/String;
    .local p0, c:Landroid/database/Cursor;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    :catch_5
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p1, p0

    .end local p0           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v14

    .end local v14           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    goto/16 :goto_d

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p2       #filePath:Ljava/lang/String;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    :catch_6
    move-exception p0

    move-object/from16 v19, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, p2

    .end local p2           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-object/from16 p2, v19

    goto/16 :goto_d

    .line 428
    .end local v9           #uri:Landroid/net/Uri;
    .restart local v13       #thumbFile:Landroid/media/MiniThumbFile;
    .restart local v14       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .restart local p4       #c:Landroid/database/Cursor;
    :catchall_b
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_c

    .end local p1           #origId:J
    :catchall_c
    move-exception p1

    goto/16 :goto_c

    .line 400
    .end local v7           #blockingUri:Landroid/net/Uri;
    .end local p4           #c:Landroid/database/Cursor;
    .restart local v5       #c:Landroid/database/Cursor;
    .restart local v12       #bitmap:Landroid/graphics/Bitmap;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #origId:J
    .local p3, groupId:J
    .restart local p6
    :catchall_d
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v5

    .end local v5           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_9

    .line 386
    .end local v12           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #origId:J
    .end local p3           #groupId:J
    .local v5, mini_thumb_magic:J
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :catchall_e
    move-exception p1

    goto/16 :goto_6

    .line 364
    .end local v5           #mini_thumb_magic:J
    .local v4, c0:Landroid/database/Cursor;
    .restart local v12       #bitmap:Landroid/graphics/Bitmap;
    .restart local v17       #mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #origId:J
    .restart local p3       #groupId:J
    :catchall_f
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v4

    .end local v4           #c0:Landroid/database/Cursor;
    .local p0, c0:Landroid/database/Cursor;
    goto/16 :goto_4

    .line 361
    .restart local v4       #c0:Landroid/database/Cursor;
    .local p0, cr:Landroid/content/ContentResolver;
    :catch_7
    move-exception v5

    goto/16 :goto_3

    .end local v4           #c0:Landroid/database/Cursor;
    .end local v12           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #thumbFile:Landroid/media/MiniThumbFile;
    .end local v14           #filePath:Ljava/lang/String;
    .end local v17           #mini_thumb_magic:J
    .end local p6
    .local p0, bitmap:Landroid/graphics/Bitmap;
    .local p1, c:Landroid/database/Cursor;
    .local p2, ex:Landroid/database/sqlite/SQLiteException;
    .local p3, filePath:Ljava/lang/String;
    :cond_19
    move-object/from16 p2, p3

    .end local p3           #filePath:Ljava/lang/String;
    .local p2, filePath:Ljava/lang/String;
    goto/16 :goto_e

    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v7       #blockingUri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v13       #thumbFile:Landroid/media/MiniThumbFile;
    .restart local v14       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .restart local p4       #c:Landroid/database/Cursor;
    :cond_1a
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, v14

    .end local v14           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    goto/16 :goto_f

    .end local v9           #uri:Landroid/net/Uri;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v14       #filePath:Ljava/lang/String;
    .local p1, origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    :cond_1b
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v14

    .end local v14           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_10

    .end local p2           #filePath:Ljava/lang/String;
    .local v4, bitmap:Landroid/graphics/Bitmap;
    .restart local v14       #filePath:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    .restart local p6
    :cond_1c
    move-object/from16 p3, v4

    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_b

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .end local p6
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    :cond_1d
    move-object/from16 p3, v4

    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_a

    .end local v7           #blockingUri:Landroid/net/Uri;
    .end local p4           #c:Landroid/database/Cursor;
    .restart local v5       #mini_thumb_magic:J
    .restart local v12       #bitmap:Landroid/graphics/Bitmap;
    .local p3, groupId:J
    .restart local p6
    :cond_1e
    move-object v4, v12

    .end local v12           #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_8

    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local p0           #cr:Landroid/content/ContentResolver;
    .end local p3           #groupId:J
    .restart local v12       #bitmap:Landroid/graphics/Bitmap;
    :cond_1f
    move-object/from16 p0, v12

    .end local v12           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_5

    .local v4, c0:Landroid/database/Cursor;
    .local v5, ex:Landroid/database/sqlite/SQLiteException;
    .restart local v12       #bitmap:Landroid/graphics/Bitmap;
    .restart local v17       #mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #groupId:J
    :cond_20
    move-wide/from16 v5, v17

    .end local v17           #mini_thumb_magic:J
    .local v5, mini_thumb_magic:J
    goto/16 :goto_1

    .end local v5           #mini_thumb_magic:J
    .restart local v17       #mini_thumb_magic:J
    :cond_21
    move-wide/from16 v5, v17

    .end local v17           #mini_thumb_magic:J
    .restart local v5       #mini_thumb_magic:J
    goto/16 :goto_0
.end method
