.class public Lcom/android/music/MusicPicker;
.super Landroid/app/ListActivity;
.source "MusicPicker.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MusicPicker$QueryHandler;,
        Lcom/android/music/MusicPicker$TrackListAdapter;
    }
.end annotation


# static fields
.field static final CURSOR_COLS:[Ljava/lang/String;

.field static sFormatBuilder:Ljava/lang/StringBuilder;

.field static sFormatter:Ljava/util/Formatter;

.field static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

.field mBaseUri:Landroid/net/Uri;

.field mCancelButton:Landroid/view/View;

.field mCursor:Landroid/database/Cursor;

.field mListContainer:Landroid/view/View;

.field mListHasFocus:Z

.field mListShown:Z

.field mListState:Landroid/os/Parcelable;

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field mOkayButton:Landroid/view/View;

.field mPlayingId:J

.field mProgressContainer:Landroid/view/View;

.field mQueryHandler:Lcom/android/music/MusicPicker$QueryHandler;

.field mSelectedId:J

.field mSelectedUri:Landroid/net/Uri;

.field mSortMode:I

.field mSortOrder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 90
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const-string v1, "artist"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "track"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/music/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 105
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/music/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/music/MusicPicker;->sFormatter:Ljava/util/Formatter;

    .line 107
    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, Lcom/android/music/MusicPicker;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 65
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/MusicPicker;->mSortMode:I

    .line 144
    iput-wide v1, p0, Lcom/android/music/MusicPicker;->mSelectedId:J

    .line 150
    iput-wide v1, p0, Lcom/android/music/MusicPicker;->mPlayingId:J

    .line 375
    return-void
.end method


# virtual methods
.method doQuery(ZLjava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "sync"
    .parameter "filterstring"

    .prologue
    const/16 v3, 0x2a

    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 593
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mQueryHandler:Lcom/android/music/MusicPicker$QueryHandler;

    invoke-virtual {v0, v3}, Lcom/android/music/MusicPicker$QueryHandler;->cancelOperation(I)V

    .line 595
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    iget-object v1, p0, Lcom/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 603
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "filter"

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 607
    :cond_0
    if-eqz p1, :cond_1

    .line 609
    :try_start_0
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 619
    :goto_0
    return-object v0

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/music/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 615
    invoke-virtual {p0, v5}, Lcom/android/music/MusicPicker;->setProgressBarIndeterminateVisibility(Z)V

    .line 616
    iget-object v2, p0, Lcom/android/music/MusicPicker;->mQueryHandler:Lcom/android/music/MusicPicker$QueryHandler;

    sget-object v6, Lcom/android/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    move-object v4, v11

    move-object v5, v1

    move-object v8, v11

    invoke-virtual/range {v2 .. v9}, Lcom/android/music/MusicPicker$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v0, v11

    .line 619
    goto :goto_0

    .line 611
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method makeListShown()V
    .locals 2

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/android/music/MusicPicker;->mListShown:Z

    if-nez v0, :cond_0

    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MusicPicker;->mListShown:Z

    .line 573
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mProgressContainer:Landroid/view/View;

    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 575
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mProgressContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mListContainer:Landroid/view/View;

    const/high16 v1, 0x10a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 578
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mListContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 580
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 679
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 681
    :pswitch_0
    iget-wide v0, p0, Lcom/android/music/MusicPicker;->mSelectedId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 682
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/music/MusicPicker;->setResult(ILandroid/content/Intent;)V

    .line 683
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->finish()V

    goto :goto_0

    .line 688
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->finish()V

    goto :goto_0

    .line 679
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0031
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-ne v0, p1, :cond_0

    .line 661
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 662
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 664
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MusicPicker;->mPlayingId:J

    .line 665
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 667
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x0

    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    .line 407
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 409
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->requestWindowFeature(I)Z

    .line 411
    const/4 v11, 0x1

    .line 412
    .local v11, sortMode:I
    if-nez p1, :cond_3

    .line 413
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 424
    :goto_0
    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 425
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 435
    :cond_0
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->setContentView(I)V

    .line 437
    const-string v0, "title_key"

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 439
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 441
    .local v3, listView:Landroid/widget/ListView;
    invoke-virtual {v3, v12}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 443
    new-instance v0, Lcom/android/music/MusicPicker$TrackListAdapter;

    const v4, 0x7f03000b

    new-array v5, v12, [Ljava/lang/String;

    new-array v6, v12, [I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/music/MusicPicker$TrackListAdapter;-><init>(Lcom/android/music/MusicPicker;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

    .line 447
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 449
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 452
    invoke-virtual {v3, v12}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 454
    new-instance v0, Lcom/android/music/MusicPicker$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/music/MusicPicker$QueryHandler;-><init>(Lcom/android/music/MusicPicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mQueryHandler:Lcom/android/music/MusicPicker$QueryHandler;

    .line 456
    const v0, 0x7f0c002f

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mProgressContainer:Landroid/view/View;

    .line 457
    const v0, 0x7f0c0030

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mListContainer:Landroid/view/View;

    .line 459
    const v0, 0x7f0c0031

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mOkayButton:Landroid/view/View;

    .line 460
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mOkayButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    const v0, 0x7f0c0032

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mCancelButton:Landroid/view/View;

    .line 462
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 468
    .local v8, builder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v10

    .line 469
    .local v10, path:Ljava/lang/String;
    const/16 v0, 0x2f

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 470
    .local v9, idx:I
    if-ltz v9, :cond_1

    .line 471
    invoke-virtual {v10, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 473
    :cond_1
    invoke-virtual {v8, v10}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 474
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 478
    .local v7, baseSelectedUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v7, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/music/MusicPicker;->mSelectedId:J

    .line 485
    .end local v7           #baseSelectedUri:Landroid/net/Uri;
    .end local v8           #builder:Landroid/net/Uri$Builder;
    .end local v9           #idx:I
    .end local v10           #path:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v11}, Lcom/android/music/MusicPicker;->setSortMode(I)Z

    .line 486
    .end local v3           #listView:Landroid/widget/ListView;
    :goto_1
    return-void

    .line 416
    :cond_3
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 420
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 421
    const-string v0, "focused"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/MusicPicker;->mListHasFocus:Z

    .line 422
    const-string v0, "sortMode"

    invoke-virtual {p1, v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_0

    .line 427
    :cond_4
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 428
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 429
    const-string v0, "MusicPicker"

    const-string v1, "No data URI given to PICK action"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->finish()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 501
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 502
    const v0, 0x7f09008a

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 503
    const/4 v0, 0x2

    const v1, 0x7f090088

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 504
    const/4 v0, 0x3

    const v1, 0x7f090089

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 505
    return v3
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 630
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->setSelected(Landroid/database/Cursor;)V

    .line 631
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 494
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->setSortMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const/4 v0, 0x1

    .line 497
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 518
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 519
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->stopMediaPlayer()V

    .line 520
    return-void
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 489
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 490
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    .line 491
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 509
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 512
    const-string v0, "liststate"

    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 513
    const-string v0, "focused"

    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 514
    const-string v0, "sortMode"

    iget v1, p0, Lcom/android/music/MusicPicker;->mSortMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 515
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 523
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 529
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/music/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 530
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/MusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 531
    return-void
.end method

.method setSelected(Landroid/database/Cursor;)V
    .locals 7
    .parameter "c"

    .prologue
    .line 634
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 635
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 636
    .local v1, newId:J
    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 638
    iput-wide v1, p0, Lcom/android/music/MusicPicker;->mSelectedId:J

    .line 639
    iget-wide v4, p0, Lcom/android/music/MusicPicker;->mPlayingId:J

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v4, :cond_2

    .line 640
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->stopMediaPlayer()V

    .line 641
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 643
    :try_start_0
    iget-object v4, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v4, p0, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 644
    iget-object v4, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 645
    iget-object v4, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 646
    iget-object v4, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 647
    iget-object v4, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 648
    iput-wide v1, p0, Lcom/android/music/MusicPicker;->mPlayingId:J

    .line 649
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidateViews()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :cond_1
    :goto_0
    return-void

    .line 650
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 651
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MusicPicker"

    const-string v5, "Unable to play track"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 653
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    iget-object v4, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_1

    .line 654
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->stopMediaPlayer()V

    .line 655
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0
.end method

.method setSortMode(I)Z
    .locals 4
    .parameter "sortMode"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 538
    iget v0, p0, Lcom/android/music/MusicPicker;->mSortMode:I

    if-eq p1, v0, :cond_0

    .line 539
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 563
    :goto_0
    return v0

    .line 541
    :pswitch_0
    iput p1, p0, Lcom/android/music/MusicPicker;->mSortMode:I

    .line 542
    const-string v0, "title_key"

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 543
    invoke-virtual {p0, v1, v3}, Lcom/android/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    move v0, v2

    .line 544
    goto :goto_0

    .line 546
    :pswitch_1
    iput p1, p0, Lcom/android/music/MusicPicker;->mSortMode:I

    .line 547
    const-string v0, "album_key ASC, track ASC, title_key ASC"

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 550
    invoke-virtual {p0, v1, v3}, Lcom/android/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    move v0, v2

    .line 551
    goto :goto_0

    .line 553
    :pswitch_2
    iput p1, p0, Lcom/android/music/MusicPicker;->mSortMode:I

    .line 554
    const-string v0, "artist_key ASC, album_key ASC, track ASC, title_key ASC"

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 558
    invoke-virtual {p0, v1, v3}, Lcom/android/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    move v0, v2

    .line 559
    goto :goto_0

    .line 539
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method stopMediaPlayer()V
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 672
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 673
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 674
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MusicPicker;->mPlayingId:J

    .line 676
    :cond_0
    return-void
.end method
