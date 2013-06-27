.class public Lcom/android/music/CreatePlaylist;
.super Landroid/app/Activity;
.source "CreatePlaylist.java"


# instance fields
.field private mCurrentPlaylistName:Ljava/lang/String;

.field private mOpenClicked:Landroid/view/View$OnClickListener;

.field private mPlaylist:Landroid/widget/EditText;

.field private mPrompt:Landroid/widget/TextView;

.field private mSaveButton:Landroid/widget/Button;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 158
    new-instance v0, Lcom/android/music/CreatePlaylist$4;

    invoke-direct {v0, p0}, Lcom/android/music/CreatePlaylist$4;-><init>(Lcom/android/music/CreatePlaylist;)V

    iput-object v0, p0, Lcom/android/music/CreatePlaylist;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 172
    new-instance v0, Lcom/android/music/CreatePlaylist$5;

    invoke-direct {v0, p0}, Lcom/android/music/CreatePlaylist$5;-><init>(Lcom/android/music/CreatePlaylist;)V

    iput-object v0, p0, Lcom/android/music/CreatePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    .line 277
    new-instance v0, Lcom/android/music/CreatePlaylist$6;

    invoke-direct {v0, p0}, Lcom/android/music/CreatePlaylist$6;-><init>(Lcom/android/music/CreatePlaylist;)V

    iput-object v0, p0, Lcom/android/music/CreatePlaylist;->mOpenClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/CreatePlaylist;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/CreatePlaylist;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/CreatePlaylist;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/music/CreatePlaylist;->idForplaylist(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/music/CreatePlaylist;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mCurrentPlaylistName:Ljava/lang/String;

    return-object v0
.end method

.method private idForplaylist(Ljava/lang/String;)I
    .locals 9
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 196
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 201
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 202
    .local v7, id:I
    if-eqz v6, :cond_1

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 207
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_1
    return v7
.end method

.method private makePlaylistName()Ljava/lang/String;
    .locals 13

    .prologue
    .line 236
    const v1, 0x7f090052

    invoke-virtual {p0, v1}, Lcom/android/music/CreatePlaylist;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 237
    .local v12, template:Ljava/lang/String;
    const/4 v8, 0x1

    .line 239
    .local v8, num:I
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "name"

    aput-object v3, v2, v1

    .line 242
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/music/CreatePlaylist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 243
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "name != \'\'"

    .line 244
    .local v3, whereclause:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 248
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 249
    const/4 v1, 0x0

    .line 274
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #whereclause:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 253
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v3       #whereclause:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v9, v8, 0x1

    .end local v8           #num:I
    .local v9, num:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v2           #cols:[Ljava/lang/String;
    move-result-object v3

    .end local v3           #whereclause:Ljava/lang/String;
    aput-object v3, v1, v2

    invoke-static {v12, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 260
    .local v11, suggestedname:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, done:Z
    move v8, v9

    .line 261
    .end local v9           #num:I
    .restart local v8       #num:I
    :cond_1
    if-nez v7, :cond_3

    .line 262
    const/4 v7, 0x1

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 264
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 265
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 266
    .local v10, playlistname:Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 267
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v9, v8, 0x1

    .end local v8           #num:I
    .restart local v9       #num:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v12, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 268
    const/4 v7, 0x0

    move v8, v9

    .line 270
    .end local v9           #num:I
    .restart local v8       #num:I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 273
    .end local v10           #playlistname:Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v1, v11

    .line 274
    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    new-instance v1, Lcom/android/music/CreatePlaylist$1;

    invoke-direct {v1, p0}, Lcom/android/music/CreatePlaylist$1;-><init>(Lcom/android/music/CreatePlaylist;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 76
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/music/CreatePlaylist;->setVolumeControlStream(I)V

    .line 84
    invoke-virtual {p0, v8}, Lcom/android/music/CreatePlaylist;->requestWindowFeature(I)Z

    .line 85
    const v5, 0x7f030006

    invoke-virtual {p0, v5}, Lcom/android/music/CreatePlaylist;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/music/CreatePlaylist;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setLayout(II)V

    .line 89
    const v5, 0x7f0c0029

    invoke-virtual {p0, v5}, Lcom/android/music/CreatePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/music/CreatePlaylist;->mPrompt:Landroid/widget/TextView;

    .line 90
    const v5, 0x7f0c002c

    invoke-virtual {p0, v5}, Lcom/android/music/CreatePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    .line 91
    const v5, 0x7f0c002d

    invoke-virtual {p0, v5}, Lcom/android/music/CreatePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    .line 92
    iget-object v5, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/music/CreatePlaylist;->mOpenClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    if-eqz p1, :cond_0

    .line 97
    iget-object v5, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    const-string v6, "savebuttontext"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/CreatePlaylist;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 102
    const-string v5, "CurrentPlayListName"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/android/music/CreatePlaylist;->mCurrentPlaylistName:Ljava/lang/String;

    .line 106
    :cond_1
    const v5, 0x7f0c002b

    invoke-virtual {p0, v5}, Lcom/android/music/CreatePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    new-instance v6, Lcom/android/music/CreatePlaylist$2;

    invoke-direct {v6, p0}, Lcom/android/music/CreatePlaylist$2;-><init>(Lcom/android/music/CreatePlaylist;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    if-eqz p1, :cond_2

    const-string v5, "defaultname"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 113
    .local v1, defaultname:Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_3

    .line 114
    invoke-virtual {p0}, Lcom/android/music/CreatePlaylist;->finish()V

    .line 147
    :goto_1
    return-void

    .line 112
    .end local v1           #defaultname:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/music/CreatePlaylist;->makePlaylistName()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 117
    .restart local v1       #defaultname:Ljava/lang/String;
    :cond_3
    const v5, 0x7f0900ab

    invoke-virtual {p0, v5}, Lcom/android/music/CreatePlaylist;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, promptformat:Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, prompt:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/music/CreatePlaylist;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v5, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v5, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->selectAll()V

    .line 126
    iget-object v5, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    new-array v6, v8, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/16 v8, 0x100

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v6, v9

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 128
    iget-object v5, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/music/CreatePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    iget-object v5, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    new-instance v6, Lcom/android/music/CreatePlaylist$3;

    invoke-direct {v6, p0}, Lcom/android/music/CreatePlaylist$3;-><init>(Lcom/android/music/CreatePlaylist;)V

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v2, f:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v5, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v5, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v5, "file"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 145
    iget-object v5, p0, Lcom/android/music/CreatePlaylist;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/android/music/CreatePlaylist;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/music/CreatePlaylist;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/CreatePlaylist;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 154
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 225
    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, newText:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 232
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 214
    const-string v0, "defaultname"

    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v0, "savebuttontext"

    iget-object v1, p0, Lcom/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method
