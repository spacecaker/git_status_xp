.class public Lcom/android/music/MediaPickerActivity;
.super Landroid/app/ListActivity;
.source "MediaPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MediaPickerActivity$PickListAdapter;
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mFirstYear:Ljava/lang/String;

.field private mLastYear:Ljava/lang/String;

.field private mSortOrder:Ljava/lang/String;

.field private mToken:Lcom/android/music/MusicUtils$ServiceToken;

.field private mWhereClause:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 221
    const-string v0, "title COLLATE UNICODE"

    iput-object v0, p0, Lcom/android/music/MediaPickerActivity;->mSortOrder:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private MakeCursor()V
    .locals 21

    .prologue
    .line 137
    const/4 v3, 0x7

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v8, v3

    const/4 v3, 0x1

    const-string v4, "artist"

    aput-object v4, v8, v3

    const/4 v3, 0x2

    const-string v4, "album"

    aput-object v4, v8, v3

    const/4 v3, 0x3

    const-string v4, "title"

    aput-object v4, v8, v3

    const/4 v3, 0x4

    const-string v4, "_data"

    aput-object v4, v8, v3

    const/4 v3, 0x5

    const-string v4, "mime_type"

    aput-object v4, v8, v3

    const/4 v3, 0x6

    const-string v4, "year"

    aput-object v4, v8, v3

    .line 146
    .local v8, audiocols:[Ljava/lang/String;
    const/4 v3, 0x7

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "artist"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string v4, "album"

    aput-object v4, v5, v3

    const/4 v3, 0x4

    const-string v4, "title"

    aput-object v4, v5, v3

    const/4 v3, 0x5

    const-string v4, "_data"

    aput-object v4, v5, v3

    const/4 v3, 0x6

    const-string v4, "mime_type"

    aput-object v4, v5, v3

    .line 160
    .local v5, videocols:[Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v16, cList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/MediaPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 162
    .local v18, intent:Landroid/content/Intent;
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v20

    .line 164
    .local v20, type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_1

    .line 167
    const-string v3, "video/*"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    .line 218
    .end local v8           #audiocols:[Ljava/lang/String;
    :goto_0
    return-void

    .line 172
    .restart local v8       #audiocols:[Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "year>="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "year"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPickerActivity;->mLastYear:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/MediaPickerActivity;->mWhereClause:Ljava/lang/String;

    .line 181
    :cond_1
    const-string v3, "video/*"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 183
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPickerActivity;->mSortOrder:Ljava/lang/String;

    move-object v8, v0

    .end local v8           #audiocols:[Ljava/lang/String;
    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 185
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_2

    .line 186
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_2
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 208
    .local v19, size:I
    if-nez v19, :cond_5

    .line 210
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 189
    .end local v15           #c:Landroid/database/Cursor;
    .end local v19           #size:I
    .restart local v8       #audiocols:[Ljava/lang/String;
    :cond_3
    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPickerActivity;->mWhereClause:Ljava/lang/String;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPickerActivity;->mSortOrder:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 192
    .restart local v15       #c:Landroid/database/Cursor;
    if-eqz v15, :cond_4

    .line 193
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "media/*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 198
    sget-object v10, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MediaPickerActivity;->mSortOrder:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v9, p0

    move-object v11, v5

    invoke-static/range {v9 .. v14}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 200
    if-eqz v15, :cond_2

    .line 201
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 215
    .end local v8           #audiocols:[Ljava/lang/String;
    .restart local v19       #size:I
    :cond_5
    move/from16 v0, v19

    new-array v0, v0, [Landroid/database/Cursor;

    move-object/from16 v17, v0

    .line 216
    .local v17, cs:[Landroid/database/Cursor;
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    .end local v17           #cs:[Landroid/database/Cursor;
    check-cast v17, [Landroid/database/Cursor;

    .line 217
    .restart local v17       #cs:[Landroid/database/Cursor;
    new-instance v3, Lcom/android/music/SortCursor;

    const-string v4, "title"

    move-object v0, v3

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/music/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_0
.end method


# virtual methods
.method public init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 78
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/android/music/MediaPickerActivity;->setContentView(I)V

    .line 80
    invoke-direct {p0}, Lcom/android/music/MediaPickerActivity;->MakeCursor()V

    .line 81
    iget-object v1, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    new-instance v0, Lcom/android/music/MediaPickerActivity$PickListAdapter;

    const v2, 0x7f030014

    iget-object v3, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    new-array v4, v5, [Ljava/lang/String;

    new-array v5, v5, [I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/MediaPickerActivity$PickListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 92
    .local v0, adapter:Lcom/android/music/MediaPickerActivity$PickListAdapter;
    invoke-virtual {p0, v0}, Lcom/android/music/MediaPickerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/music/MediaPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstyear"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/android/music/MediaPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lastyear"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPickerActivity;->mLastYear:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 57
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPickerActivity;->setTitle(I)V

    .line 63
    :goto_0
    invoke-static {p0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/app/Activity;)Lcom/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MediaPickerActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    .line 64
    invoke-virtual {p0}, Lcom/android/music/MediaPickerActivity;->init()V

    .line 65
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/music/MediaPickerActivity;->mLastYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/music/MediaPickerActivity;->mFirstYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPickerActivity;->mLastYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mToken:Lcom/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/android/music/MusicUtils;->unbindFromService(Lcom/android/music/MusicUtils$ServiceToken;)V

    .line 70
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 71
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_0
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const-string v9, "_id"

    .line 98
    iget-object v6, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 99
    iget-object v6, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    const-string v8, "mime_type"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, type:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/music/MediaPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.GET_CONTENT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 107
    const-string v6, "video"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 108
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 109
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 117
    .local v2, mediaId:J
    :goto_0
    const/4 v6, -0x1

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/music/MediaPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/music/MediaPickerActivity;->finish()V

    .line 134
    .end local v2           #mediaId:J
    .end local v5           #uri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 112
    :cond_0
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 113
    .restart local v5       #uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/android/music/MediaPickerActivity;->mCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .restart local v2       #mediaId:J
    goto :goto_0

    .line 124
    .end local v2           #mediaId:J
    .end local v5           #uri:Landroid/net/Uri;
    :cond_1
    sget-object v6, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v6, :cond_2

    .line 126
    :try_start_0
    sget-object v6, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_2
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, intent:Landroid/content/Intent;
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v1}, Lcom/android/music/MediaPickerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 127
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v6

    goto :goto_2
.end method
