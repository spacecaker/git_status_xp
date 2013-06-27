.class public Lcom/android/music/AlbumBrowserActivity;
.super Landroid/app/ListActivity;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;
    }
.end annotation


# static fields
.field private static mForceStop:Z

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

.field private mAdapterSent:Z

.field private mAlbumCursor:Landroid/database/Cursor;

.field private mArtistId:Ljava/lang/String;

.field private mCurrentAlbumId:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field mIsUnknownAlbum:Z

.field mIsUnknownArtist:Z

.field private mLastOrientation:I

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 89
    sput v0, Lcom/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    .line 90
    sput v0, Lcom/android/music/AlbumBrowserActivity;->mLastListPosFine:I

    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/music/AlbumBrowserActivity;->mForceStop:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/AlbumBrowserActivity;->mLastOrientation:I

    .line 300
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/AlbumBrowserActivity$1;-><init>(Lcom/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 307
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/AlbumBrowserActivity$2;-><init>(Lcom/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 321
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/AlbumBrowserActivity$3;-><init>(Lcom/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/AlbumBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/AlbumBrowserActivity;)Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/AlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/music/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/music/AlbumBrowserActivity;->mForceStop:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/music/AlbumBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/music/AlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "async"
    .parameter "filter"

    .prologue
    .line 632
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "artist"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "album"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "album_art"

    aput-object v1, v4, v0

    .line 638
    .local v4, cols:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 639
    .local v8, ret:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 640
    const-string v0, "external"

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 642
    .local v3, uri:Landroid/net/Uri;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 645
    :cond_0
    if-eqz p1, :cond_1

    .line 646
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "album_key"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :goto_0
    return-object v8

    .line 649
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "album_key"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 653
    .end local v3           #uri:Landroid/net/Uri;
    :cond_2
    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 654
    .restart local v3       #uri:Landroid/net/Uri;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 655
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 657
    :cond_3
    if-eqz p1, :cond_4

    .line 658
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "album_key"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 662
    :cond_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "album_key"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0
.end method

.method private initLayout()V
    .locals 3

    .prologue
    const v2, 0x7f0c0024

    .line 162
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/music/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/android/music/AlbumBrowserActivity;->setContentView(I)V

    .line 166
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/music/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    invoke-static {p0, v2}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 169
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 170
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 175
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setNextFocusUpId(I)V

    .line 177
    return-void
.end method

.method private keepFocusItem()V
    .locals 3

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 214
    .local v0, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 215
    sget v1, Lcom/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 217
    :cond_0
    return-void
.end method

.method private setTitle()V
    .locals 4

    .prologue
    .line 374
    const-string v0, ""

    .line 375
    .local v0, fancyName:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 376
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 377
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v3, "artist"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_0

    const-string v1, "<unknown>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    :cond_0
    const v1, 0x7f090091

    invoke-virtual {p0, v1}, Lcom/android/music/AlbumBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 384
    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 387
    :goto_0
    return-void

    .line 386
    :cond_2
    const v1, 0x7f09001c

    invoke-virtual {p0, v1}, Lcom/android/music/AlbumBrowserActivity;->setTitle(I)V

    goto :goto_0
.end method


# virtual methods
.method doSearch()V
    .locals 6

    .prologue
    const-string v5, " "

    .line 500
    const/4 v2, 0x0

    .line 501
    .local v2, title:Ljava/lang/CharSequence;
    const-string v1, ""

    .line 503
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 504
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 507
    const-string v2, ""

    .line 508
    iget-boolean v3, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-nez v3, :cond_0

    .line 509
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 510
    const-string v3, "android.intent.extra.album"

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 513
    :cond_0
    iget-boolean v3, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownArtist:Z

    if-nez v3, :cond_1

    .line 514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 515
    const-string v3, "android.intent.extra.artist"

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 520
    :cond_1
    const-string v3, "android.intent.extra.focus"

    const-string v4, "vnd.android.cursor.item/album"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const v3, 0x7f09004b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/music/AlbumBrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 522
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/music/AlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 525
    return-void
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-nez v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 349
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/music/MusicUtils;->isSDCardAvaiable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 350
    :cond_1
    invoke-static {p0}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 351
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->closeContextMenu()V

    .line 353
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->closeOptionsMenu()V

    .line 355
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 360
    :cond_2
    sget v0, Lcom/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    if-ltz v0, :cond_3

    .line 361
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    sget v2, Lcom/android/music/AlbumBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 368
    :cond_3
    invoke-static {p0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 369
    const v0, 0x7f0c0024

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 370
    invoke-direct {p0}, Lcom/android/music/AlbumBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 529
    sparse-switch p1, :sswitch_data_0

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 531
    :sswitch_0
    if-nez p2, :cond_1

    .line 532
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->finish()V

    goto :goto_0

    .line 534
    :cond_1
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v2}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/music/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 539
    :sswitch_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 540
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 541
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 542
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    .line 543
    .local v0, list:[J
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 529
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 183
    .local v0, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sput v1, Lcom/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    .line 188
    :cond_0
    iget v1, p0, Lcom/android/music/AlbumBrowserActivity;->mLastOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_3

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_4

    .line 193
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/android/music/AlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 198
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/music/AlbumBrowserActivity;->initLayout()V

    .line 200
    invoke-direct {p0}, Lcom/android/music/AlbumBrowserActivity;->keepFocusItem()V

    .line 202
    invoke-static {p0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    .line 204
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/music/AlbumBrowserActivity;->mLastOrientation:I

    .line 207
    :cond_3
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 208
    return-void

    .line 195
    :cond_4
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v1}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/music/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 444
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 496
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 447
    :pswitch_1
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    .line 448
    invoke-static {p0, v0, v4}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    move v0, v5

    .line 449
    goto :goto_0

    .line 453
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    .line 454
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    move v0, v5

    .line 455
    goto :goto_0

    .line 459
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 460
    const-class v1, Lcom/android/music/CreatePlaylist;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 461
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/music/AlbumBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v5

    .line 462
    goto :goto_0

    .line 466
    :pswitch_4
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    .line 467
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "playlist"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 468
    invoke-static {p0, v0, v1, v2}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    move v0, v5

    .line 469
    goto :goto_0

    .line 472
    :pswitch_5
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    .line 475
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    const v1, 0x7f09002b

    invoke-virtual {p0, v1}, Lcom/android/music/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 481
    :goto_1
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 482
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 483
    const-string v3, "description"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v1, "items"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 485
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 486
    const-class v1, Lcom/android/music/DeleteItems;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 487
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 488
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/music/AlbumBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v5

    .line 489
    goto/16 :goto_0

    .line 478
    :cond_0
    const v1, 0x7f09009d

    invoke-virtual {p0, v1}, Lcom/android/music/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 492
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->doSearch()V

    move v0, v5

    .line 493
    goto/16 :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "artist"

    .line 108
    const-string v0, "test"

    const-string v1, "[onCreate]"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sput-boolean v2, Lcom/android/music/AlbumBrowserActivity;->mForceStop:Z

    .line 113
    if-eqz p1, :cond_0

    .line 114
    const-string v0, "selectedalbum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 115
    const-string v0, "artist"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 119
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 122
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->setVolumeControlStream(I)V

    .line 123
    invoke-static {p0, p0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 125
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v7, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v0, "file"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/android/music/AlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    invoke-direct {p0}, Lcom/android/music/AlbumBrowserActivity;->initLayout()V

    .line 135
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    .line 136
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030014

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    .line 145
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    const v0, 0x7f090098

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->setTitle(I)V

    .line 147
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lcom/android/music/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 158
    :goto_1
    return-void

    .line 117
    .end local v7           #f:Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "artist"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    goto :goto_0

    .line 149
    .restart local v7       #f:Landroid/content/IntentFilter;
    :cond_1
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->setActivity(Lcom/android/music/AlbumBrowserActivity;)V

    .line 150
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 152
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_1

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lcom/android/music/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "<unknown>"

    .line 417
    const/4 v3, 0x5

    const v4, 0x7f090061

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 418
    const v3, 0x7f09001a

    invoke-interface {p1, v6, v7, v6, v3}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    .line 419
    .local v2, sub:Landroid/view/SubMenu;
    invoke-static {p0, v2}, Lcom/android/music/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 420
    const/16 v3, 0xa

    const v4, 0x7f09002e

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 422
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 423
    .local v1, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 424
    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 425
    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v5, "album"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 426
    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v5, "artist"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 428
    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    const-string v4, "<unknown>"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    move v3, v7

    :goto_0
    iput-boolean v3, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownArtist:Z

    .line 430
    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v4, "<unknown>"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    move v3, v7

    :goto_1
    iput-boolean v3, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownAlbum:Z

    .line 432
    iget-boolean v3, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v3, :cond_6

    .line 433
    const v3, 0x7f090090

    invoke-virtual {p0, v3}, Lcom/android/music/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 437
    :goto_2
    iget-boolean v3, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/music/AlbumBrowserActivity;->mIsUnknownArtist:Z

    if-nez v3, :cond_3

    .line 438
    :cond_2
    const/16 v3, 0xe

    const v4, 0x7f090080

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 440
    :cond_3
    return-void

    :cond_4
    move v3, v6

    .line 428
    goto :goto_0

    :cond_5
    move v3, v6

    .line 430
    goto :goto_1

    .line 435
    :cond_6
    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 562
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 564
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, code:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v4, :cond_0

    const-string v1, "TLP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 566
    :cond_0
    const/16 v1, 0x14

    const v2, 0x7f0900aa

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020021

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 568
    :cond_1
    const/16 v1, 0x8

    const v2, 0x7f09005d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 569
    const/16 v1, 0x9

    const v2, 0x7f090085

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020029

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 570
    return v4
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 239
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sput v2, Lcom/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    .line 241
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 242
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sput v2, Lcom/android/music/AlbumBrowserActivity;->mLastListPosFine:I

    .line 246
    .end local v0           #cv:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v2}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 251
    iget-boolean v2, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapterSent:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 257
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/music/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 258
    iput-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    .line 259
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/music/AlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 261
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 393
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/music/MusicUtils;->isSDCardAvaiable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 396
    :cond_0
    const/16 v0, 0x54

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    :cond_1
    move v0, v1

    .line 412
    :goto_0
    return v0

    .line 399
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 403
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 412
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 405
    :pswitch_0
    const v0, 0x7f0c0025

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    move v0, v1

    .line 406
    goto :goto_0

    .line 408
    :pswitch_1
    const v0, 0x7f0c0023

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    move v0, v1

    .line 409
    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 553
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string v1, "album"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const-string v1, "artist"

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 558
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v10, 0x1

    .line 589
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 590
    .local v8, intent:Landroid/content/Intent;
    const-string v9, "http://waprd.telstra.com/redirect?target=music-g"

    .line 592
    .local v9, uri:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 627
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 596
    :sswitch_0
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 597
    .local v6, code:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v0, "TEL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v10, :cond_1

    const-string v0, "TLP"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v10, :cond_0

    .line 598
    :cond_1
    const-string v0, "com.android.browser"

    const-string v1, "com.android.browser.BrowserActivity"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string v0, "http://waprd.telstra.com/redirect?target=music-g"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 600
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    const/high16 v0, 0x1000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 604
    invoke-virtual {p0, v8}, Lcom/android/music/AlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 605
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->finish()V

    goto :goto_0

    .line 610
    .end local v6           #code:Ljava/lang/String;
    :sswitch_1
    invoke-static {}, Lcom/android/music/MusicUtils;->togglePartyShuffle()V

    move v0, v10

    .line 613
    goto :goto_1

    .line 617
    :sswitch_2
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "is_music=1"

    const/4 v4, 0x0

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 621
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 622
    invoke-static {p0, v7}, Lcom/android/music/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 623
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v10

    .line 625
    goto :goto_1

    .line 592
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 332
    const-string v0, "test"

    const-string v1, "[onPause]"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 339
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 340
    return-void

    .line 336
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 575
    invoke-static {p1}, Lcom/android/music/MusicUtils;->setPartyShuffleMenuIcon(Landroid/view/Menu;)V

    .line 576
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 578
    const/4 v0, 0x1

    .line 579
    .local v0, showMenu:Z
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 580
    const/4 v0, 0x0

    .line 582
    :cond_0
    return v0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v4, "test"

    .line 265
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 267
    const-string v2, "test"

    const-string v2, "[onResume]"

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, status:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
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

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {p0}, Lcom/android/music/MusicUtils;->checkLowStorageforMedia(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 276
    const-string v2, "test"

    const-string v2, "onResunme - CheckLowStorage"

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/music/AlbumBrowserActivity;->mForceStop:Z

    .line 278
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->finish()V

    .line 298
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-static {p0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    .line 288
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    .line 289
    const v2, 0x7f0c0024

    invoke-static {p0, v2}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 291
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 292
    .local v0, f:Landroid/content/IntentFilter;
    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const-string v2, "com.android.music.queuechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/music/AlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 295
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5, v5}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 297
    invoke-static {p0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapterSent:Z

    .line 223
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 231
    const-string v0, "selectedalbum"

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "artist"

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 234
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "name"
    .parameter "service"

    .prologue
    .line 860
    invoke-static {p0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    .line 861
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->finish()V

    .line 865
    return-void
.end method
