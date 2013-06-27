.class public Lcom/android/music/ArtistAlbumBrowserActivity;
.super Landroid/app/ExpandableListActivity;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    }
.end annotation


# static fields
.field private static mForceStop:Z

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

.field private mAdapterSent:Z

.field private mArtistCursor:Landroid/database/Cursor;

.field private mCurrentAlbumId:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistId:Ljava/lang/String;

.field private mCurrentArtistName:Ljava/lang/String;

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

    .line 92
    sput v0, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    .line 93
    sput v0, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/music/ArtistAlbumBrowserActivity;->mForceStop:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastOrientation:I

    .line 308
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/ArtistAlbumBrowserActivity$1;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 315
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/ArtistAlbumBrowserActivity$2;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 329
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/ArtistAlbumBrowserActivity$3;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 731
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/ArtistAlbumBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/ArtistAlbumBrowserActivity;)Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/music/ArtistAlbumBrowserActivity;->mForceStop:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "async"
    .parameter "filter"

    .prologue
    .line 710
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "artist"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "number_of_albums"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "number_of_tracks"

    aput-object v1, v4, v0

    .line 716
    .local v4, cols:[Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 717
    .local v3, uri:Landroid/net/Uri;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 720
    :cond_0
    const/4 v8, 0x0

    .line 721
    .local v8, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    .line 722
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "artist_key"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :goto_0
    return-object v8

    .line 725
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "artist_key"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0
.end method

.method private initLayout()V
    .locals 3

    .prologue
    const v2, 0x7f0c0023

    .line 164
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 166
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->setContentView(I)V

    .line 168
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 170
    invoke-static {p0, v2}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 171
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    .line 172
    .local v0, lv:Landroid/widget/ExpandableListView;
    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 177
    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setNextFocusUpId(I)V

    .line 179
    return-void
.end method

.method private keepFocusItem()V
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    .line 217
    .local v0, lv:Landroid/widget/ExpandableListView;
    if-eqz v0, :cond_0

    .line 218
    sget v1, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 220
    :cond_0
    return-void
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 385
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setTitle(I)V

    .line 386
    return-void
.end method


# virtual methods
.method doSearch()V
    .locals 7

    .prologue
    const-string v6, "android.intent.extra.focus"

    const-string v5, "android.intent.extra.artist"

    .line 648
    const/4 v2, 0x0

    .line 649
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 651
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 652
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 655
    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 656
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 657
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 658
    const-string v3, "android.intent.extra.artist"

    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    const-string v3, "android.intent.extra.focus"

    const-string v3, "vnd.android.cursor.item/artist"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    :goto_0
    const v3, 0x7f09004b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 674
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/music/ArtistAlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 677
    return-void

    .line 661
    :cond_0
    iget-boolean v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v3, :cond_2

    .line 662
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    move-object v2, v1

    .line 669
    :cond_1
    :goto_1
    const-string v3, "android.intent.extra.artist"

    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    const-string v3, "android.intent.extra.album"

    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    const-string v3, "android.intent.extra.focus"

    const-string v3, "vnd.android.cursor.item/album"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 664
    :cond_2
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    move-object v2, v1

    .line 665
    iget-boolean v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    if-nez v3, :cond_1

    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-nez v1, :cond_0

    .line 382
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 359
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/music/MusicUtils;->isSDCardAvaiable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 360
    :cond_1
    invoke-static {p0}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 361
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->closeContextMenu()V

    .line 363
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->closeOptionsMenu()V

    .line 365
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 370
    :cond_2
    sget v1, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    if-ltz v1, :cond_3

    .line 371
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    .line 372
    .local v0, elv:Landroid/widget/ExpandableListView;
    sget v1, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    sget v2, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 379
    .end local v0           #elv:Landroid/widget/ExpandableListView;
    :cond_3
    invoke-static {p0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 380
    const v1, 0x7f0c0023

    invoke-static {p0, v1}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 381
    invoke-direct {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 681
    sparse-switch p1, :sswitch_data_0

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 683
    :sswitch_0
    if-nez p2, :cond_1

    .line 684
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->finish()V

    goto :goto_0

    .line 686
    :cond_1
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v2}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 691
    :sswitch_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 692
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 693
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, list:[J
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 696
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 700
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 697
    :cond_3
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 698
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    goto :goto_1

    .line 681
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 6
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const-string v5, "album"

    .line 391
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 393
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v2, intent:Landroid/content/Intent;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "vnd.android.cursor.dir/track"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v3, "album"

    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v3

    invoke-interface {v3, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 397
    .local v1, c:Landroid/database/Cursor;
    const-string v3, "album"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, album:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "<unknown>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 400
    :cond_0
    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v3, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 401
    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 402
    const-string v3, "artist"

    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/music/ArtistAlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 405
    const/4 v3, 0x1

    return v3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    .line 185
    .local v0, lv:Landroid/widget/ExpandableListView;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v1

    sput v1, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    .line 190
    :cond_0
    iget v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_3

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_4

    .line 195
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 201
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->initLayout()V

    .line 203
    invoke-direct {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->keepFocusItem()V

    .line 205
    invoke-static {p0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    .line 207
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastOrientation:I

    .line 210
    :cond_3
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 211
    return-void

    .line 197
    :cond_4
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 570
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 644
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 573
    :pswitch_1
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 578
    :goto_1
    invoke-static {p0, v0, v4}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    move v0, v5

    .line 579
    goto :goto_0

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    goto :goto_1

    .line 583
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 587
    :goto_2
    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    move v0, v5

    .line 588
    goto :goto_0

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    goto :goto_2

    .line 592
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 593
    const-class v1, Lcom/android/music/CreatePlaylist;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 594
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v5

    .line 595
    goto :goto_0

    .line 599
    :pswitch_4
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 603
    :goto_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "playlist"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 604
    invoke-static {p0, v0, v1, v2}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    move v0, v5

    .line 605
    goto :goto_0

    .line 599
    :cond_2
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    goto :goto_3

    .line 611
    :pswitch_5
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 612
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 614
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 615
    const v1, 0x7f09002c

    invoke-virtual {p0, v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 619
    :goto_4
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 630
    :goto_5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 631
    const-string v3, "description"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v0, "items"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 633
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 634
    const-class v1, Lcom/android/music/DeleteItems;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 635
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 636
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v5

    .line 637
    goto/16 :goto_0

    .line 617
    :cond_3
    const v1, 0x7f09009e

    invoke-virtual {p0, v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 621
    :cond_4
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    .line 623
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 624
    const v1, 0x7f09002b

    invoke-virtual {p0, v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 628
    :goto_6
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    .line 626
    :cond_5
    const v1, 0x7f09009d

    invoke-virtual {p0, v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 641
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->doSearch()V

    move v0, v5

    .line 642
    goto/16 :goto_0

    .line 570
    nop

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
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 107
    const-string v0, "test"

    const-string v1, "[onCreate]"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sput-boolean v2, Lcom/android/music/ArtistAlbumBrowserActivity;->mForceStop:Z

    .line 111
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 114
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setVolumeControlStream(I)V

    .line 115
    if-eqz p1, :cond_0

    .line 116
    const-string v0, "selectedalbum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 117
    const-string v0, "selectedalbumname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 118
    const-string v0, "selectedartist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 119
    const-string v0, "selectedartistname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 121
    :cond_0
    invoke-static {p0, p0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 123
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .local v10, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v0, "file"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v10}, Lcom/android/music/ArtistAlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    invoke-direct {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->initLayout()V

    .line 133
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 134
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-nez v0, :cond_1

    .line 136
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v4, 0x7f030017

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    const v7, 0x7f030015

    new-array v8, v2, [Ljava/lang/String;

    new-array v9, v2, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 146
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 147
    const v0, 0x7f090099

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setTitle(I)V

    .line 148
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 159
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->setActivity(Lcom/android/music/ArtistAlbumBrowserActivity;)V

    .line 151
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 152
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    .line 153
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    .line 507
    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x0

    const v10, 0x7f090061

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 508
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const v10, 0x7f09001a

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v6

    .line 509
    .local v6, sub:Landroid/view/SubMenu;
    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 510
    const/4 v7, 0x0

    const/16 v8, 0xa

    const/4 v9, 0x0

    const v10, 0x7f09002e

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 512
    move-object v0, p3

    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v5, v0

    .line 514
    .local v5, mi:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v7, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v4

    .line 515
    .local v4, itemtype:I
    iget-wide v7, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    .line 516
    .local v3, gpos:I
    iget-wide v7, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    .line 517
    .local v2, cpos:I
    if-nez v4, :cond_5

    .line 518
    const/4 v7, -0x1

    if-ne v3, v7, :cond_1

    .line 520
    const-string v7, "Artist/Album"

    const-string v8, "no group"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v7

    sub-int/2addr v3, v7

    .line 524
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v7, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 525
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 526
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v9, "artist"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 527
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 528
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    const-string v8, "<unknown>"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    .line 530
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    .line 531
    iget-boolean v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    if-eqz v7, :cond_4

    .line 532
    const v7, 0x7f090091

    invoke-virtual {p0, v7}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0

    .line 528
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 534
    :cond_4
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 535
    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    const v10, 0x7f090080

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 538
    :cond_5
    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    .line 539
    const/4 v7, -0x1

    if-ne v2, v7, :cond_6

    .line 541
    const-string v7, "Artist/Album"

    const-string v8, "no child"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    :cond_6
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v7

    invoke-interface {v7, v3, v2}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 545
    .local v1, c:Landroid/database/Cursor;
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 546
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 547
    iget-wide v7, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 548
    const-string v7, "album"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 549
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v7

    sub-int/2addr v3, v7

    .line 550
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v7, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 551
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v9, "artist"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 553
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    const-string v8, "<unknown>"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_7
    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    .line 555
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v8, "<unknown>"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_8
    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    .line 557
    iget-boolean v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v7, :cond_c

    .line 558
    const v7, 0x7f090090

    invoke-virtual {p0, v7}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 562
    :goto_4
    iget-boolean v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    if-nez v7, :cond_0

    .line 563
    :cond_9
    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    const v10, 0x7f090080

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 553
    :cond_a
    const/4 v7, 0x0

    goto :goto_2

    .line 555
    :cond_b
    const/4 v7, 0x0

    goto :goto_3

    .line 560
    :cond_c
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 436
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 438
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
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

    .line 440
    :cond_0
    const/16 v1, 0x14

    const v2, 0x7f0900aa

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020021

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 443
    :cond_1
    const/16 v1, 0x8

    const v2, 0x7f09005d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 444
    const/16 v1, 0x9

    const v2, 0x7f090085

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020029

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 445
    return v4
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    .line 244
    .local v1, lv:Landroid/widget/ExpandableListView;
    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v2

    sput v2, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    .line 246
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 247
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sput v2, Lcom/android/music/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    .line 252
    .end local v0           #cv:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v2}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 257
    iget-boolean v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapterSent:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v2, :cond_1

    .line 258
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 263
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/music/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 264
    iput-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 265
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/music/ArtistAlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 266
    invoke-virtual {p0, v3}, Lcom/android/music/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 267
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onDestroy()V

    .line 268
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 412
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/music/MusicUtils;->isSDCardAvaiable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 415
    :cond_0
    const/16 v0, 0x54

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    :cond_1
    move v0, v1

    .line 431
    :goto_0
    return v0

    .line 418
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/ExpandableListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 422
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 431
    invoke-super {p0, p1, p2}, Landroid/app/ExpandableListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 424
    :pswitch_0
    const v0, 0x7f0c0024

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    move v0, v1

    .line 425
    goto :goto_0

    .line 427
    :pswitch_1
    const v0, 0x7f0c0026

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    move v0, v1

    .line 428
    goto :goto_0

    .line 422
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v10, 0x1

    .line 464
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 466
    .local v8, intent:Landroid/content/Intent;
    const-string v9, "http://waprd.telstra.com/redirect?target=music-g"

    .line 467
    .local v9, uri:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 502
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 471
    :sswitch_0
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 472
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

    .line 473
    :cond_1
    const-string v0, "com.android.browser"

    const-string v1, "com.android.browser.BrowserActivity"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string v0, "http://waprd.telstra.com/redirect?target=music-g"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 475
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const/high16 v0, 0x1000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 479
    invoke-virtual {p0, v8}, Lcom/android/music/ArtistAlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 480
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->finish()V

    goto :goto_0

    .line 485
    .end local v6           #code:Ljava/lang/String;
    :sswitch_1
    invoke-static {}, Lcom/android/music/MusicUtils;->togglePartyShuffle()V

    move v0, v10

    .line 488
    goto :goto_1

    .line 492
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

    .line 496
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 497
    invoke-static {p0, v7}, Lcom/android/music/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 498
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v10

    .line 500
    goto :goto_1

    .line 467
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
    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 349
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onPause()V

    .line 350
    return-void

    .line 344
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 450
    invoke-static {p1}, Lcom/android/music/MusicUtils;->setPartyShuffleMenuIcon(Landroid/view/Menu;)V

    .line 451
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 453
    const/4 v0, 0x1

    .line 454
    .local v0, showMenu:Z
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 455
    const/4 v0, 0x0

    .line 457
    :cond_0
    return v0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v4, "test"

    .line 272
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onResume()V

    .line 275
    const-string v2, "test"

    const-string v2, "[onResume]"

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, status:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
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

    .line 283
    invoke-static {p0}, Lcom/android/music/MusicUtils;->checkLowStorageforMedia(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 284
    const-string v2, "test"

    const-string v2, "onResunme - CheckLowStorage"

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/music/ArtistAlbumBrowserActivity;->mForceStop:Z

    .line 286
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->finish()V

    .line 306
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-static {p0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    .line 296
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    .line 297
    const v2, 0x7f0c0023

    invoke-static {p0, v2}, Lcom/android/music/MusicUtils;->updateButtonBar(Landroid/app/Activity;I)Z

    .line 299
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 300
    .local v0, f:Landroid/content/IntentFilter;
    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v2, "com.android.music.queuechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5, v5}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 305
    invoke-static {p0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapterSent:Z

    .line 226
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 234
    const-string v0, "selectedalbum"

    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v0, "selectedalbumname"

    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "selectedartist"

    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "selectedartistname"

    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 239
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1065
    invoke-static {p0}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;)V

    .line 1066
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 1069
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->finish()V

    .line 1070
    return-void
.end method
