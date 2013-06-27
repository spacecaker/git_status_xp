.class Lcom/sec/android/app/music/DrmServicePopup$1;
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
    .line 191
    iput-object p1, p0, Lcom/sec/android/app/music/DrmServicePopup$1;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 193
    invoke-static {}, Lcom/sec/android/app/music/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBuyListener:onClick("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is called"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v2, 0x0

    .line 197
    .local v2, result:Z
    :try_start_0
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v1

    .line 198
    .local v1, manager:Landroid/drm/mobile2/OMADRMManager;
    iget-object v3, p0, Lcom/sec/android/app/music/DrmServicePopup$1;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    iget-object v3, v3, Lcom/sec/android/app/music/DrmServicePopup;->errorListener:Landroid/drm/mobile2/OMADRMManager$OnErrorListener;

    invoke-virtual {v1, v3}, Landroid/drm/mobile2/OMADRMManager;->setOnErrorListener(Landroid/drm/mobile2/OMADRMManager$OnErrorListener;)V

    .line 200
    iget-object v3, p0, Lcom/sec/android/app/music/DrmServicePopup$1;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/DrmServicePopup;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/music/DrmServicePopup;->access$100(Lcom/sec/android/app/music/DrmServicePopup;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/music/DrmServicePopup$1;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/DrmServicePopup;->filePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/music/DrmServicePopup;->access$200(Lcom/sec/android/app/music/DrmServicePopup;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/music/DrmServicePopup$1;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    #getter for: Lcom/sec/android/app/music/DrmServicePopup;->filePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/music/DrmServicePopup;->access$200(Lcom/sec/android/app/music/DrmServicePopup;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/drm/mobile2/OMADRMManager;->getDCFHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/drm/mobile2/OMADRMManager;->acquireLicense(Landroid/content/Context;Ljava/lang/String;Landroid/drm/mobile2/DCFHeaderInfo;)Z
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    .line 212
    .end local v1           #manager:Landroid/drm/mobile2/OMADRMManager;
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/music/DrmServicePopup$1;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    iget-object v3, v3, Lcom/sec/android/app/music/DrmServicePopup;->drmManager:Lcom/sec/android/app/music/MusicDrmManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/music/MusicDrmManager;->setDrmPopupShown(Z)V

    .line 213
    iget-object v3, p0, Lcom/sec/android/app/music/DrmServicePopup$1;->this$0:Lcom/sec/android/app/music/DrmServicePopup;

    invoke-virtual {v3}, Lcom/sec/android/app/music/DrmServicePopup;->dismiss()V

    .line 214
    return-void

    .line 202
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 204
    .local v0, e:Landroid/drm/mobile2/OMADRMException;
    invoke-static {}, Lcom/sec/android/app/music/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mBuyListener:onClick OMADRMException"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    .end local v0           #e:Landroid/drm/mobile2/OMADRMException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 207
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/sec/android/app/music/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mBuyListener:onClick IOException"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 209
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
