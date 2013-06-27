.class public Lcom/android/music/RenamePlaylist;
.super Landroid/app/Activity;
.source "RenamePlaylist.java"


# instance fields
.field private mOpenClicked:Landroid/view/View$OnClickListener;

.field private mOriginalName:Ljava/lang/String;

.field private mOverwritedId:I

.field private mPlaylist:Landroid/widget/EditText;

.field private mPrompt:Landroid/widget/TextView;

.field private mRenameId:J

.field private mSaveButton:Landroid/widget/Button;

.field mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/RenamePlaylist;->mOverwritedId:I

    .line 145
    new-instance v0, Lcom/android/music/RenamePlaylist$4;

    invoke-direct {v0, p0}, Lcom/android/music/RenamePlaylist$4;-><init>(Lcom/android/music/RenamePlaylist;)V

    iput-object v0, p0, Lcom/android/music/RenamePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    .line 237
    new-instance v0, Lcom/android/music/RenamePlaylist$5;

    invoke-direct {v0, p0}, Lcom/android/music/RenamePlaylist$5;-><init>(Lcom/android/music/RenamePlaylist;)V

    iput-object v0, p0, Lcom/android/music/RenamePlaylist;->mOpenClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/RenamePlaylist;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/RenamePlaylist;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/music/RenamePlaylist;->setSaveButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/music/RenamePlaylist;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/music/RenamePlaylist;->mOverwritedId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/music/RenamePlaylist;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    return-wide v0
.end method

.method private idForplaylist(Ljava/lang/String;)I
    .locals 8
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 181
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 186
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 189
    .local v7, id:I
    if-eqz v6, :cond_1

    .line 191
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 192
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 196
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 200
    :cond_1
    return v7

    .line 196
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private nameForId(J)Ljava/lang/String;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const-string v5, "name"

    .line 204
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v5, v2, v8

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const-string v0, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 209
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 211
    .local v7, name:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 213
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 214
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 218
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_1
    return-object v7

    .line 218
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private setSaveButton()V
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, typedname:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 166
    invoke-direct {p0, v0}, Lcom/android/music/RenamePlaylist;->idForplaylist(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/music/RenamePlaylist;->mOverwritedId:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f090028

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 172
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/music/RenamePlaylist;->mOverwritedId:I

    .line 174
    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f090027

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    new-instance v1, Lcom/android/music/RenamePlaylist$1;

    invoke-direct {v1, p0}, Lcom/android/music/RenamePlaylist$1;-><init>(Lcom/android/music/RenamePlaylist;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v6, "rename"

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/music/RenamePlaylist;->setVolumeControlStream(I)V

    .line 86
    invoke-virtual {p0, v7}, Lcom/android/music/RenamePlaylist;->requestWindowFeature(I)Z

    .line 87
    const v3, 0x7f030006

    invoke-virtual {p0, v3}, Lcom/android/music/RenamePlaylist;->setContentView(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/music/RenamePlaylist;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 91
    const v3, 0x7f0c0029

    invoke-virtual {p0, v3}, Lcom/android/music/RenamePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/music/RenamePlaylist;->mPrompt:Landroid/widget/TextView;

    .line 92
    const v3, 0x7f0c002c

    invoke-virtual {p0, v3}, Lcom/android/music/RenamePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    .line 93
    const v3, 0x7f0c002d

    invoke-virtual {p0, v3}, Lcom/android/music/RenamePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    .line 94
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/music/RenamePlaylist;->mOpenClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v3, 0x7f0c002b

    invoke-virtual {p0, v3}, Lcom/android/music/RenamePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/android/music/RenamePlaylist$2;

    invoke-direct {v4, p0}, Lcom/android/music/RenamePlaylist$2;-><init>(Lcom/android/music/RenamePlaylist;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    if-eqz p1, :cond_1

    const-string v3, "rename"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    :goto_0
    iput-wide v3, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    .line 104
    iget-wide v3, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    invoke-direct {p0, v3, v4}, Lcom/android/music/RenamePlaylist;->nameForId(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    .line 105
    if-eqz p1, :cond_2

    const-string v3, "defaultname"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 107
    .local v0, defaultname:Ljava/lang/String;
    :goto_1
    iget-wide v3, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    if-eqz v3, :cond_0

    if-nez v0, :cond_3

    .line 108
    :cond_0
    const-string v3, "@@@@"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rename failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/android/music/RenamePlaylist;->finish()V

    .line 143
    :goto_2
    return-void

    .line 102
    .end local v0           #defaultname:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/RenamePlaylist;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "rename"

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    goto :goto_0

    .line 105
    :cond_2
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    move-object v0, v3

    goto :goto_1

    .line 114
    .restart local v0       #defaultname:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 115
    const v3, 0x7f0900ac

    invoke-virtual {p0, v3}, Lcom/android/music/RenamePlaylist;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, promptformat:Ljava/lang/String;
    :goto_3
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    aput-object v4, v3, v8

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, prompt:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    .line 128
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    new-array v4, v7, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 130
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/music/RenamePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    invoke-direct {p0}, Lcom/android/music/RenamePlaylist;->setSaveButton()V

    .line 134
    iget-object v3, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    new-instance v4, Lcom/android/music/RenamePlaylist$3;

    invoke-direct {v4, p0}, Lcom/android/music/RenamePlaylist$3;-><init>(Lcom/android/music/RenamePlaylist;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 117
    .end local v1           #prompt:Ljava/lang/String;
    .end local v2           #promptformat:Ljava/lang/String;
    :cond_4
    const v3, 0x7f0900ad

    invoke-virtual {p0, v3}, Lcom/android/music/RenamePlaylist;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #promptformat:Ljava/lang/String;
    goto :goto_3
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 235
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 228
    const-string v0, "defaultname"

    iget-object v1, p0, Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "rename"

    iget-wide v1, p0, Lcom/android/music/RenamePlaylist;->mRenameId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 230
    return-void
.end method
