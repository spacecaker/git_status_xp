.class Lcom/android/music/AudioPreview$4;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/android/music/AudioPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/music/AudioPreview$4;->this$0:Lcom/android/music/AudioPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 482
    if-nez p3, :cond_0

    .line 486
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/music/AudioPreview$4;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/android/music/AudioPreview;->access$400(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/music/AudioPreview$PreviewPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/music/AudioPreview$4;->this$0:Lcom/android/music/AudioPreview;

    const/4 v1, 0x1

    #setter for: Lcom/android/music/AudioPreview;->mSeeking:Z
    invoke-static {v0, v1}, Lcom/android/music/AudioPreview;->access$1002(Lcom/android/music/AudioPreview;Z)Z

    .line 480
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/music/AudioPreview$4;->this$0:Lcom/android/music/AudioPreview;

    const/4 v1, 0x0

    #setter for: Lcom/android/music/AudioPreview;->mSeeking:Z
    invoke-static {v0, v1}, Lcom/android/music/AudioPreview;->access$1002(Lcom/android/music/AudioPreview;Z)Z

    .line 489
    return-void
.end method
