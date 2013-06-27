.class Lcom/android/music/MediaPlaybackActivity$3$1;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MediaPlaybackActivity$3;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/MediaPlaybackActivity$3;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$3$1;->this$1:Lcom/android/music/MediaPlaybackActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "which"

    .prologue
    .line 454
    if-nez p2, :cond_1

    .line 455
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$3$1;->this$1:Lcom/android/music/MediaPlaybackActivity$3;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackActivity$3;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$400(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 456
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$3$1;->this$1:Lcom/android/music/MediaPlaybackActivity$3;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackActivity$3;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v1, v0}, Lcom/android/music/MediaPlaybackActivity;->onLongClick(Landroid/view/View;)Z

    .line 466
    .end local v0           #v:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 459
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$3$1;->this$1:Lcom/android/music/MediaPlaybackActivity$3;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackActivity$3;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$500(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 460
    .restart local v0       #v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$3$1;->this$1:Lcom/android/music/MediaPlaybackActivity$3;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackActivity$3;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v1, v0}, Lcom/android/music/MediaPlaybackActivity;->onLongClick(Landroid/view/View;)Z

    goto :goto_0

    .line 462
    .end local v0           #v:Landroid/view/View;
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$3$1;->this$1:Lcom/android/music/MediaPlaybackActivity$3;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackActivity$3;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$600(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 464
    .restart local v0       #v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$3$1;->this$1:Lcom/android/music/MediaPlaybackActivity$3;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackActivity$3;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v1, v0}, Lcom/android/music/MediaPlaybackActivity;->onLongClick(Landroid/view/View;)Z

    goto :goto_0
.end method
