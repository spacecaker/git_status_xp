.class Lcom/android/music/AudioPreview$1;
.super Landroid/content/AsyncQueryHandler;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/AudioPreview;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/android/music/AudioPreview;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const-string v10, "AudioPreview"

    .line 185
    if-eqz p3, :cond_5

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 187
    const-string v7, "title"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 188
    .local v6, titleIdx:I
    const-string v7, "artist"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 189
    .local v1, artistIdx:I
    const-string v7, "_id"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 190
    .local v3, idIdx:I
    const-string v7, "_display_name"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 192
    .local v2, displaynameIdx:I
    if-ltz v3, :cond_0

    .line 193
    iget-object v7, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    #setter for: Lcom/android/music/AudioPreview;->mMediaId:J
    invoke-static {v7, v8, v9}, Lcom/android/music/AudioPreview;->access$102(Lcom/android/music/AudioPreview;J)J

    .line 196
    :cond_0
    if-ltz v6, :cond_3

    .line 197
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 198
    .local v5, title:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/music/AudioPreview;->access$200(Lcom/android/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    if-ltz v1, :cond_1

    .line 200
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, artist:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/music/AudioPreview;->access$300(Lcom/android/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .end local v0           #artist:Ljava/lang/String;
    .end local v1           #artistIdx:I
    .end local v2           #displaynameIdx:I
    .end local v3           #idIdx:I
    .end local v5           #title:Ljava/lang/String;
    .end local v6           #titleIdx:I
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 215
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_2
    iget-object v7, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    invoke-virtual {v7}, Lcom/android/music/AudioPreview;->setNames()V

    .line 218
    return-void

    .line 203
    .restart local v1       #artistIdx:I
    .restart local v2       #displaynameIdx:I
    .restart local v3       #idIdx:I
    .restart local v6       #titleIdx:I
    :cond_3
    if-ltz v2, :cond_4

    .line 204
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/music/AudioPreview;->access$200(Lcom/android/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 208
    .end local v4           #name:Ljava/lang/String;
    :cond_4
    const-string v7, "AudioPreview"

    const-string v7, "Cursor had no names for us"

    invoke-static {v10, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    .end local v1           #artistIdx:I
    .end local v2           #displaynameIdx:I
    .end local v3           #idIdx:I
    .end local v6           #titleIdx:I
    :cond_5
    const-string v7, "AudioPreview"

    const-string v7, "empty cursor"

    invoke-static {v10, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
