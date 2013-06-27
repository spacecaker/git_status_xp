.class Lcom/sec/android/app/music/DrmServicePopup$5;
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
    .line 259
    iput-object p1, p0, Lcom/sec/android/app/music/DrmServicePopup$5;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 261
    invoke-static {}, Lcom/sec/android/app/music/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOkListener:onClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/music/DrmServicePopup$5;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    iget-object v0, v0, Lcom/sec/android/app/music/DrmServicePopup;->drmManager:Lcom/sec/android/app/music/MusicDrmManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicDrmManager;->setDrmPopupShown(Z)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/music/DrmServicePopup$5;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    invoke-virtual {v0}, Lcom/sec/android/app/music/DrmServicePopup;->dismiss()V

    .line 265
    return-void
.end method
