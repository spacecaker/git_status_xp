.class Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener$2;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;)V
    .locals 0
    .parameter

    .prologue
    .line 2605
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener$2;->this$1:Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener$2;->this$1:Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackActivity;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2609
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener$2;->this$1:Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mFlingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$1600(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2610
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener$2;->this$1:Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mFlingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$1600(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x352

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2611
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener$2;->this$1:Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mFlingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$1600(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x37a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2613
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/music/MusicUtils;->bIsSkipFlingEvent:Z

    .line 2614
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2618
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 2621
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener$2;->this$1:Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackActivity$OnAlbumArtGestureListener;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mAlbum:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$3200(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2622
    return-void
.end method
