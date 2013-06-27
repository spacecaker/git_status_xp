.class Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;
.super Landroid/database/AbstractCursor;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingCursor"
.end annotation


# instance fields
.field private mCols:[Ljava/lang/String;

.field private mCurPos:I

.field private mCurrentPlaylistCursor:Landroid/database/Cursor;

.field private mCursorIdxs:[J

.field private mNowPlaying:[J

.field private mService:Lcom/android/music/IMediaPlaybackService;

.field private mSize:I

.field final synthetic this$0:Lcom/android/music/TrackBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/IMediaPlaybackService;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "service"
    .parameter "cols"

    .prologue
    .line 1508
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 1509
    iput-object p3, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCols:[Ljava/lang/String;

    .line 1510
    iput-object p2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 1511
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 1512
    return-void
.end method

.method private makeNowPlayingCursor()V
    .locals 15

    .prologue
    .line 1514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 1516
    :try_start_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getQueue()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1520
    :goto_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    array-length v0, v0

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    .line 1521
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-nez v0, :cond_1

    .line 1587
    :cond_0
    :goto_1
    return-void

    .line 1517
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 1518
    .local v8, ex:Landroid/os/RemoteException;
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    goto :goto_0

    .line 1525
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1526
    .local v14, where:Ljava/lang/StringBuilder;
    const-string v0, "_id IN ("

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-ge v9, v0, :cond_3

    .line 1528
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    aget-wide v0, v0, v9

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1529
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v9, v0, :cond_2

    .line 1530
    const-string v0, ","

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1533
    :cond_3
    const-string v0, ")"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->this$0:Lcom/android/music/TrackBrowserActivity;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCols:[Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 1539
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_4

    .line 1540
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    goto :goto_1

    .line 1544
    :cond_4
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1545
    .local v11, size:I
    new-array v0, v11, [J

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[J

    .line 1546
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1550
    :try_start_1
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1551
    .local v6, colidx:I
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_5

    .line 1552
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[J

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v0, v9

    .line 1553
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1551
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1555
    .end local v6           #colidx:I
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 1556
    .local v8, ex:Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 1559
    .end local v8           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v6       #colidx:I
    :cond_5
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1560
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurPos:I

    .line 1567
    const/4 v10, 0x0

    .line 1568
    .local v10, removed:I
    :try_start_2
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    array-length v0, v0

    const/4 v1, 0x1

    sub-int v9, v0, v1

    :goto_4
    if-ltz v9, :cond_7

    .line 1569
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    aget-wide v12, v0, v9

    .line 1570
    .local v12, trackid:J
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[J

    invoke-static {v0, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v7

    .line 1571
    .local v7, crsridx:I
    if-gez v7, :cond_6

    .line 1573
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0, v12, v13}, Lcom/android/music/IMediaPlaybackService;->removeTrack(J)I

    move-result v0

    add-int/2addr v10, v0

    .line 1568
    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 1576
    .end local v7           #crsridx:I
    .end local v12           #trackid:J
    :cond_7
    if-lez v10, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getQueue()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    .line 1578
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    array-length v0, v0

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    .line 1579
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-nez v0, :cond_0

    .line 1580
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 1584
    :catch_2
    move-exception v0

    move-object v8, v0

    .line 1585
    .local v8, ex:Landroid/os/RemoteException;
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    goto/16 :goto_1
.end method


# virtual methods
.method public deactivate()V
    .locals 1

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1723
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 1724
    :cond_0
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCols:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1592
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 1677
    :try_start_0
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1680
    :goto_0
    return v1

    .line 1678
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1679
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->onChange(Z)V

    .line 1680
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 1688
    :try_start_0
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1691
    :goto_0
    return-wide v1

    .line 1689
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1690
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->onChange(Z)V

    .line 1691
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 1660
    :try_start_0
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1663
    :goto_0
    return-object v1

    .line 1661
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1662
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->onChange(Z)V

    .line 1663
    const-string v1, ""

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public moveItem(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1637
    :try_start_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0, p1, p2}, Lcom/android/music/IMediaPlaybackService;->moveQueueItem(II)V

    .line 1638
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getQueue()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    .line 1639
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v0, v1}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->onMove(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1642
    :goto_0
    return-void

    .line 1640
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onMove(II)Z
    .locals 5
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v4, 0x1

    .line 1598
    if-ne p1, p2, :cond_0

    move v3, v4

    .line 1614
    :goto_0
    return v3

    .line 1601
    :cond_0
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[J

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    array-length v3, v3

    if-lt p2, v3, :cond_2

    .line 1602
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1609
    :cond_2
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    aget-wide v1, v3, p2

    .line 1610
    .local v1, newid:J
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[J

    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 1611
    .local v0, crsridx:I
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1612
    iput p2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurPos:I

    move v3, v4

    .line 1614
    goto :goto_0
.end method

.method public removeItem(I)Z
    .locals 5
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 1620
    :try_start_0
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1, p1, p1}, Lcom/android/music/IMediaPlaybackService;->removeTracks(II)I

    move-result v1

    if-nez v1, :cond_0

    .line 1621
    const/4 v1, 0x0

    .line 1632
    :goto_0
    return v1

    .line 1623
    :cond_0
    move v0, p1

    .line 1624
    .local v0, i:I
    iget v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    .line 1625
    :goto_1
    iget v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-ge v0, v1, :cond_1

    .line 1626
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    add-int/lit8 v3, v0, 0x1

    aget-wide v2, v2, v3

    aput-wide v2, v1, v0

    .line 1627
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1629
    :cond_1
    const/4 v1, -0x1

    iget v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v1, v2}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->onMove(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #i:I
    :goto_2
    move v1, v4

    .line 1632
    goto :goto_0

    .line 1630
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 1729
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 1730
    const/4 v0, 0x1

    return v0
.end method
