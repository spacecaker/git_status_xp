.class Lcom/android/music/AudioPreviewDrmChecker$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioPreviewDrmChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AudioPreviewDrmChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AudioPreviewDrmChecker;


# direct methods
.method constructor <init>(Lcom/android/music/AudioPreviewDrmChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/music/AudioPreviewDrmChecker$1;->this$0:Lcom/android/music/AudioPreviewDrmChecker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 199
    if-nez p2, :cond_0

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/music/AudioPreviewDrmChecker$1;->this$0:Lcom/android/music/AudioPreviewDrmChecker;

    invoke-virtual {v0}, Lcom/android/music/AudioPreviewDrmChecker;->play()V

    goto :goto_0
.end method
