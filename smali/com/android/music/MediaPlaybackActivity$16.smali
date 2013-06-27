.class Lcom/android/music/MediaPlaybackActivity$16;
.super Landroid/os/Handler;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2051
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 2054
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2108
    :goto_0
    :pswitch_0
    return-void

    .line 2058
    :pswitch_1
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->access$3100(Lcom/android/music/MediaPlaybackActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2059
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->access$3100(Lcom/android/music/MediaPlaybackActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2060
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v3, 0x0

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/android/music/MediaPlaybackActivity;->access$3102(Lcom/android/music/MediaPlaybackActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2063
    :cond_0
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v2}, Lcom/android/music/MediaPlaybackActivity;->access$3102(Lcom/android/music/MediaPlaybackActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2064
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->access$3200(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$3100(Lcom/android/music/MediaPlaybackActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2067
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->access$3200(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    goto :goto_0

    .line 2072
    :pswitch_2
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->refreshNow()J
    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->access$1000(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v0

    .line 2073
    .local v0, next:J
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V
    invoke-static {v2, v0, v1}, Lcom/android/music/MediaPlaybackActivity;->access$3300(Lcom/android/music/MediaPlaybackActivity;J)V

    goto :goto_0

    .line 2077
    .end local v0           #next:J
    :pswitch_3
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v3, -0x1

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    invoke-static {v2, v3, v4}, Lcom/android/music/MediaPlaybackActivity;->access$002(Lcom/android/music/MediaPlaybackActivity;J)J

    goto :goto_0

    .line 2083
    :pswitch_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090083

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090082

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090081

    new-instance v4, Lcom/android/music/MediaPlaybackActivity$16$1;

    invoke-direct {v4, p0}, Lcom/android/music/MediaPlaybackActivity$16$1;-><init>(Lcom/android/music/MediaPlaybackActivity$16;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 2097
    :pswitch_5
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackActivity;->finish()V

    goto/16 :goto_0

    .line 2102
    :pswitch_6
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$16;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mIsPossibleNextPrevButton:Z
    invoke-static {v2, v4}, Lcom/android/music/MediaPlaybackActivity;->access$1402(Lcom/android/music/MediaPlaybackActivity;Z)Z

    goto/16 :goto_0

    .line 2054
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method
