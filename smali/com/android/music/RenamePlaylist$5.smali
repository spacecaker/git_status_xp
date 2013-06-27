.class Lcom/android/music/RenamePlaylist$5;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/RenamePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/RenamePlaylist;


# direct methods
.method constructor <init>(Lcom/android/music/RenamePlaylist;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 239
    iget-object v4, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    #getter for: Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/music/RenamePlaylist;->access$000(Lcom/android/music/RenamePlaylist;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 241
    iget-object v4, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-virtual {v4}, Lcom/android/music/RenamePlaylist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 243
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    #getter for: Lcom/android/music/RenamePlaylist;->mOverwritedId:I
    invoke-static {v4}, Lcom/android/music/RenamePlaylist;->access$200(Lcom/android/music/RenamePlaylist;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 244
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    #getter for: Lcom/android/music/RenamePlaylist;->mOverwritedId:I
    invoke-static {v5}, Lcom/android/music/RenamePlaylist;->access$200(Lcom/android/music/RenamePlaylist;)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 246
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v1, v2, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 249
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 250
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id=?"

    new-array v6, v7, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    #getter for: Lcom/android/music/RenamePlaylist;->mRenameId:J
    invoke-static {v7}, Lcom/android/music/RenamePlaylist;->access$300(Lcom/android/music/RenamePlaylist;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 256
    iget-object v4, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/music/RenamePlaylist;->setResult(I)V

    .line 257
    iget-object v4, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    const v5, 0x7f090064

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 258
    iget-object v4, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-virtual {v4}, Lcom/android/music/RenamePlaylist;->finish()V

    .line 260
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_1
    return-void
.end method
