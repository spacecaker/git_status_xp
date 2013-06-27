.class Lcom/android/music/CreatePlaylist$6;
.super Ljava/lang/Object;
.source "CreatePlaylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/CreatePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/CreatePlaylist;


# direct methods
.method constructor <init>(Lcom/android/music/CreatePlaylist;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/music/CreatePlaylist$6;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 279
    iget-object v5, p0, Lcom/android/music/CreatePlaylist$6;->this$0:Lcom/android/music/CreatePlaylist;

    #getter for: Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/android/music/CreatePlaylist;->access$000(Lcom/android/music/CreatePlaylist;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 282
    iget-object v5, p0, Lcom/android/music/CreatePlaylist$6;->this$0:Lcom/android/music/CreatePlaylist;

    #getter for: Lcom/android/music/CreatePlaylist;->mCurrentPlaylistName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/music/CreatePlaylist;->access$300(Lcom/android/music/CreatePlaylist;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 283
    iget-object v5, p0, Lcom/android/music/CreatePlaylist$6;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-virtual {v5}, Lcom/android/music/CreatePlaylist;->finish()V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v5, p0, Lcom/android/music/CreatePlaylist$6;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-virtual {v5}, Lcom/android/music/CreatePlaylist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 289
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/music/CreatePlaylist$6;->this$0:Lcom/android/music/CreatePlaylist;

    #calls: Lcom/android/music/CreatePlaylist;->idForplaylist(Ljava/lang/String;)I
    invoke-static {v5, v1}, Lcom/android/music/CreatePlaylist;->access$200(Lcom/android/music/CreatePlaylist;Ljava/lang/String;)I

    move-result v0

    .line 291
    .local v0, id:I
    if-ltz v0, :cond_2

    .line 292
    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v0

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 293
    .local v3, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/music/CreatePlaylist$6;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-static {v5, v0}, Lcom/android/music/MusicUtils;->clearPlaylist(Landroid/content/Context;I)V

    .line 299
    :goto_1
    iget-object v5, p0, Lcom/android/music/CreatePlaylist$6;->this$0:Lcom/android/music/CreatePlaylist;

    const/4 v6, -0x1

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v7, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/music/CreatePlaylist;->setResult(ILandroid/content/Intent;)V

    .line 300
    iget-object v5, p0, Lcom/android/music/CreatePlaylist$6;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-virtual {v5}, Lcom/android/music/CreatePlaylist;->finish()V

    goto :goto_0

    .line 295
    .end local v3           #uri:Landroid/net/Uri;
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 296
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "name"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .restart local v3       #uri:Landroid/net/Uri;
    goto :goto_1
.end method
