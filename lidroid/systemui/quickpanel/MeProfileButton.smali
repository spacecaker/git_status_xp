.class public Lcom/lidroid/systemui/quickpanel/MeProfileButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "MeProfileButton.java"


# instance fields
.field private mMeProfileContactUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    .line 17
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->mMeProfileContactUri:Landroid/net/Uri;

    .line 21
    const-string v1, "toggleMeProfile"

    iput-object v1, p0, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->mType:Ljava/lang/String;

    .line 22
    const/4 v1, 0x3

    iput v1, p0, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->mState:I

    .line 27
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->findMeProfileContactUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->mMeProfileContactUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private animateCollapse()V
    .locals 3

    .prologue
    .line 378
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 379
    .local v0, sbm:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 380
    return-void
.end method

.method private editMeProfileContact()V
    .locals 2

    .prologue
    .line 2210
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2213
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->startMeProfileContact(Z)V

    .line 2216
    return-void

    .line 2211
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private findMeProfileContactUri()Landroid/net/Uri;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v8, 0x0

    .line 48
    .local v8, uriMe:Landroid/net/Uri;
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 49
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 53
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 61
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_1
    return-object v8

    .line 59
    :catchall_0
    move-exception v0

    .line 61
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 63
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 68
    .local v7, e:Ljava/lang/Exception;
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getMeProfileContactImage()Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v9, 0x0

    .line 136
    .local v9, meImage:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 137
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 141
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 144
    .local v11, uriMe:Landroid/net/Uri;
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 145
    .local v10, stream:Ljava/io/InputStream;
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 146
    .local v6, buffer:Ljava/io/BufferedInputStream;
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 152
    .end local v6           #buffer:Ljava/io/BufferedInputStream;
    .end local v10           #stream:Ljava/io/InputStream;
    .end local v11           #uriMe:Landroid/net/Uri;
    :cond_0
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_1
    return-object v9

    .line 150
    :catchall_0
    move-exception v0

    .line 152
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 154
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 157
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 159
    .local v8, e:Ljava/lang/Exception;
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getMeProfileContactText()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v8, 0x0

    .line 122
    .local v8, meText:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 123
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 127
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 135
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    :cond_1
    if-nez v8, :cond_2

    .line 148
    const-string v8, ""

    .line 152
    :cond_2
    return-object v8

    .line 133
    :catchall_0
    move-exception v0

    .line 135
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 137
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 140
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 142
    .local v7, e:Ljava/lang/Exception;
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private showMeProfileContact()V
    .locals 2

    .prologue
    .line 2210
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2213
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->startMeProfileContact(Z)V

    .line 2216
    return-void

    .line 2211
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private startMeProfileContact(Z)V
    .locals 8
    .parameter "startEditing"

    .prologue
    const/4 v3, 0x0

    .line 43
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 44
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 48
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 51
    .local v7, uriMe:Landroid/net/Uri;
    if-eqz p1, :cond_2

    .line 53
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .end local v7           #uriMe:Landroid/net/Uri;
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 68
    :cond_1
    return-void

    .line 57
    .restart local v7       #uriMe:Landroid/net/Uri;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    .end local v7           #uriMe:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    .line 64
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 66
    throw v0
.end method


# virtual methods
.method protected getText()I
    .locals 3

    .prologue
    .line 79
    const-string v2, ""

    iput-object v2, p0, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->mText:Ljava/lang/String;

    .line 82
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->getMeProfileContactText()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, meText:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    iput-object v1, p0, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->mText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1           #meText:Ljava/lang/String;
    :cond_0
    :goto_0
    const v2, 0x7f08007c

    return v2

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected handleLongClick()Z
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->animateCollapse()V

    .line 53
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->editMeProfileContact()V

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method protected toggleState()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->animateCollapse()V

    .line 60
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->showMeProfileContact()V

    .line 62
    return-void
.end method

.method protected updateState()V
    .locals 3

    .prologue
    .line 110
    const/4 v2, 0x3

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->mState:I

    .line 111
    const v2, 0x7f020117

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->mIcon:I

    .line 112
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->mBitmap:Landroid/graphics/Bitmap;

    .line 116
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->getMeProfileContactImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 117
    .local v1, meImage:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 119
    iput-object v1, p0, Lcom/lidroid/systemui/quickpanel/MeProfileButton;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1           #meImage:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
