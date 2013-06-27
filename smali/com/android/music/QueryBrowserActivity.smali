.class public Lcom/android/music/QueryBrowserActivity;
.super Landroid/app/ListActivity;
.source "QueryBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/QueryBrowserActivity$QueryListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

.field private mAdapterSent:Z

.field mDeleteReceiver:Landroid/content/BroadcastReceiver;

.field private mDrmPlayListener:Landroid/content/BroadcastReceiver;

.field private mFilterString:Ljava/lang/String;

.field private mQueryCursor:Landroid/database/Cursor;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;

.field private mTrackList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/android/music/QueryBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/QueryBrowserActivity$1;-><init>(Lcom/android/music/QueryBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mDeleteReceiver:Landroid/content/BroadcastReceiver;

    .line 303
    new-instance v0, Lcom/android/music/QueryBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/QueryBrowserActivity$2;-><init>(Lcom/android/music/QueryBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 321
    new-instance v0, Lcom/android/music/QueryBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/QueryBrowserActivity$3;-><init>(Lcom/android/music/QueryBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 334
    new-instance v0, Lcom/android/music/QueryBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/android/music/QueryBrowserActivity$4;-><init>(Lcom/android/music/QueryBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mDrmPlayListener:Landroid/content/BroadcastReceiver;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/QueryBrowserActivity;)Lcom/android/music/QueryBrowserActivity$QueryListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/QueryBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/QueryBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/QueryBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/music/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "async"
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 490
    if-nez p2, :cond_0

    .line 491
    const-string p2, ""

    .line 493
    :cond_0
    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v1

    const/4 v0, 0x1

    const-string v5, "mime_type"

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const-string v5, "artist"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "album"

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, "title"

    aput-object v5, v4, v0

    const/4 v0, 0x5

    const-string v5, "data1"

    aput-object v5, v4, v0

    const/4 v0, 0x6

    const-string v5, "data2"

    aput-object v5, v4, v0

    .line 503
    .local v4, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://media/external/audio/search/fancy/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 506
    .local v3, search:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 507
    .local v11, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 508
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :goto_0
    return-object v11

    :cond_1
    move-object v5, p0

    move-object v6, v3

    move-object v7, v4

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    .line 510
    invoke-static/range {v5 .. v10}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_0
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 289
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/music/QueryBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 296
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    goto :goto_0

    .line 292
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 368
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/music/MusicUtils;->isSDCardAvaiable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 369
    :cond_1
    invoke-static {p0}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 370
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 371
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 374
    :cond_2
    invoke-static {p0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 349
    packed-switch p1, :pswitch_data_0

    .line 359
    :goto_0
    return-void

    .line 351
    :pswitch_0
    const-string v0, "QueryBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result Code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-nez p2, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity;->finish()V

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->setVolumeControlStream(I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    .line 104
    invoke-static {p0, p0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 106
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 261
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mDeleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    :goto_1
    iget-boolean v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapterSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 278
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 279
    iput-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    .line 281
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mDrmPlayListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/android/music/QueryBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 283
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 284
    return-void

    .line 262
    :catch_0
    move-exception v0

    goto :goto_1

    .line 255
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 25
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    move-object v4, v0

    invoke-interface {v4}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    move-object v4, v0

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    move-object v5, v0

    const-string v6, "mime_type"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 390
    .local v23, selectedType:Ljava/lang/String;
    const-string v4, "artist"

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 391
    new-instance v17, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v17, intent:Landroid/content/Intent;
    const/high16 v4, 0x400

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 393
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.dir/album"

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v4, "artist"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 396
    .end local v17           #intent:Landroid/content/Intent;
    :cond_2
    const-string v4, "album"

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 397
    new-instance v17, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .restart local v17       #intent:Landroid/content/Intent;
    const/high16 v4, 0x400

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 399
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.dir/track"

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v4, "album"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 402
    .end local v17           #intent:Landroid/content/Intent;
    :cond_3
    if-ltz p3, :cond_7

    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-ltz v4, :cond_7

    .line 403
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [J

    move-object/from16 v18, v0

    const/4 v4, 0x0

    aput-wide p4, v18, v4

    .line 405
    .local v18, list:[J
    new-instance v13, Lcom/sec/android/app/music/MusicDrmManager;

    invoke-direct {v13}, Lcom/sec/android/app/music/MusicDrmManager;-><init>()V

    .line 406
    .local v13, drmManager:Lcom/sec/android/app/music/MusicDrmManager;
    const/16 v16, 0x0

    .line 407
    .local v16, filePath:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "_data"

    aput-object v5, v6, v4

    .line 412
    .local v6, cols:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 414
    .local v7, where:Ljava/lang/String;
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 416
    .local v12, cursorp:Landroid/database/Cursor;
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 417
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 419
    :cond_4
    const-string v4, "_data"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 421
    const-string v4, "QueryBrowserActivity"

    const-string v5, "onListItemClick filePath"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-wide/from16 v10, p4

    .line 425
    .local v10, audioId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    move-object v5, v0

    const-string v6, "audio_id"

    .end local v6           #cols:[Ljava/lang/String;
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v10

    .line 430
    :goto_1
    const-string v4, "QueryBrowserActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Before DRM Cheing...audioId is < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :try_start_1
    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 435
    const-string v4, "QueryBrowserActivity"

    const-string v5, "This is DRM file"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v4, 0x2

    move v0, v4

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 437
    .local v21, popupStr:[I
    const/4 v4, 0x2

    move v0, v4

    new-array v0, v0, [Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    move-object/from16 v24, v0

    .line 438
    .local v24, softkeys:[Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    const/4 v4, 0x1

    move-object v0, v13

    move v1, v4

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/music/MusicDrmManager;->getDrmPopup(Z[I[Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;)I

    move-result v22

    .line 439
    .local v22, popupType:I
    if-nez v22, :cond_5

    .line 440
    const-string v4, "QueryBrowserActivity"

    const-string v5, "DRM_VALID_NOPOPUP"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 459
    .end local v21           #popupStr:[I
    .end local v22           #popupType:I
    .end local v24           #softkeys:[Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    :catch_0
    move-exception v4

    move-object v14, v4

    .line 461
    .local v14, e:Ljava/io/FileNotFoundException;
    const-string v4, "QueryBrowserActivity"

    const-string v5, "onListItemClick FileNotFoundException"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 426
    .end local v14           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    move-object v15, v4

    .line 427
    .local v15, ex:Ljava/lang/IllegalArgumentException;
    move-wide/from16 v10, p4

    goto :goto_1

    .line 443
    .end local v15           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v21       #popupStr:[I
    .restart local v22       #popupType:I
    .restart local v24       #softkeys:[Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    :cond_5
    :try_start_2
    new-instance v20, Lcom/sec/android/app/music/DrmPopupData;

    invoke-direct/range {v20 .. v20}, Lcom/sec/android/app/music/DrmPopupData;-><init>()V

    .line 444
    .local v20, popupData:Lcom/sec/android/app/music/DrmPopupData;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sec/android/app/music/DrmPopupData;->popupStrings:[I

    .line 445
    invoke-virtual {v13}, Lcom/sec/android/app/music/MusicDrmManager;->getRemainedCounts()I

    move-result v4

    move v0, v4

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sec/android/app/music/DrmPopupData;->remainCount:I

    .line 446
    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sec/android/app/music/DrmPopupData;->popupType:I

    .line 447
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sec/android/app/music/DrmPopupData;->popupFilePath:Ljava/lang/String;

    .line 448
    move-wide v0, v10

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sec/android/app/music/DrmPopupData;->id:J

    .line 449
    move/from16 v0, p3

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sec/android/app/music/DrmPopupData;->position:I

    .line 450
    new-instance v19, Lcom/sec/android/app/music/DrmServicePopup;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/music/DrmServicePopup;-><init>(Landroid/content/Context;Lcom/sec/android/app/music/DrmPopupData;)V

    .line 451
    .local v19, popup:Lcom/sec/android/app/music/DrmServicePopup;
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/music/DrmServicePopup;->show()V

    goto/16 :goto_0

    .line 455
    .end local v19           #popup:Lcom/sec/android/app/music/DrmServicePopup;
    .end local v20           #popupData:Lcom/sec/android/app/music/DrmPopupData;
    .end local v21           #popupStr:[I
    .end local v22           #popupType:I
    .end local v24           #softkeys:[Lcom/sec/android/app/music/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    :cond_6
    const-string v4, "QueryBrowserActivity"

    const-string v5, "NO DrmFile"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 465
    .end local v7           #where:Ljava/lang/String;
    .end local v10           #audioId:J
    .end local v12           #cursorp:Landroid/database/Cursor;
    .end local v13           #drmManager:Lcom/sec/android/app/music/MusicDrmManager;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v18           #list:[J
    :cond_7
    const-string v4, "QueryBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid position/id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 478
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 486
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 481
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    .line 482
    const/4 v0, 0x1

    goto :goto_0

    .line 478
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 246
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 247
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapterSent:Z

    .line 240
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 24
    .parameter "name"
    .parameter "service"

    .prologue
    .line 111
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v15, f:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v3, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v3, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v3, "file"

    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/music/QueryBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/QueryBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 123
    .local v19, intent:Landroid/content/Intent;
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 125
    .local v11, action:Ljava/lang/String;
    :goto_0
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 127
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    .line 128
    .local v23, uri:Landroid/net/Uri;
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    .line 129
    .local v21, path:Ljava/lang/String;
    const-string v3, "QueryBrowserActivity"

    const-string v4, "ACTION_VIEW path"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v3, "content://media/external/audio/media/"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v18

    .line 133
    .local v18, id:Ljava/lang/String;
    const/4 v3, 0x1

    move v0, v3

    new-array v0, v0, [J

    move-object/from16 v20, v0

    const/4 v3, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v20, v3

    .line 134
    .local v20, list:[J
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/QueryBrowserActivity;->finish()V

    .line 231
    .end local v18           #id:Ljava/lang/String;
    .end local v20           #list:[J
    .end local v21           #path:Ljava/lang/String;
    .end local v23           #uri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 123
    .end local v11           #action:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    move-object v11, v3

    goto :goto_0

    .line 137
    .restart local v11       #action:Ljava/lang/String;
    .restart local v21       #path:Ljava/lang/String;
    .restart local v23       #uri:Landroid/net/Uri;
    :cond_1
    const-string v3, "content://media/external/audio/albums/"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    new-instance v17, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v17, i:Landroid/content/Intent;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "vnd.android.cursor.dir/track"

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v3, "album"

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/QueryBrowserActivity;->finish()V

    goto :goto_1

    .line 145
    .end local v17           #i:Landroid/content/Intent;
    :cond_2
    const-string v3, "content://media/external/audio/artists/"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 147
    new-instance v17, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .restart local v17       #i:Landroid/content/Intent;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "vnd.android.cursor.dir/album"

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v3, "artist"

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/QueryBrowserActivity;->finish()V

    goto :goto_1

    .line 156
    .end local v17           #i:Landroid/content/Intent;
    .end local v21           #path:Ljava/lang/String;
    .end local v23           #uri:Landroid/net/Uri;
    :cond_3
    if-eqz v19, :cond_4

    .line 157
    const-string v3, "QueryBrowserActivity"

    const-string v4, "intent is not null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v3, "query"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 161
    :cond_4
    if-eqz v19, :cond_5

    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 165
    const-string v3, "android.intent.extra.focus"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 166
    .local v16, focus:Ljava/lang/String;
    const-string v3, "android.intent.extra.artist"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 167
    .local v13, artist:Ljava/lang/String;
    const-string v3, "android.intent.extra.album"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 168
    .local v12, album:Ljava/lang/String;
    const-string v3, "android.intent.extra.title"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 169
    .local v22, title:Ljava/lang/String;
    const-string v3, "QueryBrowserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "focus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v3, "QueryBrowserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v3, "QueryBrowserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "album : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v3, "QueryBrowserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-eqz v16, :cond_5

    .line 174
    const-string v3, "audio/"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v22, :cond_6

    .line 175
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 191
    .end local v12           #album:Ljava/lang/String;
    .end local v13           #artist:Ljava/lang/String;
    .end local v16           #focus:Ljava/lang/String;
    .end local v22           #title:Ljava/lang/String;
    :cond_5
    :goto_2
    const v3, 0x7f03000e

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/music/QueryBrowserActivity;->setContentView(I)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/QueryBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    move-object v3, v0

    if-nez v3, :cond_9

    .line 195
    new-instance v3, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/music/QueryBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const v6, 0x7f030014

    const/4 v7, 0x0

    const/4 v5, 0x0

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    new-array v9, v5, [I

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    const-string v3, "QueryBrowserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAdapter is null_TextUtils.isEmpty(mFilterString):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 222
    :goto_3
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 223
    .local v10, a:Landroid/content/IntentFilter;
    const-string v3, "com.android.music.drm.play"

    invoke-virtual {v10, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mDrmPlayListener:Landroid/content/BroadcastReceiver;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/music/QueryBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .local v14, deleteFilter:Landroid/content/IntentFilter;
    const-string v3, "QueryBrowserActivity.DeleteItems"

    invoke-virtual {v14, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mDeleteReceiver:Landroid/content/BroadcastReceiver;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/music/QueryBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 176
    .end local v10           #a:Landroid/content/IntentFilter;
    .end local v14           #deleteFilter:Landroid/content/IntentFilter;
    .restart local v12       #album:Ljava/lang/String;
    .restart local v13       #artist:Ljava/lang/String;
    .restart local v16       #focus:Ljava/lang/String;
    .restart local v22       #title:Ljava/lang/String;
    :cond_6
    const-string v3, "vnd.android.cursor.item/album"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 177
    if-eqz v12, :cond_5

    .line 178
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 179
    if-eqz v13, :cond_5

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto/16 :goto_2

    .line 183
    :cond_7
    const-string v3, "vnd.android.cursor.item/artist"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 184
    if-eqz v13, :cond_5

    .line 185
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto/16 :goto_2

    .line 207
    .end local v12           #album:Ljava/lang/String;
    .end local v13           #artist:Ljava/lang/String;
    .end local v16           #focus:Ljava/lang/String;
    .end local v22           #title:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setFilterText(Ljava/lang/String;)V

    .line 208
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto/16 :goto_3

    .line 211
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->setActivity(Lcom/android/music/QueryBrowserActivity;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    .line 214
    const-string v3, "QueryBrowserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAdapter is not null_mQueryCursor : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    move-object v3, v0

    if-eqz v3, :cond_a

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/music/QueryBrowserActivity;->init(Landroid/database/Cursor;)V

    goto/16 :goto_3

    .line 218
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 235
    return-void
.end method
