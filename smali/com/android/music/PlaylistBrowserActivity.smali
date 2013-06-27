.class public Lcom/android/music/PlaylistBrowserActivity;
.super Landroid/app/ListActivity;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    }
.end annotation


# static fields
.field private static mForceStop:Z

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

.field mAdapterSent:Z

.field mCols:[Ljava/lang/String;

.field private mCreateShortcut:Z

.field private mLastOrientation:I

.field private mPlaylistCursor:Landroid/database/Cursor;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 85
    sput v0, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 86
    sput v0, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosFine:I

    .line 95
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/music/PlaylistBrowserActivity;->mForceStop:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 91
    iput v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mLastOrientation:I

    .line 354
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/PlaylistBrowserActivity$2;-><init>(Lcom/android/music/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 362
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/PlaylistBrowserActivity$3;-><init>(Lcom/android/music/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 376
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/android/music/PlaylistBrowserActivity$4;-><init>(Lcom/android/music/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 677
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/PlaylistBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->playRecentlyAdded()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/music/PlaylistBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->playPodcasts()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/music/PlaylistBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/PlaylistBrowserActivity;)Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/PlaylistBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/music/PlaylistBrowserActivity;->mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/music/PlaylistBrowserActivity;->mForceStop:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/music/PlaylistBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/music/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "async"
    .parameter "filterstring"

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x25

    const/4 v1, 0x0

    const-string v7, "name"

    .line 684
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 685
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v0, "name != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const/4 v6, 0x0

    .line 689
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 690
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 691
    .local v11, searchWords:[Ljava/lang/String;
    array-length v0, v11

    new-array v6, v0, [Ljava/lang/String;

    .line 692
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v9

    .line 693
    .local v9, col:Ljava/text/Collator;
    invoke-virtual {v9, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 694
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, v11

    if-ge v10, v0, :cond_0

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v3, v11, v10

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    .line 694
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 697
    :cond_0
    const/4 v10, 0x0

    :goto_1
    array-length v0, v11

    if-ge v10, v0, :cond_1

    .line 698
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const-string v0, "name LIKE ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 703
    .end local v9           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v11           #searchWords:[Ljava/lang/String;
    :cond_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 706
    .local v5, whereclause:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 707
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    const-string v0, "name"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 715
    :goto_2
    return-object v0

    .line 711
    :cond_2
    const/4 v8, 0x0

    .line 712
    .local v8, c:Landroid/database/Cursor;
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    const-string v0, "name"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 715
    invoke-direct {p0, v8}, Lcom/android/music/PlaylistBrowserActivity;->mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2
.end method

.method private initLayout()V
    .locals 3

    .prologue
    const v2, 0x7f0c0026

    .line 201
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/music/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/android/music/PlaylistBrowserActivity;->setContentView(I)V

    .line 205
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/music/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 207
    invoke-static {p0, v2}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 208
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 209
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 215
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setNextFocusUpId(I)V

    .line 217
    return-void
.end method

.method private keepFocusItem()V
    .locals 3

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 256
    .local v0, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 257
    sget v1, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 259
    :cond_0
    return-void
.end method

.method private mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 13
    .parameter "c"

    .prologue
    .line 719
    if-nez p1, :cond_0

    .line 720
    const/4 v0, 0x0

    .line 755
    :goto_0
    return-object v0

    .line 722
    :cond_0
    instance-of v0, p1, Landroid/database/MergeCursor;

    if-eqz v0, :cond_1

    .line 724
    const-string v0, "PlaylistBrowserActivity"

    const-string v1, "Already wrapped"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 725
    goto :goto_0

    .line 727
    :cond_1
    new-instance v7, Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    invoke-direct {v7, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 728
    .local v7, autoplaylistscursor:Landroid/database/MatrixCursor;
    iget-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v0, :cond_2

    .line 729
    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 730
    .local v6, all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v0, -0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    const v0, 0x7f090060

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    invoke-virtual {v7, v6}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 734
    .end local v6           #all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 735
    .local v12, recent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    invoke-virtual {v7, v12}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 740
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "count(*)"

    aput-object v3, v2, v0

    const-string v3, "is_podcast=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 742
    .local v9, counter:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 743
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 744
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 745
    .local v10, numpodcasts:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 746
    if-lez v10, :cond_3

    .line 747
    new-instance v11, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 748
    .local v11, podcasts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v0, -0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    const v0, 0x7f090067

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    invoke-virtual {v7, v11}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 754
    .end local v10           #numpodcasts:I
    .end local v11           #podcasts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    new-instance v8, Landroid/database/MergeCursor;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-direct {v8, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .local v8, cc:Landroid/database/Cursor;
    move-object v0, v8

    .line 755
    goto/16 :goto_0
.end method

.method private playPodcasts()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 653
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 654
    .local v2, ccols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "is_podcast=1"

    const/4 v4, 0x0

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 658
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 674
    :goto_0
    return-void

    .line 663
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 664
    .local v8, len:I
    new-array v9, v8, [J

    .line 665
    .local v9, list:[J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v8, :cond_1

    .line 666
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 667
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v9, v7

    .line 665
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 669
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v9, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 670
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[J
    :catch_0
    move-exception v0

    .line 672
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private playRecentlyAdded()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 623
    const-string v0, "numweeks"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const v1, 0x93a80

    mul-int v6, v0, v1

    .line 624
    .local v6, X:I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    .line 625
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "date_added>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v11, 0x3e8

    div-long/2addr v4, v11

    int-to-long v11, v6

    sub-long/2addr v4, v11

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 633
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 649
    :goto_0
    return-void

    .line 638
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 639
    .local v9, len:I
    new-array v10, v9, [J

    .line 640
    .local v10, list:[J
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_1

    .line 641
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 642
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v10, v8

    .line 640
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 644
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v10, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 645
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[J
    :catch_0
    move-exception v0

    .line 647
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 415
    const v0, 0x7f090066

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->setTitle(I)V

    .line 416
    return-void
.end method


# virtual methods
.method public init(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 391
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/music/MusicUtils;->isSDCardAvaiable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 392
    :cond_1
    invoke-static {p0}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 393
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->closeContextMenu()V

    .line 395
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->closeOptionsMenu()V

    .line 397
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 402
    :cond_2
    sget v0, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    if-ltz v0, :cond_3

    .line 403
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    sget v2, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 409
    :cond_3
    invoke-static {p0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 410
    const v0, 0x7f0c0026

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 411
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 573
    packed-switch p1, :pswitch_data_0

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 575
    :pswitch_0
    if-nez p2, :cond_1

    .line 576
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->finish()V

    goto :goto_0

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 573
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 223
    .local v0, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sput v1, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 228
    :cond_0
    iget v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mLastOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_3

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_4

    .line 233
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/android/music/PlaylistBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 240
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->initLayout()V

    .line 242
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->keepFocusItem()V

    .line 244
    invoke-static {p0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    .line 246
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mLastOrientation:I

    .line 249
    :cond_3
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 250
    return-void

    .line 235
    :cond_4
    const v1, 0x7f09009a

    invoke-virtual {p0, v1}, Lcom/android/music/PlaylistBrowserActivity;->setTitle(I)V

    .line 236
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v1}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 531
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 532
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    move v0, v5

    .line 568
    :goto_1
    return v0

    .line 534
    :sswitch_0
    iget-wide v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v1, v1, v6

    if-nez v1, :cond_1

    .line 535
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->playRecentlyAdded()V

    goto :goto_0

    .line 536
    :cond_1
    iget-wide v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v3, -0x3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 537
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->playPodcasts()V

    goto :goto_0

    .line 539
    :cond_2
    iget-wide v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->playPlaylist(Landroid/content/Context;J)V

    goto :goto_0

    .line 543
    :sswitch_1
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 545
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 546
    const v0, 0x7f090063

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 547
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 548
    const v0, 0x7f090054

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->setTitle(I)V

    goto :goto_0

    .line 552
    :sswitch_2
    iget-wide v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_3

    .line 553
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 554
    const-class v1, Lcom/android/music/WeekSelector;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 555
    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/android/music/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v5

    .line 556
    goto :goto_1

    .line 558
    :cond_3
    const-string v0, "PlaylistBrowserActivity"

    const-string v1, "should not be here"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 562
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 563
    const-class v2, Lcom/android/music/RenamePlaylist;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 564
    const-string v2, "rename"

    iget-wide v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 565
    const/16 v0, 0x11

    invoke-virtual {p0, v1, v0}, Lcom/android/music/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 532
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xf -> :sswitch_1
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f09009a

    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 106
    const-string v0, "test"

    const-string v1, "[onCreate]"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sput-boolean v10, Lcom/android/music/PlaylistBrowserActivity;->mForceStop:Z

    .line 110
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 113
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, action:Ljava/lang/String;
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iput-boolean v6, p0, Lcom/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    .line 118
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->requestWindowFeature(I)Z

    .line 119
    invoke-virtual {p0, v6}, Lcom/android/music/PlaylistBrowserActivity;->requestWindowFeature(I)Z

    .line 120
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->setVolumeControlStream(I)V

    .line 121
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$1;

    invoke-direct {v0, p0, v7, v9}, Lcom/android/music/PlaylistBrowserActivity$1;-><init>(Lcom/android/music/PlaylistBrowserActivity;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 156
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v8, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v0, "file"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/android/music/PlaylistBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->initLayout()V

    .line 166
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 167
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-nez v0, :cond_1

    .line 169
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030014

    iget-object v4, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    new-array v5, v6, [Ljava/lang/String;

    const-string v2, "name"

    aput-object v2, v5, v10

    new-array v6, v6, [I

    const v2, 0x1020014

    aput v2, v6, v10

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/PlaylistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 176
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    invoke-virtual {p0, v11}, Lcom/android/music/PlaylistBrowserActivity;->setTitle(I)V

    .line 178
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v12}, Lcom/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 196
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->setActivity(Lcom/android/music/PlaylistBrowserActivity;)V

    .line 181
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    .line 189
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {p0, v11}, Lcom/android/music/PlaylistBrowserActivity;->setTitle(I)V

    .line 193
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v12}, Lcom/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 504
    iget-boolean v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v2, :cond_0

    .line 527
    :goto_0
    return-void

    .line 508
    :cond_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 510
    .local v1, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    const/4 v2, 0x5

    const v3, 0x7f090061

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 512
    iget-wide v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v2, v2, v7

    if-ltz v2, :cond_1

    .line 513
    const/16 v2, 0xf

    const v3, 0x7f09002f

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 516
    :cond_1
    iget-wide v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 517
    const/16 v2, 0x10

    const v3, 0x7f090039

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 520
    :cond_2
    iget-wide v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v2, v2, v7

    if-ltz v2, :cond_3

    .line 521
    const/16 v2, 0x11

    const v3, 0x7f09006e

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 524
    :cond_3
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 525
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v4, "name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 446
    iget-boolean v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-nez v1, :cond_2

    .line 448
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, code:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "TLP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 450
    :cond_0
    const/16 v1, 0x14

    const v2, 0x7f0900aa

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020021

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 453
    :cond_1
    const/16 v1, 0x8

    const v2, 0x7f09005d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 455
    .end local v0           #code:Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 271
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 272
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sput v2, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 274
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 275
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sput v2, Lcom/android/music/PlaylistBrowserActivity;->mLastListPosFine:I

    .line 279
    .end local v0           #cv:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v2}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 284
    iget-boolean v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapterSent:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 290
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/music/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 291
    iput-object v3, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 292
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/music/PlaylistBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 293
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 294
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 422
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/music/MusicUtils;->isSDCardAvaiable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 425
    :cond_0
    const/16 v0, 0x54

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    :cond_1
    move v0, v1

    .line 441
    :goto_0
    return v0

    .line 428
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 432
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 441
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 434
    :pswitch_0
    const v0, 0x7f0c0023

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    move v0, v1

    .line 435
    goto :goto_0

    .line 437
    :pswitch_1
    const v0, 0x7f0c0025

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    move v0, v1

    .line 438
    goto :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const-string v6, "android.intent.action.PICK"

    const-string v5, "vnd.android.cursor.dir/track"

    const-string v4, "playlist"

    .line 587
    iget-boolean v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v2, :cond_0

    .line 588
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 589
    .local v1, shortcut:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/playlist"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const-string v2, "playlist"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 594
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 595
    const-string v3, "android.intent.extra.shortcut.NAME"

    const v2, 0x7f0c001f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 596
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v3, 0x7f020020

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 599
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/music/PlaylistBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 600
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->finish()V

    .line 619
    .end local v1           #shortcut:Landroid/content/Intent;
    :goto_0
    return-void

    .line 603
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    .line 604
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    const-string v2, "playlist"

    const-string v2, "recentlyadded"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 608
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-wide/16 v2, -0x3

    cmp-long v2, p4, v2

    if-nez v2, :cond_2

    .line 609
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    const-string v2, "playlist"

    const-string v2, "podcasts"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 614
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 615
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    const-string v2, "playlist"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 474
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 475
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "http://waprd.telstra.com/redirect?target=music-g"

    .line 476
    .local v2, uri:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 500
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_1
    return v3

    .line 480
    :sswitch_0
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, code:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "TEL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v4, :cond_1

    const-string v3, "TLP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v4, :cond_0

    .line 482
    :cond_1
    const-string v3, "com.android.browser"

    const-string v4, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v3, "http://waprd.telstra.com/redirect?target=music-g"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 484
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 488
    invoke-virtual {p0, v1}, Lcom/android/music/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 489
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->finish()V

    goto :goto_0

    .line 494
    .end local v0           #code:Ljava/lang/String;
    :sswitch_1
    invoke-static {}, Lcom/android/music/MusicUtils;->togglePartyShuffle()V

    move v3, v4

    .line 497
    goto :goto_1

    .line 476
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 352
    return-void

    .line 346
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 460
    invoke-static {p1}, Lcom/android/music/MusicUtils;->setPartyShuffleMenuIcon(Landroid/view/Menu;)V

    .line 461
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 463
    const/4 v0, 0x1

    .line 464
    .local v0, showMenu:Z
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 465
    const/4 v0, 0x0

    .line 467
    :cond_0
    return v0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "test"

    .line 298
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 301
    const-string v2, "test"

    const-string v2, "[onResume]"

    invoke-static {v5, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, status:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    :cond_0
    const-string v2, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onResume - status] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-static {p0}, Lcom/android/music/MusicUtils;->checkLowStorageforMedia(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 310
    const-string v2, "test"

    const-string v2, "onResunme - CheckLowStorage"

    invoke-static {v5, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/music/PlaylistBrowserActivity;->mForceStop:Z

    .line 312
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->finish()V

    .line 338
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    .line 320
    const v2, 0x7f0c0026

    invoke-static {p0, v2}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 324
    :cond_2
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v2, :cond_3

    .line 325
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v2}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 329
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 330
    .local v0, f:Landroid/content/IntentFilter;
    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const-string v2, "com.android.music.queuechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/music/PlaylistBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 333
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v4}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 336
    invoke-static {p0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 337
    invoke-static {p0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 265
    .local v0, a:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapterSent:Z

    .line 266
    return-object v0
.end method
