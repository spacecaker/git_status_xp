.class Lcom/android/music/QueryBrowserActivity$QueryListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/QueryBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/music/QueryBrowserActivity;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/music/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 7
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v6, 0x0

    .line 534
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 516
    iput-object v6, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    .line 518
    iput-object v6, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    .line 535
    iput-object p2, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    .line 536
    new-instance v0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;-><init>(Lcom/android/music/QueryBrowserActivity$QueryListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 537
    return-void
.end method

.method static synthetic access$400(Lcom/android/music/QueryBrowserActivity$QueryListAdapter;)Lcom/android/music/QueryBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 17
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 552
    const v15, 0x7f0c001f

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 553
    .local v13, tv1:Landroid/widget/TextView;
    const v15, 0x7f0c0020

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 554
    .local v14, tv2:Landroid/widget/TextView;
    const v15, 0x7f0c002e

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 555
    .local v6, iv:Landroid/widget/ImageView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 556
    .local v11, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v11, :cond_1

    .line 558
    invoke-static/range {p3 .. p3}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;)V

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    const/4 v15, -0x2

    iput v15, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 562
    const/4 v15, -0x2

    iput v15, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 564
    const-string v15, "mime_type"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 567
    .local v7, mimetype:Ljava/lang/String;
    if-nez v7, :cond_2

    .line 568
    const-string v7, "audio/"

    .line 570
    :cond_2
    const-string v15, "artist"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 571
    const v15, 0x7f02002b

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 572
    const-string v15, "artist"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 574
    .local v8, name:Ljava/lang/String;
    move-object v4, v8

    .line 575
    .local v4, displayname:Ljava/lang/String;
    const/4 v5, 0x0

    .line 576
    .local v5, isunknown:Z
    if-eqz v8, :cond_3

    const-string v15, "<unknown>"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 577
    :cond_3
    const v15, 0x7f090091

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 578
    const/4 v5, 0x1

    .line 580
    :cond_4
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    const-string v15, "data1"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 583
    .local v9, numalbums:I
    const-string v15, "data2"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 585
    .local v10, numsongs:I
    move-object/from16 v0, p2

    move v1, v9

    move v2, v10

    move v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/android/music/MusicUtils;->makeAlbumsSongsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v12

    .line 588
    .local v12, songs_albums:Ljava/lang/String;
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 590
    .end local v4           #displayname:Ljava/lang/String;
    .end local v5           #isunknown:Z
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #numalbums:I
    .end local v10           #numsongs:I
    .end local v12           #songs_albums:Ljava/lang/String;
    :cond_5
    const-string v15, "album"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 591
    const v15, 0x7f020003

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 592
    const-string v15, "album"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 594
    .restart local v8       #name:Ljava/lang/String;
    move-object v4, v8

    .line 595
    .restart local v4       #displayname:Ljava/lang/String;
    if-eqz v8, :cond_6

    const-string v15, "<unknown>"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 596
    :cond_6
    const v15, 0x7f090090

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 598
    :cond_7
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    const-string v15, "artist"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 602
    move-object v4, v8

    .line 603
    if-eqz v8, :cond_8

    const-string v15, "<unknown>"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 604
    :cond_8
    const v15, 0x7f090091

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 606
    :cond_9
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 608
    .end local v4           #displayname:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    :cond_a
    const-string v15, "audio/"

    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_b

    const-string v15, "application/ogg"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    const-string v15, "application/x-ogg"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 611
    :cond_b
    const v15, 0x7f02006e

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 612
    const-string v15, "title"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 614
    .restart local v8       #name:Ljava/lang/String;
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    const-string v15, "artist"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 618
    .restart local v4       #displayname:Ljava/lang/String;
    if-eqz v4, :cond_c

    const-string v15, "<unknown>"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 619
    :cond_c
    const v15, 0x7f090091

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 621
    :cond_d
    const-string v15, "album"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 623
    if-eqz v8, :cond_e

    const-string v15, "<unknown>"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 624
    :cond_e
    const v15, 0x7f090090

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 626
    :cond_f
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    invoke-virtual {v0}, Lcom/android/music/QueryBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 632
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 633
    const/4 p1, 0x0

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    #getter for: Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/music/QueryBrowserActivity;->access$300(Lcom/android/music/QueryBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    #setter for: Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/android/music/QueryBrowserActivity;->access$302(Lcom/android/music/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 639
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :cond_1
    :goto_0
    return-void

    .line 640
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 648
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 652
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 657
    :goto_0
    return-object v2

    .line 654
    :cond_2
    iget-object v2, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    const/4 v3, 0x0

    #calls: Lcom/android/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/android/music/QueryBrowserActivity;->access$200(Lcom/android/music/QueryBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 655
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 656
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 657
    goto :goto_0
.end method

.method public setActivity(Lcom/android/music/QueryBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/android/music/QueryBrowserActivity;

    .line 543
    return-void
.end method
