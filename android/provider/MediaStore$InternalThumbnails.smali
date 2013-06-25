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
    .line 273
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    .line 275
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    .line 269
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 312
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cancel"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 313
    const-string/jumbo v1, "orig_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 314
    const-string v1, "group_id"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 317
    :try_start_0
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 320
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_0
    return-void

    .line 319
    :catchall_0
    move-exception v0

    .line 320
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 321
    :cond_1
    throw v0
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v7, "couldn\'t open thumbnail "

    const-string v6, "MediaStore"

    const-string v5, "; "

    .line 279
    .line 282
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 283
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 284
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 285
    :try_start_1
    const-string/jumbo v1, "r"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 287
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    .line 286
    invoke-static {v2, v3, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 288
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4

    move-object v0, v2

    .line 297
    :goto_0
    return-object v0

    .line 289
    :catch_0
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    .line 290
    :goto_1
    const-string v3, "MediaStore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "couldn\'t open thumbnail "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_0

    .line 291
    :catch_1
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    .line 292
    :goto_2
    const-string v3, "MediaStore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "couldn\'t open thumbnail "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_0

    .line 293
    :catch_2
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    .line 294
    :goto_3
    const-string v3, "MediaStore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to allocate memory for thumbnail "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_0

    .line 293
    :catch_3
    move-exception v1

    move-object v2, v4

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    .line 291
    :catch_5
    move-exception v1

    move-object v2, v4

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_2

    :catch_6
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    .line 289
    :catch_7
    move-exception v1

    move-object v2, v4

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_1

    :catch_8
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_1
.end method

.method static getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    const/4 v10, 0x0

    .line 345
    invoke-static/range {p7 .. p7}, Landroid/media/MiniThumbFile;->instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;

    move-result-object v11

    .line 346
    move-object v0, v11

    move-wide v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v4

    .line 347
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_9

    .line 348
    const/4 v4, 0x3

    move/from16 v0, p5

    move v1, v4

    if-ne v0, v1, :cond_2

    .line 349
    sget-object p0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter p0

    .line 350
    :try_start_0
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez p3, :cond_0

    .line 351
    const/16 p3, 0x2710

    move/from16 v0, p3

    new-array v0, v0, [B

    move-object/from16 p3, v0

    sput-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 353
    :cond_0
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object v0, v11

    move-wide v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 354
    sget-object p1, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/16 p2, 0x0

    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 p3, v0

    invoke-static/range {p1 .. p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 355
    if-nez p1, :cond_1

    .line 356
    const-string p2, "MediaStore"

    const-string p3, "couldn\'t decode byte array."

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1
    :goto_0
    monitor-exit p0

    move-object p0, p1

    .line 434
    :goto_1
    return-object p0

    .line 349
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 361
    :cond_2
    const/4 v4, 0x1

    move/from16 v0, p5

    move v1, v4

    if-ne v0, v1, :cond_9

    .line 362
    if-eqz p8, :cond_4

    const-string/jumbo v4, "video_id="

    .line 363
    :goto_2
    const/4 v12, 0x0

    .line 365
    :try_start_1
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-wide v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object/from16 v5, p7

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 366
    if-eqz v4, :cond_6

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 367
    move-object v0, v4

    move-object/from16 v1, p7

    move-object v2, p0

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    move-result-object v5

    .line 368
    if-eqz v5, :cond_7

    .line 373
    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object p0, v5

    .line 369
    goto :goto_1

    .line 362
    :cond_4
    const-string v4, "image_id="

    goto :goto_2

    .line 372
    :catchall_1
    move-exception p0

    move-object p1, v12

    .line 373
    :goto_3
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 374
    :cond_5
    throw p0

    :cond_6
    move-object v5, v10

    .line 373
    :cond_7
    if-eqz v4, :cond_8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v10, v5

    .line 378
    :cond_9
    const/4 v12, 0x0

    .line 380
    :try_start_3
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "blocking"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 381
    const-string/jumbo v5, "orig_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 382
    const-string v5, "group_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 383
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object p3

    .line 385
    if-nez p3, :cond_b

    .line 432
    if-eqz p3, :cond_a

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 385
    :cond_a
    const/4 p0, 0x0

    goto/16 :goto_1

    .line 388
    :cond_b
    const/16 p4, 0x3

    move/from16 v0, p5

    move/from16 v1, p4

    if-ne v0, v1, :cond_10

    .line 389
    :try_start_4
    sget-object p4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 390
    :try_start_5
    sget-object p6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez p6, :cond_c

    .line 391
    const/16 p6, 0x2710

    move/from16 v0, p6

    new-array v0, v0, [B

    move-object/from16 p6, v0

    sput-object p6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 393
    :cond_c
    sget-object p6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object v0, v11

    move-wide v1, p1

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object p6

    if-eqz p6, :cond_19

    .line 394
    sget-object p6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v5, v5

    move-object/from16 v0, p6

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object p6

    .line 395
    if-nez p6, :cond_d

    .line 396
    :try_start_6
    const-string v4, "MediaStore"

    const-string v5, "couldn\'t decode byte array."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_d
    :goto_4
    monitor-exit p4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move-object/from16 p4, p6

    .line 409
    :goto_5
    if-nez p4, :cond_17

    .line 410
    :try_start_7
    const-string p6, "MediaStore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Create the thumbnail in memory: origId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-wide v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 411
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

    .line 410
    move-object/from16 v0, p6

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p6

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p6

    move-object v1, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 414
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "thumbnails"

    const-string p6, "media"

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 412
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 416
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 417
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object p0

    .line 418
    if-eqz p0, :cond_e

    :try_start_8
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_4

    move-result p1

    if-nez p1, :cond_12

    .line 432
    :cond_e
    if-eqz p0, :cond_f

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 419
    :cond_f
    const/4 p0, 0x0

    goto/16 :goto_1

    .line 389
    :catchall_2
    move-exception p0

    move-object p1, v10

    :goto_6
    :try_start_9
    monitor-exit p4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0

    .line 429
    :catch_0
    move-exception p0

    move-object/from16 p2, p1

    move-object/from16 p1, p3

    .line 430
    :goto_7
    :try_start_b
    const-string p3, "MediaStore"

    move-object/from16 v0, p3

    move-object v1, p0

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 432
    if-eqz p1, :cond_16

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-object/from16 p0, p2

    goto/16 :goto_1

    .line 400
    :cond_10
    const/16 p4, 0x1

    move/from16 v0, p5

    move/from16 v1, p4

    if-ne v0, v1, :cond_11

    .line 401
    :try_start_c
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p4

    if-eqz p4, :cond_18

    .line 402
    move-object/from16 v0, p3

    move-object/from16 v1, p7

    move-object v2, p0

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p4

    goto/16 :goto_5

    .line 405
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unsupported kind: "

    invoke-direct/range {p1 .. p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_1

    .line 429
    :catch_1
    move-exception p0

    move-object/from16 p1, p3

    move-object/from16 p2, v10

    goto :goto_7

    .line 421
    :cond_12
    const/4 p1, 0x1

    :try_start_d
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 423
    if-eqz p8, :cond_14

    .line 424
    move-object v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_4

    move-result-object p1

    .line 432
    :goto_8
    if-eqz p0, :cond_13

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_13
    move-object p0, p1

    goto/16 :goto_1

    .line 426
    :cond_14
    :try_start_e
    move-object v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_4

    move-result-object p1

    goto :goto_8

    .line 431
    :catchall_3
    move-exception p0

    move-object p1, v12

    .line 432
    :goto_9
    if-eqz p1, :cond_15

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 433
    :cond_15
    throw p0

    .line 431
    :catchall_4
    move-exception p0

    move-object/from16 p1, p3

    goto :goto_9

    :catchall_5
    move-exception p1

    move-object v13, p1

    move-object p1, p0

    move-object p0, v13

    goto :goto_9

    :catchall_6
    move-exception p0

    goto :goto_9

    .line 429
    :catch_2
    move-exception p0

    move-object p1, v12

    move-object/from16 p2, v10

    goto :goto_7

    :catch_3
    move-exception p0

    move-object/from16 p1, p3

    move-object/from16 p2, p4

    goto/16 :goto_7

    :catch_4
    move-exception p1

    move-object/from16 p2, p4

    move-object v13, p0

    move-object p0, p1

    move-object p1, v13

    goto/16 :goto_7

    .line 389
    :catchall_7
    move-exception p0

    move-object/from16 p1, p6

    goto/16 :goto_6

    :catchall_8
    move-exception p0

    goto/16 :goto_6

    .line 372
    :catchall_9
    move-exception p0

    move-object p1, v4

    goto/16 :goto_3

    :cond_16
    move-object/from16 p0, p2

    goto/16 :goto_1

    :cond_17
    move-object/from16 p0, p3

    move-object/from16 p1, p4

    goto :goto_8

    :cond_18
    move-object/from16 p4, v10

    goto/16 :goto_5

    :cond_19
    move-object/from16 p6, v10

    goto/16 :goto_4

    :cond_1a
    move-object p1, v10

    goto/16 :goto_0
.end method
