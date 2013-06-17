.class public Lcom/sec/android/app/camera/gallery/VideoList;
.super Lcom/sec/android/app/camera/gallery/BaseImageList;
.source "VideoList.java"


# static fields
.field private static final VIDEO_PROJECTION:[Ljava/lang/String;

.field private static final WHERE_CLAUSE:Ljava/lang/String;

.field private static final WHERE_CLAUSE_WITH_BUCKET_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mini_thumb_magic"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/gallery/VideoList;->VIDEO_PROJECTION:[Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%DCIM/Camera/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/gallery/VideoList;->WHERE_CLAUSE:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/app/camera/gallery/VideoList;->WHERE_CLAUSE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bucket_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/gallery/VideoList;->WHERE_CLAUSE_WITH_BUCKET_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 0
    .parameter "resolver"
    .parameter "uri"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/gallery/BaseImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    .line 81
    return-void
.end method


# virtual methods
.method protected createCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/camera/gallery/VideoList;->VIDEO_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/VideoList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/VideoList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/VideoList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 124
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method protected getImageId(Landroid/database/Cursor;)J
    .locals 2
    .parameter "cursor"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected loadImageFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/camera/gallery/BaseImage;
    .locals 18
    .parameter "cursor"

    .prologue
    .line 62
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 63
    .local v6, id:J
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 64
    .local v10, dataPath:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 65
    .local v14, dateTaken:J
    const-wide/16 v3, 0x0

    cmp-long v3, v14, v3

    if-nez v3, :cond_0

    .line 66
    const/4 v3, 0x7

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v8, 0x3e8

    mul-long v14, v3, v8

    .line 68
    :cond_0
    const/4 v3, 0x3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 69
    .local v16, title:Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 70
    .local v17, displayName:Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 71
    .local v11, miniThumbMagic:J
    const/4 v3, 0x6

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 73
    .local v13, mimeType:Ljava/lang/String;
    new-instance v3, Lcom/sec/android/app/camera/gallery/VideoObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/gallery/VideoList;->contentUri(J)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v17}, Lcom/sec/android/app/camera/gallery/VideoObject;-><init>(Lcom/sec/android/app/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mBucketId:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/gallery/VideoList;->WHERE_CLAUSE:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/gallery/VideoList;->WHERE_CLAUSE_WITH_BUCKET_ID:Ljava/lang/String;

    goto :goto_0
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method
