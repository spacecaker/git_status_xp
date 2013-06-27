.class public Lcom/android/music/TrackBrowserActivity;
.super Landroid/app/ListActivity;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/TrackBrowserActivity$TrackListAdapter;,
        Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;
    }
.end annotation


# static fields
.field private static mForceStop:Z

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

.field private mAdapterSent:Z

.field private mAlbumId:Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field private mCurrentPlaylistName:Ljava/lang/String;

.field private mCurrentTrackName:Ljava/lang/String;

.field private mCursorCols:[Ljava/lang/String;

.field private mDeletedOneRow:Z

.field private mDrmPlayListener:Landroid/content/BroadcastReceiver;

.field private mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

.field private mEditMode:Z

.field private mGenre:Ljava/lang/String;

.field private mLastOrientation:I

.field private mNowPlayingListener:Landroid/content/BroadcastReceiver;

.field private mPlaylist:Ljava/lang/String;

.field private mPlaylistMemberCols:[Ljava/lang/String;

.field private mReScanHandler:Landroid/os/Handler;

.field private mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedId:J

.field private mSelectedPosition:I

.field private mSortOrder:Ljava/lang/String;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackList:Landroid/widget/ListView;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;

.field private mUseLastListPos:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 119
    sput v0, Lcom/android/music/TrackBrowserActivity;->mLastListPosCourse:I

    .line 120
    sput v0, Lcom/android/music/TrackBrowserActivity;->mLastListPosFine:I

    .line 133
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/music/TrackBrowserActivity;->mForceStop:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 103
    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    .line 111
    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapterSent:Z

    .line 121
    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mUseLastListPos:Z

    .line 125
    iput v0, p0, Lcom/android/music/TrackBrowserActivity;->mLastOrientation:I

    .line 492
    new-instance v0, Lcom/android/music/TrackBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$3;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 510
    new-instance v0, Lcom/android/music/TrackBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$4;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 717
    new-instance v0, Lcom/android/music/TrackBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$5;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    .line 739
    new-instance v0, Lcom/android/music/TrackBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$6;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    .line 779
    new-instance v0, Lcom/android/music/TrackBrowserActivity$7;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$7;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 790
    new-instance v0, Lcom/android/music/TrackBrowserActivity$8;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$8;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mDrmPlayListener:Landroid/content/BroadcastReceiver;

    .line 803
    new-instance v0, Lcom/android/music/TrackBrowserActivity$9;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$9;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity;->setAlbumArtBackground()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/music/TrackBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Lcom/android/music/TrackBrowserActivity;->mForceStop:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/music/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/TrackBrowserActivity;)Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/music/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/music/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/music/TrackBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/music/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/music/TrackBrowserActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/music/TrackBrowserActivity;->removePlaylistItem(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/music/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/music/TrackBrowserActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method private getTrackCursor(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v6, "external"

    const-string v10, " AND is_music=1"

    const-string v5, "title_key"

    const-string v3, "filter"

    .line 1388
    if-nez p1, :cond_0

    .line 1389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1393
    :cond_0
    const-string v0, "title_key"

    iput-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 1394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1395
    const-string v1, "title != \'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1420
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1421
    const-string v1, "external"

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v6, v1, v2}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 1423
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1424
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1426
    :cond_1
    const-string v2, "title_key"

    iput-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 1428
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 1498
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 1499
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;Z)V

    .line 1500
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity;->setTitle()V

    .line 1502
    :cond_3
    return-object v0

    .line 1430
    :cond_4
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1431
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v2, "nowplaying"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1432
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_f

    .line 1433
    new-instance v0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;-><init>(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/IMediaPlaybackService;[Ljava/lang/String;)V

    .line 1434
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1435
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 1440
    :cond_5
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v2, "podcasts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1441
    const-string v1, " AND is_podcast=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1444
    const-string v1, " AND is_music=1"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1447
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1448
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1450
    :cond_6
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "title_key"

    move-object v0, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 1453
    :cond_7
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v2, "recentlyadded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1455
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1456
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1457
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1459
    :cond_8
    const-string v2, "numweeks"

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcom/android/music/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const v3, 0x93a80

    mul-int/2addr v2, v3

    .line 1460
    const-string v3, " AND date_added>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    int-to-long v2, v2

    sub-long v2, v6, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1464
    const-string v2, " AND is_music=1"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "title_key"

    move-object v0, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 1470
    :cond_9
    const-string v1, "external"

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v6, v1, v2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 1472
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1473
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1475
    :cond_a
    const-string v2, "play_order"

    iput-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 1476
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 1480
    :cond_b
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 1481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND album_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 1484
    :cond_c
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 1485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND artist_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    :cond_d
    const-string v1, " AND is_music=1"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1489
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1490
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1492
    :cond_e
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    move-object v0, v4

    goto/16 :goto_0
.end method

.method private initLayout()V
    .locals 2

    .prologue
    const v1, 0x7f0c0025

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 227
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->setContentView(I)V

    .line 229
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 231
    invoke-static {p0, v1}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mUseLastListPos:Z

    .line 232
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 233
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 235
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setNextFocusUpId(I)V

    .line 237
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    check-cast v0, Lcom/android/music/TouchInterceptor;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    invoke-virtual {v0, v1}, Lcom/android/music/TouchInterceptor;->setDropListener(Lcom/android/music/TouchInterceptor$DropListener;)V

    .line 239
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    check-cast v0, Lcom/android/music/TouchInterceptor;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    invoke-virtual {v0, v1}, Lcom/android/music/TouchInterceptor;->setRemoveListener(Lcom/android/music/TouchInterceptor$RemoveListener;)V

    .line 244
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 260
    :cond_0
    return-void
.end method

.method private isMusic(Landroid/database/Cursor;)Z
    .locals 11
    .parameter "c"

    .prologue
    const/4 v9, 0x0

    const-string v10, "<unknown>"

    .line 838
    const-string v8, "title"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 839
    .local v7, titleidx:I
    const-string v8, "album"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 840
    .local v1, albumidx:I
    const-string v8, "artist"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 842
    .local v3, artistidx:I
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 843
    .local v6, title:Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, album:Ljava/lang/String;
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 845
    .local v2, artist:Ljava/lang/String;
    const-string v8, "<unknown>"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "<unknown>"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v6, :cond_0

    const-string v8, "recording"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    .line 858
    :goto_0
    return v8

    .line 853
    :cond_0
    const-string v8, "is_music"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 854
    .local v5, ismusic_idx:I
    const/4 v4, 0x1

    .line 855
    .local v4, ismusic:Z
    if-ltz v5, :cond_1

    .line 856
    iget-object v8, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    move v4, v8

    :cond_1
    :goto_1
    move v8, v4

    .line 858
    goto :goto_0

    :cond_2
    move v4, v9

    .line 856
    goto :goto_1
.end method

.method private keepFocusItem()V
    .locals 3

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 309
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    sget v1, Lcom/android/music/TrackBrowserActivity;->mLastListPosCourse:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 312
    :cond_0
    return-void
.end method

.method private moveItem(Z)V
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "play_order"

    .line 1113
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1114
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    .line 1115
    if-eqz p1, :cond_0

    if-lt v1, v7, :cond_1

    :cond_0
    if-nez p1, :cond_2

    sub-int/2addr v0, v7

    if-lt v1, v0, :cond_2

    .line 1156
    :cond_1
    :goto_0
    return-void

    .line 1119
    :cond_2
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v0, :cond_5

    .line 1120
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    .line 1121
    if-eqz p1, :cond_3

    sub-int v2, v1, v7

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->moveItem(II)V

    .line 1122
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 1123
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 1124
    iput-boolean v7, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 1125
    if-eqz p1, :cond_4

    .line 1126
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    sub-int/2addr v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 1121
    :cond_3
    add-int/lit8 v2, v1, 0x1

    goto :goto_1

    .line 1128
    :cond_4
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 1131
    :cond_5
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v2, "play_order"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1133
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1134
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1135
    const-string v1, "external"

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 1137
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1138
    const-string v3, "_id=?"

    .line 1139
    new-array v4, v7, [Ljava/lang/String;

    .line 1140
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1141
    if-eqz p1, :cond_6

    .line 1142
    const-string v6, "play_order"

    sub-int v6, v0, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1143
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    .line 1144
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1145
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1152
    :goto_2
    const-string v6, "play_order"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1153
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 1154
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1147
    :cond_6
    const-string v6, "play_order"

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1148
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    .line 1149
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1150
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2
.end method

.method private removeItem()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1070
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1071
    .local v1, curcount:I
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    .line 1072
    .local v2, curpos:I
    if-eqz v1, :cond_0

    if-gez v2, :cond_1

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1076
    :cond_1
    const-string v7, "nowplaying"

    iget-object v8, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1082
    :try_start_0
    sget-object v7, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v7

    if-eq v2, v7, :cond_2

    .line 1083
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 1088
    .local v6, v:Landroid/view/View;
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1089
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->invalidateViews()V

    .line 1090
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v7, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    invoke-virtual {v7, v2}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->removeItem(I)Z

    .line 1091
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1092
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 1095
    .end local v6           #v:Landroid/view/View;
    :cond_3
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1097
    .local v0, colidx:I
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1098
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1099
    .local v3, id:J
    const-string v7, "external"

    iget-object v8, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    .line 1101
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1103
    add-int/lit8 v1, v1, -0x1

    .line 1104
    if-nez v1, :cond_4

    .line 1105
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 1107
    :cond_4
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    if-ge v2, v1, :cond_5

    move v8, v2

    :goto_2
    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    :cond_5
    move v8, v1

    goto :goto_2

    .line 1085
    .end local v0           #colidx:I
    .end local v3           #id:J
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private removePlaylistItem(I)V
    .locals 10
    .parameter "which"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 747
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, p1, v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 748
    .local v5, v:Landroid/view/View;
    if-nez v5, :cond_0

    .line 749
    const-string v6, "TrackBrowser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No view when removing playlist item "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :goto_0
    return-void

    .line 753
    :cond_0
    :try_start_0
    sget-object v6, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v6

    if-eq p1, v6, :cond_1

    .line 755
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :cond_1
    :goto_1
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 762
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    .line 763
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v6, v6, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v6, :cond_2

    .line 764
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v6, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    invoke-virtual {v6, p1}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->removeItem(I)Z

    .line 775
    :goto_2
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 776
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 757
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 759
    .local v1, e:Landroid/os/RemoteException;
    iput-boolean v8, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    goto :goto_1

    .line 766
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 768
    .local v0, colidx:I
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 769
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 770
    .local v2, id:J
    const-string v6, "external"

    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 772
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setAlbumArtBackground()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 610
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-nez v0, :cond_0

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 613
    .local v3, albumid:J
    const-wide/16 v1, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 614
    .local v6, bm:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-static {v0, v6}, Lcom/android/music/MusicUtils;->setBackground(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 616
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .end local v3           #albumid:J
    .end local v6           #bm:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 619
    :catch_0
    move-exception v0

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 626
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    goto :goto_0
.end method

.method private setTitle()V
    .locals 14

    .prologue
    .line 633
    const/4 v11, 0x0

    .line 634
    .local v11, fancyName:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 635
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v13, v0

    .line 636
    .local v13, numresults:I
    :goto_0
    if-lez v13, :cond_3

    .line 637
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 638
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v1, "album"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 639
    .local v12, idx:I
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "artist_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v3, "artist_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 650
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "album"

    aput-object v4, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 652
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 653
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v0, v13, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 657
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->deactivate()V

    .line 659
    :cond_1
    if-eqz v11, :cond_2

    const-string v0, "<unknown>"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 660
    :cond_2
    const v0, 0x7f090090

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 710
    .end local v3           #where:Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v12           #idx:I
    .end local v13           #numresults:I
    :cond_3
    :goto_1
    if-eqz v11, :cond_d

    .line 711
    invoke-virtual {p0, v11}, Lcom/android/music/TrackBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 715
    :goto_2
    return-void

    .line 635
    :cond_4
    const/4 v0, 0x0

    move v13, v0

    goto/16 :goto_0

    .line 663
    :cond_5
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 664
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "nowplaying"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 665
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentShuffleMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 666
    const v0, 0x7f09005f

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_1

    .line 668
    :cond_6
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_1

    .line 670
    :cond_7
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "podcasts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 671
    const v0, 0x7f090068

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_1

    .line 672
    :cond_8
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "recentlyadded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 673
    const v0, 0x7f09006c

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_1

    .line 675
    :cond_9
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v6, v0

    .line 678
    .local v6, cols:[Ljava/lang/String;
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 681
    .restart local v10       #cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 682
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_a

    .line 683
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 684
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 686
    if-eqz v11, :cond_a

    .line 687
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentPlaylistName:Ljava/lang/String;

    .line 691
    :cond_a
    invoke-interface {v10}, Landroid/database/Cursor;->deactivate()V

    goto/16 :goto_1

    .line 694
    .end local v6           #cols:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_b
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 695
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v6, v0

    .line 698
    .restart local v6       #cols:[Ljava/lang/String;
    sget-object v0, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 701
    .restart local v10       #cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 702
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_c

    .line 703
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 704
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 706
    :cond_c
    invoke-interface {v10}, Landroid/database/Cursor;->deactivate()V

    goto/16 :goto_1

    .line 713
    .end local v6           #cols:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_d
    const v0, 0x7f09008f

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->setTitle(I)V

    goto/16 :goto_2
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 427
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/music/TrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 434
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    goto :goto_0

    .line 430
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1023
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1025
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1038
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1027
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/android/music/TrackBrowserActivity;->moveItem(Z)V

    move v0, v1

    .line 1028
    goto :goto_0

    .line 1030
    :sswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/TrackBrowserActivity;->moveItem(Z)V

    move v0, v1

    .line 1031
    goto :goto_0

    .line 1033
    :sswitch_2
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity;->removeItem()V

    move v0, v1

    .line 1034
    goto :goto_0

    .line 1025
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch
.end method

.method doSearch()V
    .locals 6

    .prologue
    const-string v5, "<unknown>"

    .line 994
    .line 997
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 998
    const-string v1, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1001
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    .line 1002
    const-string v2, "<unknown>"

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1003
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    .line 1008
    :goto_0
    const-string v3, "<unknown>"

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1009
    const-string v3, "android.intent.extra.album"

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1011
    :cond_0
    const-string v3, "android.intent.extra.focus"

    const-string v4, "audio/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1012
    const v3, 0x7f09004b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/music/TrackBrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1013
    const-string v3, "query"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1015
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 1016
    return-void

    .line 1005
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1006
    const-string v3, "android.intent.extra.artist"

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public init(Landroid/database/Cursor;Z)V
    .locals 11
    .parameter "newCursor"
    .parameter "isLimited"

    .prologue
    const-string v10, "com.android.music.metachanged"

    .line 537
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    if-nez v7, :cond_0

    .line 607
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v7, p1}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 542
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/music/MusicUtils;->isSDCardAvaiable()Z

    move-result v7

    if-nez v7, :cond_2

    .line 543
    :cond_1
    invoke-static {p0}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 544
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->closeContextMenu()V

    .line 546
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->closeOptionsMenu()V

    .line 548
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const-wide/16 v9, 0x3e8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 552
    :cond_2
    invoke-static {p0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 553
    const v7, 0x7f0c0025

    invoke-static {p0, v7}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/music/TrackBrowserActivity;->mUseLastListPos:Z

    .line 554
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity;->setTitle()V

    .line 557
    sget v7, Lcom/android/music/TrackBrowserActivity;->mLastListPosCourse:I

    if-ltz v7, :cond_3

    iget-boolean v7, p0, Lcom/android/music/TrackBrowserActivity;->mUseLastListPos:Z

    if-eqz v7, :cond_3

    .line 558
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v6

    .line 561
    .local v6, lv:Landroid/widget/ListView;
    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 562
    sget v7, Lcom/android/music/TrackBrowserActivity;->mLastListPosCourse:I

    sget v8, Lcom/android/music/TrackBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v6, v7, v8}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 571
    .end local v6           #lv:Landroid/widget/ListView;
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 572
    .local v0, a:Landroid/content/IntentFilter;
    const-string v7, "com.android.music.drm.play"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 573
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mDrmPlayListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v0}, Lcom/android/music/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 579
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 580
    .local v3, f:Landroid/content/IntentFilter;
    const-string v7, "com.android.music.metachanged"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 581
    const-string v7, "com.android.music.queuechanged"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 582
    const-string v7, "nowplaying"

    iget-object v8, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 584
    :try_start_0
    sget-object v7, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    .line 585
    .local v2, cur:I
    invoke-virtual {p0, v2}, Lcom/android/music/TrackBrowserActivity;->setSelection(I)V

    .line 586
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8, v3}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v7, v8}, Lcom/android/music/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 587
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.music.metachanged"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0, v8}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 588
    .end local v2           #cur:I
    :catch_0
    move-exception v7

    goto/16 :goto_0

    .line 591
    :cond_4
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "artist"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 592
    .local v4, key:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 593
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "artist_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 594
    .local v5, keyidx:I
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 595
    :goto_1
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_5

    .line 596
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, artist:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 598
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/music/TrackBrowserActivity;->setSelection(I)V

    .line 604
    .end local v1           #artist:Ljava/lang/String;
    .end local v5           #keyidx:I
    :cond_5
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8, v3}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v7, v8}, Lcom/android/music/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 605
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.music.metachanged"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0, v8}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 601
    .restart local v1       #artist:Ljava/lang/String;
    .restart local v5       #keyidx:I
    :cond_6
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 1350
    sparse-switch p1, :sswitch_data_0

    .line 1383
    :cond_0
    :goto_0
    return-void

    .line 1352
    :sswitch_0
    if-nez p2, :cond_1

    .line 1353
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 1356
    :cond_1
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v3, :cond_0

    .line 1357
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v3}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_0

    .line 1363
    :sswitch_1
    if-ne p2, v3, :cond_0

    .line 1364
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1365
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 1366
    new-array v0, v5, [J

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    aput-wide v4, v0, v3

    .line 1367
    .local v0, list:[J
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {p0, v0, v3, v4}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 1373
    .end local v0           #list:[J
    .end local v2           #uri:Landroid/net/Uri;
    :sswitch_2
    if-ne p2, v3, :cond_0

    .line 1374
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1375
    .restart local v2       #uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 1376
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v3}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v0

    .line 1377
    .restart local v0       #list:[J
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1378
    .local v1, plid:I
    int-to-long v3, v1

    invoke-static {p0, v0, v3, v4}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 1350
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xb -> :sswitch_0
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 265
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 266
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sput v0, Lcom/android/music/TrackBrowserActivity;->mLastListPosCourse:I

    .line 271
    :cond_0
    iget v0, p0, Lcom/android/music/TrackBrowserActivity;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_4

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 276
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;Z)V

    .line 284
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity;->initLayout()V

    .line 286
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity;->keepFocusItem()V

    .line 289
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/music/TrackBrowserActivity;->mLastOrientation:I

    .line 292
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-nez v0, :cond_3

    .line 293
    invoke-static {p0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/music/TrackBrowserActivity$2;

    invoke-direct {v1, p0}, Lcom/android/music/TrackBrowserActivity$2;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    :cond_4
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 303
    return-void

    .line 278
    :cond_5
    const v0, 0x7f09009b

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->setTitle(I)V

    .line 280
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 929
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 990
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 932
    :pswitch_1
    iget v0, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedPosition:I

    .line 933
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v1, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V

    move v0, v5

    .line 934
    goto :goto_0

    .line 938
    :pswitch_2
    new-array v0, v5, [J

    iget-wide v1, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    aput-wide v1, v0, v6

    .line 939
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    move v0, v5

    .line 940
    goto :goto_0

    .line 944
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 945
    const-class v1, Lcom/android/music/CreatePlaylist;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 946
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/music/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v5

    .line 947
    goto :goto_0

    .line 951
    :pswitch_4
    new-array v0, v5, [J

    iget-wide v1, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    aput-wide v1, v0, v6

    .line 952
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "playlist"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 953
    invoke-static {p0, v0, v1, v2}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    move v0, v5

    .line 954
    goto :goto_0

    .line 959
    :pswitch_5
    iget-wide v0, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    move v0, v5

    .line 960
    goto :goto_0

    .line 963
    :pswitch_6
    new-array v0, v5, [J

    .line 964
    iget-wide v1, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    long-to-int v1, v1

    int-to-long v1, v1

    aput-wide v1, v0, v6

    .line 965
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 967
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 968
    const v2, 0x7f090030

    invoke-virtual {p0, v2}, Lcom/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 972
    :goto_1
    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 973
    const-string v3, "description"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v2, "items"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 975
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 976
    const-class v2, Lcom/android/music/DeleteItems;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 977
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 978
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/music/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v5

    .line 979
    goto/16 :goto_0

    .line 970
    :cond_0
    const v2, 0x7f09009f

    invoke-virtual {p0, v2}, Lcom/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 983
    :pswitch_7
    iget v0, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedPosition:I

    invoke-direct {p0, v0}, Lcom/android/music/TrackBrowserActivity;->removePlaylistItem(I)V

    move v0, v5

    .line 984
    goto/16 :goto_0

    .line 987
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->doSearch()V

    move v0, v5

    .line 988
    goto/16 :goto_0

    .line 929
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v4, 0x0

    const-string v6, "artist"

    const-string v5, "album"

    .line 144
    const-string v1, "test"

    const-string v2, "[onCreate]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sput-boolean v4, Lcom/android/music/TrackBrowserActivity;->mForceStop:Z

    .line 148
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity;->requestWindowFeature(I)Z

    .line 150
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 151
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 152
    const-string v1, "withtabs"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {p0, v7}, Lcom/android/music/TrackBrowserActivity;->requestWindowFeature(I)Z

    .line 156
    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/music/TrackBrowserActivity;->setVolumeControlStream(I)V

    .line 157
    if-eqz p1, :cond_3

    .line 158
    const-string v1, "selectedtrack"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    .line 159
    const-string v1, "album"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 160
    const-string v1, "artist"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 161
    const-string v1, "playlist"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    .line 162
    const-string v1, "genre"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    .line 163
    const-string v1, "editmode"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    .line 177
    :cond_1
    :goto_0
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "title"

    aput-object v2, v1, v7

    const/4 v2, 0x2

    const-string v3, "_data"

    aput-object v3, v1, v2

    const-string v2, "album"

    aput-object v5, v1, v8

    const/4 v2, 0x4

    const-string v3, "artist"

    aput-object v6, v1, v2

    const/4 v2, 0x5

    const-string v3, "artist_id"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "duration"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    .line 186
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "title"

    aput-object v2, v1, v7

    const/4 v2, 0x2

    const-string v3, "_data"

    aput-object v3, v1, v2

    const-string v2, "album"

    aput-object v5, v1, v8

    const/4 v2, 0x4

    const-string v3, "artist"

    aput-object v6, v1, v2

    const/4 v2, 0x5

    const-string v3, "artist_id"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "duration"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "play_order"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "audio_id"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "is_music"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 201
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity;->initLayout()V

    .line 204
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 206
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v1, p0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->setActivity(Lcom/android/music/TrackBrowserActivity;)V

    .line 208
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 211
    :cond_2
    invoke-static {p0, p0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 214
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/music/TrackBrowserActivity$1;

    invoke-direct {v2, p0}, Lcom/android/music/TrackBrowserActivity$1;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 220
    return-void

    .line 166
    :cond_3
    if-eqz v0, :cond_1

    .line 168
    const-string v1, "album"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 171
    const-string v1, "artist"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 172
    const-string v1, "playlist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    .line 173
    const-string v1, "genre"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    .line 174
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 863
    const/4 v0, 0x5

    const v1, 0x7f090061

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 864
    const v0, 0x7f09001a

    invoke-interface {p1, v4, v5, v4, v0}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    .line 865
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 866
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 867
    const/16 v0, 0x13

    const v1, 0x7f09006d

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 870
    :cond_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 871
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v0, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedPosition:I

    .line 872
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedPosition:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 874
    :try_start_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v1, "audio_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 876
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    :goto_0
    new-instance v0, Lcom/sec/android/app/music/MusicDrmManager;

    invoke-direct {v0}, Lcom/sec/android/app/music/MusicDrmManager;-><init>()V

    .line 886
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 891
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 892
    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicDrmManager;->getOptionInfo()Landroid/drm/mobile2/Drm2Options;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 893
    if-nez v0, :cond_3

    move v0, v4

    .line 907
    :goto_1
    if-eqz v0, :cond_1

    .line 908
    const/4 v0, 0x2

    const v1, 0x7f090072

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 912
    :cond_1
    const/16 v0, 0xa

    const v1, 0x7f09002e

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 915
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/music/TrackBrowserActivity;->isMusic(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    const/16 v0, 0x14

    const v1, 0x7f090080

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 918
    :cond_2
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v2, "album"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 920
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v2, "artist"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 922
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    .line 924
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 925
    return-void

    .line 877
    :catch_0
    move-exception v0

    .line 878
    iget-wide v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v0, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    goto :goto_0

    .line 896
    :cond_3
    :try_start_2
    iget-boolean v0, v0, Landroid/drm/mobile2/Drm2Options;->bRingtone:Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 900
    :catch_1
    move-exception v0

    .line 903
    const-string v0, "TrackBrowser"

    const-string v1, "onCreateContextMenu FileNotFoundException"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v5

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1247
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1249
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1250
    if-eqz v0, :cond_1

    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v1, "TLP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1251
    :cond_0
    const/16 v0, 0x14

    const v1, 0x7f0900aa

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020021

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1254
    :cond_1
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1255
    const/16 v0, 0x11

    const v1, 0x7f090060

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020027

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1257
    :cond_2
    const/16 v0, 0x8

    const v1, 0x7f09005d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1258
    const/16 v0, 0x9

    const v1, 0x7f090085

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020029

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1259
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1260
    const/16 v0, 0x10

    const v1, 0x7f090076

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1261
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "nowplaying"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1262
    const/16 v0, 0x12

    const v1, 0x7f090025

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020022

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1265
    :cond_3
    return v3
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 373
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 374
    .local v2, lv:Landroid/widget/ListView;
    if-eqz v2, :cond_1

    .line 375
    iget-boolean v3, p0, Lcom/android/music/TrackBrowserActivity;->mUseLastListPos:Z

    if-eqz v3, :cond_0

    .line 376
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sput v3, Lcom/android/music/TrackBrowserActivity;->mLastListPosCourse:I

    .line 377
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 378
    .local v1, cv:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sput v3, Lcom/android/music/TrackBrowserActivity;->mLastListPosFine:I

    .line 382
    .end local v1           #cv:Landroid/view/View;
    :cond_0
    iget-boolean v3, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v3, :cond_1

    .line 384
    move-object v0, v2

    check-cast v0, Lcom/android/music/TouchInterceptor;

    move-object v3, v0

    invoke-virtual {v3, v5}, Lcom/android/music/TouchInterceptor;->setDropListener(Lcom/android/music/TouchInterceptor$DropListener;)V

    .line 385
    check-cast v2, Lcom/android/music/TouchInterceptor;

    .end local v2           #lv:Landroid/widget/ListView;
    invoke-virtual {v2, v5}, Lcom/android/music/TouchInterceptor;->setRemoveListener(Lcom/android/music/TouchInterceptor$RemoveListener;)V

    .line 389
    :cond_1
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v3}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 391
    :try_start_0
    const-string v3, "nowplaying"

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 392
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v3}, Lcom/android/music/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    iget-boolean v3, p0, Lcom/android/music/TrackBrowserActivity;->mAdapterSent:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v3, :cond_2

    .line 405
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v3, v5}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 410
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/music/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 411
    iput-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 412
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v3}, Lcom/android/music/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 414
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mDrmPlayListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v3}, Lcom/android/music/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 416
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 417
    return-void

    .line 394
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v3}, Lcom/android/music/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1045
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/music/MusicUtils;->isSDCardAvaiable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1048
    :cond_0
    const/16 v0, 0x54

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    :cond_1
    move v0, v1

    .line 1066
    :goto_0
    return v0

    .line 1051
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1057
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 1066
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1059
    :pswitch_0
    const v0, 0x7f0c0026

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    move v0, v1

    .line 1060
    goto :goto_0

    .line 1062
    :pswitch_1
    const v0, 0x7f0c0024

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    move v0, v1

    .line 1063
    goto :goto_0

    .line 1057
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v7, "TrackBrowser"

    .line 1161
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1238
    :goto_0
    return-void

    .line 1169
    :cond_0
    new-instance v0, Lcom/sec/android/app/music/MusicDrmManager;

    invoke-direct {v0}, Lcom/sec/android/app/music/MusicDrmManager;-><init>()V

    .line 1171
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1172
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1176
    :try_start_0
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v4, "audio_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v2

    .line 1181
    :goto_1
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1182
    const-string v4, "TrackBrowser"

    const-string v5, "Track_onListItemClick IS DRM FILE"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 1184
    const/4 v5, 0x2

    new-array v5, v5, [Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    .line 1185
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v4, v5}, Lcom/sec/android/app/music/MusicDrmManager;->getDrmPopup(Z[I[Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;)I

    move-result v5

    .line 1186
    if-nez v5, :cond_2

    .line 1187
    const-string v0, "TrackBrowser"

    const-string v1, "DRM_VALID_NOPOPUP"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v0, :cond_1

    .line 1190
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_1

    .line 1192
    :try_start_2
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0, p3}, Lcom/android/music/IMediaPlaybackService;->setQueuePosition(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1194
    :catch_0
    move-exception v0

    .line 1198
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v0, p3}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1233
    :catch_1
    move-exception v0

    .line 1235
    const-string v0, "TrackBrowser"

    const-string v0, "onListItemClick FileNotFoundException"

    invoke-static {v7, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1177
    :catch_2
    move-exception v2

    move-wide v2, p4

    .line 1178
    goto :goto_1

    .line 1201
    :cond_2
    :try_start_4
    new-instance v6, Lcom/sec/android/app/music/DrmPopupData;

    invoke-direct {v6}, Lcom/sec/android/app/music/DrmPopupData;-><init>()V

    .line 1202
    iput-object v4, v6, Lcom/sec/android/app/music/DrmPopupData;->popupStrings:[I

    .line 1203
    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicDrmManager;->getRemainedCounts()I

    move-result v0

    iput v0, v6, Lcom/sec/android/app/music/DrmPopupData;->remainCount:I

    .line 1204
    iput v5, v6, Lcom/sec/android/app/music/DrmPopupData;->popupType:I

    .line 1205
    iput-object v1, v6, Lcom/sec/android/app/music/DrmPopupData;->popupFilePath:Ljava/lang/String;

    .line 1207
    iput-wide v2, v6, Lcom/sec/android/app/music/DrmPopupData;->id:J

    .line 1208
    iput p3, v6, Lcom/sec/android/app/music/DrmPopupData;->position:I

    .line 1209
    new-instance v0, Lcom/sec/android/app/music/DrmServicePopup;

    invoke-direct {v0, p0, v6}, Lcom/sec/android/app/music/DrmServicePopup;-><init>(Landroid/content/Context;Lcom/sec/android/app/music/DrmPopupData;)V

    .line 1210
    invoke-virtual {v0}, Lcom/sec/android/app/music/DrmServicePopup;->show()V

    goto/16 :goto_0

    .line 1214
    :cond_3
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v0, v0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v0, :cond_4

    .line 1215
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v0, :cond_4

    .line 1217
    :try_start_5
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0, p3}, Lcom/android/music/IMediaPlaybackService;->setQueuePosition(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1219
    :catch_3
    move-exception v0

    .line 1228
    :cond_4
    :try_start_6
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v0, p3}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const-string v3, "http://waprd.telstra.com/redirect?target=music-g"

    .line 1284
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1285
    const-string v1, "http://waprd.telstra.com/redirect?target=music-g"

    .line 1287
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1345
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 1291
    :pswitch_1
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1292
    if-eqz v1, :cond_0

    const-string v2, "TEL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v6, :cond_1

    const-string v2, "TLP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v6, :cond_0

    .line 1293
    :cond_1
    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1294
    const-string v1, "http://waprd.telstra.com/redirect?target=music-g"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1295
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1296
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1299
    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 1300
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 1305
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;)V

    move v0, v6

    .line 1306
    goto :goto_1

    .line 1310
    :pswitch_3
    invoke-static {}, Lcom/android/music/MusicUtils;->togglePartyShuffle()V

    .line 1312
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity;->setTitle()V

    move v0, v6

    .line 1316
    goto :goto_1

    .line 1321
    :pswitch_4
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "is_music=1"

    const/4 v4, 0x0

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1325
    if-eqz v0, :cond_2

    .line 1326
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1327
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v6

    .line 1329
    goto :goto_1

    .line 1332
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1333
    const-class v1, Lcom/android/music/CreatePlaylist;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1335
    const-string v1, "CurrentPlayListName"

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentPlaylistName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1337
    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/android/music/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v6

    .line 1338
    goto :goto_1

    .line 1342
    :pswitch_6
    invoke-static {}, Lcom/android/music/MusicUtils;->clearQueue()V

    move v0, v6

    .line 1343
    goto/16 :goto_1

    .line 1287
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 479
    :try_start_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_0
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 486
    return-void

    .line 480
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1270
    invoke-static {p1}, Lcom/android/music/MusicUtils;->setPartyShuffleMenuIcon(Landroid/view/Menu;)V

    .line 1271
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1273
    const/4 v0, 0x1

    .line 1274
    .local v0, showMenu:Z
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 1275
    const/4 v0, 0x0

    .line 1277
    :cond_0
    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const-string v3, "test"

    .line 438
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 441
    const-string v1, "test"

    const-string v1, "[onResume]"

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, status:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    :cond_0
    const-string v1, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onResume - status] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-static {p0}, Lcom/android/music/MusicUtils;->checkLowStorageforMedia(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 450
    const-string v1, "test"

    const-string v1, "onResunme - CheckLowStorage"

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/music/TrackBrowserActivity;->mForceStop:Z

    .line 452
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->finish()V

    .line 474
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v1, :cond_3

    .line 461
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    check-cast v1, Lcom/android/music/TouchInterceptor;

    invoke-virtual {v1}, Lcom/android/music/TouchInterceptor;->doStopDragging()V

    .line 467
    :goto_1
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 468
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 470
    const v1, 0x7f0c0025

    invoke-static {p0, v1}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 473
    :cond_2
    invoke-static {p0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    goto :goto_0

    .line 464
    :cond_3
    invoke-static {p0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 367
    .local v0, a:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mAdapterSent:Z

    .line 368
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 526
    const-string v0, "selectedtrack"

    iget-wide v1, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 527
    const-string v0, "artist"

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v0, "album"

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v0, "playlist"

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v0, "genre"

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v0, "editmode"

    iget-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 532
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 533
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 13
    .parameter "name"
    .parameter "service"

    .prologue
    const v12, 0x7f09009b

    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 317
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 318
    .local v9, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string v0, "file"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/android/music/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    if-nez v0, :cond_3

    .line 326
    new-instance v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v2, :cond_1

    const v2, 0x7f030007

    move v3, v2

    :goto_0
    new-array v5, v10, [Ljava/lang/String;

    new-array v6, v10, [I

    const-string v2, "nowplaying"

    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v8, "podcasts"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v8, "recentlyadded"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v8, v11

    :goto_1
    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 336
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 337
    invoke-virtual {p0, v12}, Lcom/android/music/TrackBrowserActivity;->setTitle(I)V

    .line 338
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4, v11}, Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 354
    :goto_2
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-nez v0, :cond_0

    .line 355
    invoke-static {p0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    .line 357
    :cond_0
    return-void

    .line 326
    :cond_1
    const v2, 0x7f030014

    move v3, v2

    goto :goto_0

    :cond_2
    move v8, v10

    goto :goto_1

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 347
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 348
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v10}, Lcom/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;Z)V

    goto :goto_2

    .line 350
    :cond_4
    invoke-virtual {p0, v12}, Lcom/android/music/TrackBrowserActivity;->setTitle(I)V

    .line 351
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4, v11}, Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->finish()V

    .line 362
    return-void
.end method
