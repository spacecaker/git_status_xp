.class Lcom/sec/android/app/music/DrmServicePopup$3;
.super Ljava/lang/Object;
.source "DrmServicePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/DrmServicePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/DrmServicePopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/DrmServicePopup;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/sec/android/app/music/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 235
    invoke-static {}, Lcom/sec/android/app/music/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPlayListener:onClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    iget-object v1, v1, Lcom/sec/android/app/music/DrmServicePopup;->drmManager:Lcom/sec/android/app/music/MusicDrmManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/MusicDrmManager;->setDrmPopupShown(Z)V

    .line 238
    const/4 v0, 0x0

    .line 240
    .local v0, i:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #i:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 241
    .restart local v0       #i:Landroid/content/Intent;
    const-string v1, "com.android.music.drm.play"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v1, "position"

    iget-object v2, p0, Lcom/sec/android/app/music/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/DrmServicePopup;->mPosition:I
    invoke-static {v2}, Lcom/sec/android/app/music/DrmServicePopup;->access$400(Lcom/sec/android/app/music/DrmServicePopup;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/music/DrmServicePopup;->access$100(Lcom/sec/android/app/music/DrmServicePopup;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 247
    iget-object v1, p0, Lcom/sec/android/app/music/DrmServicePopup$3;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    invoke-virtual {v1}, Lcom/sec/android/app/music/DrmServicePopup;->dismiss()V

    .line 248
    return-void
.end method
